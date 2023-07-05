---
layout: page
title: Search
subtitle: "&nbsp;"
description: Search and find. What are you looking for?
---
## What are you looking for?
<div id="search-demo-container">
  <input type="text" id="search-input" placeholder="search...">
  <ol id="results-container"></ol>
</div>

<script src="https://unpkg.com/simple-jekyll-search@latest/dest/simple-jekyll-search.min.js" type="text/javascript"></script>

<script type="text/javascript">
  SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: '/search.json',
    searchResultTemplate: '<li><a href="{url}"><strong>{title}</strong><br />{subtitle}</a></li>',
    noResultsText: 'No results found',
    fuzzy: true,
    exclude: ['Welcome']
  })
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