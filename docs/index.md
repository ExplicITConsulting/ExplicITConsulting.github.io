---
layout: page
title: '<img src="/assets/images/explicit consulting, color on transparent, company and slogan.png" alt="ExplicIT Consulting. We bridge the gap." style="height: 4em; object-fit: contain; margin-left:-0.25em; margin-bottom:0.3em;"><!--ExplicIT Consulting. We bridge the gap.-->'
subtitle: |
  <p class="subtitle is-3" style="margin-bottom:0.3em">
    ExplicIT stands for specific, clear and detailed IT consulting.
  </p>

  <p class="subtitle is-3" style="margin-bottom:0.3em; margin-top:0.3em">
    Bold and future-oriented, always realistic and without steam talk.
  </p>

  <p class="subtitle is-3" style="margin-top:0.3em;">
    We bridge gaps, with our heads in the sky and our feet firmly on the ground.
  </p>

  <p class="subtitle is-3" style="margin-top:1.5em;">
    <strong><a href="/services/">> Which gap can we bridge for you?</a></strong>
  </p>

  <p class="subtitle is-3" style="">
    <strong><a href="/open-source/set-outlooksignatures/">> Set-OutlookSignatures Benefactor Circle</a></strong>
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
Use the menus and links above and below to navigate through our site and discover its content.

{% if site.data.navigation %}
  <ul>
  {% for item in site.data.navigation %}
    {% if item.dropdown %}
      <li><a href="{{ item.link | relative_url }}">{{ item.name }}</a></li>
      {% for subitem in item.dropdown %}
        <ul><li><a href="{{ subitem.link | relative_url }}">{{ subitem.name }}</a></li></ul>
      {% endfor %}
    {% else %}
      <li><a href="{{ item.link | relative_url }}">{{ item.name }}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endif %}
