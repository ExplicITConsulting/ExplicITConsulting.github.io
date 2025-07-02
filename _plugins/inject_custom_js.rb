Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  if doc.output =~ /<\/head>/
    code_to_add = <<~'HTMLHereDocString'
      <script>
        document.addEventListener("DOMContentLoaded", function () {
          const links = document.querySelectorAll("a[href]");
          const currentHostname = window.location.hostname;

          links.forEach(link => {
            try {
              const url = new URL(link.href);

              if (url.hostname !== currentHostname) {
                link.setAttribute("target", "_blank");
                link.setAttribute("rel", "noopener noreferrer");

                // Check if the link already contains an icon to prevent duplicates
                // Use a more specific class for the check if you have other Font Awesome icons
                if (!link.querySelector(".fa-arrow-up-right-from-square")) {
                  const icon = document.createElement("i");
                  // Changed to fa-regular as requested
                  icon.classList.add("fa-regular", "fa-arrow-up-right-from-square");
                  icon.style.marginLeft = "0.3em"; // Add some space

                  // Append the icon directly to the link element.
                  // This works correctly because the icon becomes part of the link's content,
                  // whether the link is a standard inline link or a button.
                  link.appendChild(icon);
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