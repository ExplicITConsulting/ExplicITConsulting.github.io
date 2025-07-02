Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  if doc.output =~ /<\/head>/
    code_to_add = <<~'HTMLHereDocString'
      <script>
        document.addEventListener("DOMContentLoaded", function () {
          const links = document.querySelectorAll("a[href]");
          const currentHostname = window.location.hostname;

          // The SVG icon markup (ensure it's on a single line or escaped for JavaScript)
          // You might want to get this from a _data file in Jekyll or an external file
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
                link.setAttribute("rel", "noopener noreferrer");

                // Check if the link already contains the specific icon wrapper
                // You might add a specific class to the SVG for a more robust check if needed
                if (!link.querySelector(".icon svg")) {
                  // Create the span.icon wrapper
                  const iconSpan = document.createElement("span");
                  iconSpan.classList.add("icon");
                  iconSpan.style.marginLeft = "0.3em"; // Add some space after the text/before the icon

                  // Insert the SVG markup into the span.icon
                  iconSpan.innerHTML = externalLinkSvg.trim(); // .trim() removes leading/trailing whitespace

                  // Append the span.icon to the link element
                  link.appendChild(iconSpan);
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