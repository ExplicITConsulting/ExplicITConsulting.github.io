Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  if doc.output =~ /<\/head>/
    code_to_add = <<~'HTMLHereDocString'
      <script>
        document.addEventListener("DOMContentLoaded", function () {
          const links = document.querySelectorAll("a[href]");
          links.forEach(link => {
            const url = new URL(link.href, window.location.href);

            if (url.hostname !== window.location.hostname) {
              link.setAttribute("target", "_blank");
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