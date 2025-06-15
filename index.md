---
layout: page
title: '<img src="/assets/images/explicit consulting, color on transparent, company and slogan.png" alt="ExplicIT Consulting. We bridge the gap." style="height: 4em; object-fit: contain; margin-left:-0.25em; margin-bottom:0.3em;"><!--ExplicIT Consulting. We bridge the gap.-->'
subtitle: |
  <p class="subtitle is-3 has-text-white" style="margin-bottom:0.3em">
    ExplicIT stands for specific, clear and detailed IT consulting.
  </p>

  <p class="subtitle is-3 has-text-white" style="margin-bottom:0.3em; margin-top:0.3em">
    Bold and future-oriented, always realistic and without steam talk.
  </p>

  <p class="subtitle is-3 has-text-white" style="margin-top:0.3em;">
    We bridge gaps, with our heads in the sky and our feet firmly on the ground.
  </p>

  <p class="subtitle is-3 has-text-white has-text-weight-bold" style="margin-top:1.5em;">
    <a href="/services/" class="has-text-white has-text-weight-bold">>> Which gap can we bridge for you?</a>
  </p>

  <p class="subtitle is-3 has-text-white has-text-weight-bold" style="">
    <a href="/open-source/set-outlooksignatures/" class="has-text-white has-text-weight-bold">>> <span style="font-weight: bold; background-image: linear-gradient(to right, gray, silver, gray, silver, gray); background-clip: text; color: transparent;">Set-OutlookSignatures</span> and the <span style="font-weight: bold; background-image: linear-gradient(to right, darkgoldenrod, goldenrod, darkgoldenrod, goldenrod, darkgoldenrod); background-clip: text; color: transparent;">Benefactor Circle add-on</span></a>
  </p>
hero_image: "/assets/images/background, vietnam golden bridge.jpg"
hero_height: is-fullheight-with-navbar
hero_darken: true
description: We bridge the gap between strategy and execution. ExplicIT stands for specific, clear and detailed IT consulting.
redirect_from:
  - /home
  - /home/
---
## Welcome to ExplicIT Consulting!
<div>
  <a href="{{ site.baseurl }}/">Home</a><br>
  {% if site.data.navigation %}
    {% for item in site.data.navigation %}
      {% if item.dropdown %}
        <a href="{{ item.link | relative_url }}">{{ item.name }}</a><br>
        {% for subitem in item.dropdown %}
          &nbsp;&nbsp;<a href="{{ subitem.link | relative_url }}">{{ subitem.name }}</a><br>
        {% endfor %}
      {% else %}
        <a href="{{ item.link | relative_url }}">{{ item.name }}</a><br>
      {% endif %}
    {% endfor %}
  {% endif %}
  <a href="/search"><span class="icon"><i class="fas fa-search"></i></span><span>Search</span></a>
</div>
