var allposts = [];

function redirectToCorrectPage() {
    {% for post in site.posts %}
    allposts.push("{{ site.url }}{{ post.url }}");
    {% endfor %}

    var url = window.location.toString();

    if (url.slice(-1) === "/") {
        url = url.slice(0, -1);
    }

    var allpostsUpperCase = allposts.map(function (value) {
        return value.toUpperCase();
    });

    var i = allpostsUpperCase.indexOf(url.toUpperCase());

    if (i != -1) {
        console.log(allposts[i]);
        window.location = allposts[i];
    }
}

window.onload = redirectToCorrectPage;
