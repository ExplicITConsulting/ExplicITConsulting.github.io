---
layout: page
title: Search
subtitle: "&nbsp;"
description: Search and find. What are you looking for?
---
## What are you looking for?
For best results, search for whole words. Search is case insensitive.

<input type="text" id="search-input" placeholder="Search...">
<ol id="results-container"></ol>

<script src="https://unpkg.com/simple-jekyll-search@latest/dest/simple-jekyll-search.min.js"></script>

<script>
var sjs = SimpleJekyllSearch(
  {
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: '/search.json',
    noResultsText: 'No results found.',
    fuzzy: true,
    searchResultTemplate: '<li class="lunrsearchresult"><a href="{url}"><span class="lunrsearchresulturl">{url}}</span><br /><span class="lunrsearchresulttitle">{title}</span><br /><span class="lunrsearchresultbody">{content}</span><br /></a></li>'
  }
)
</script>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>