Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  if doc.output =~ /<\/head>/
    code_to_add = <<~'HTMLHereDocString'
      <script>
        document.addEventListener("DOMContentLoaded", function () {
          const links = document.querySelectorAll("a[href]");
          const currentHostname = window.location.hostname;

          const externalLinkSvg = `
            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path>
              <polyline points="15 3 21 3 21 9"></polyline>
              <line x1="10" y1="14" x2="21" y2="3"></line>
            </svg>
          `;

          links.forEach(link => {
            try {
              const url = new URL(link.href);

              if (url.hostname !== currentHostname) {
                link.setAttribute("target", "_blank");

                let targetElement = link;
                const buttonChild = link.querySelector('button');
                if (buttonChild) {
                  targetElement = buttonChild;
                }

                if (!targetElement.querySelector(".icon-external-link")) { // Add a unique class for checking
                  // Create the non-breaking space text node
                  const nbspNode = document.createTextNode('\u00A0'); // Unicode for non-breaking space

                  // Create the span.icon wrapper
                  const iconSpan = document.createElement("span");
                  iconSpan.classList.add("icon", "icon-external-link"); // Add a unique class to the span
                  // iconSpan.style.marginLeft = "0.3em"; // REMOVE THIS LINE

                  // Insert the SVG markup into the span.icon
                  iconSpan.innerHTML = externalLinkSvg.trim();

                  // Append the nbsp and then the iconSpan to the target element
                  targetElement.appendChild(nbspNode);
                  targetElement.appendChild(iconSpan);
                }
              }
            } catch (e) {
              console.warn("Invalid URL encountered:", link.href, e);
            }
          });
        });
      </script>

      <script>
        document.addEventListener("DOMContentLoaded", function () {
            const headings = document.querySelectorAll("h1, h2, h3, h4, h5, h6");

            headings.forEach(function (heading) {
            if (!heading.id) {
                // Generate a slug from the heading text
                const slug = heading.textContent
                .toLowerCase()
                .trim()
                .replace(/[^\w\s-]/g, '') // Remove non-word characters
                .replace(/\s+/g, '-');    // Replace spaces with dashes

                // Ensure uniqueness by appending a number if needed
                let uniqueSlug = slug;
                let counter = 1;
                while (document.getElementById(uniqueSlug)) {
                uniqueSlug = `${slug}-${counter++}`;
                }
                heading.id = uniqueSlug;
            }

            const anchor = document.createElement("a");
            anchor.href = `#${heading.id}`;
            anchor.className = "anchor-link";
            anchor.innerHTML = "🔗";
            
            // PREVIOUSLY: heading.appendChild(anchor);
            heading.insertBefore(anchor, heading.firstChild);
            });
        });
      </script>
    HTMLHereDocString

    doc.output.gsub!('</head>', "#{code_to_add}\n</head>")
  end
end