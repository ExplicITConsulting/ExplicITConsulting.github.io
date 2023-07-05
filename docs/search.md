---
layout: page
title: Search and find
subtitle: "What are you looking for?"
description: Search and find. What are you looking for?
---
## What are you looking for?
<div id="search-demo-container">
  <input type="search" id="search-input" placeholder="Search on explicitconsulting.at" style='font-size: 1em; padding: 0.25em; font-weight: 700;' size="50" autofocus>
  <ul id="results-container"></ul>
</div>

<script src="https://unpkg.com/simple-jekyll-search@latest/dest/simple-jekyll-search.min.js" type="text/javascript"></script>

<script type="text/javascript">
  SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: '/search.json',
    searchResultTemplate: '<li><a href="{url}"><span style="font-style: italic; color:gray">{url}</span><br /><strong>{title}</strong><br />{subtitle}</a></li>',
    noResultsText: 'No results found',
    fuzzy: false
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