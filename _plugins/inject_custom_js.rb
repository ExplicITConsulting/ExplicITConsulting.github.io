Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  if doc.output =~ /<\/head>/
    code_to_add = <<~'HTMLHereDocString'
      <script>
        var _paq = window._paq = window._paq || [];
        _paq.push(["setRequestMethod", "POST"]);
        _paq.push(["disableCookies"]);
        _paq.push(["deleteCookies"]);
        _paq.push(["disableAlwaysUseSendBeacon"]);
        _paq.push(["disableQueueRequest"]);
        _paq.push(["setDocumentTitle", document.domain + "/" + document.title]);
        _paq.push(["setCookieDomain", "*.explicitconsulting.at"]);
        _paq.push(["setDomains", ["*.explicitconsulting.at"]]);
        _paq.push(['enableHeartBeatTimer']);
        _paq.push(['setLinkClasses', "mtrcs-external-link"]);
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);

        (function () {
          var u = "//mtrcs.explicitconsulting.at/";
          _paq.push(["setTrackerUrl", u + "poop.php"]);
          _paq.push(["setSiteId", "2"]);
          var d = document, g = d.createElement("script"), s = d.getElementsByTagName("script")[0];
          g.type = "text/javascript"; g.async = true; g.defer = true; g.src = u + "poop.js"; s.parentNode.insertBefore(g, s);
        })();
      </script>

      <noscript>
        <p><img referrerpolicy="no-referrer-when-downgrade" src="//mtrcs.explicitconsulting.at/poop.php?idsite=2&amp;rec=1" style="border:0;" alt="" /></p>
      </noscript>

      <script>
        document.addEventListener("DOMContentLoaded", function () {
          const links = document.querySelectorAll("a[href]");
          links.forEach(link => {
            link.classList.add("mtrcs-external-link");
            const url = new URL(link.href, window.location.href);

            if (url.hostname !== window.location.hostname) {
              link.setAttribute("target", "_blank");
            }
          });
        });
      </script>
    HTMLHereDocString

    doc.output.gsub!('</head>', "#{code_to_add}\n</head>")
  end
end