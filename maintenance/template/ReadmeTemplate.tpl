# Scoop buckets by {{sort_order_description}}
*https://scoop.sh* [![Build Status](https://travis-ci.org/rasa/scoop-directory.svg)](https://travis-ci.org/rasa/scoop-directory "Build status") [![Chat on Gitter](https://badges.gitter.im/lukesampson/scoop.svg)](https://gitter.im/lukesampson/scoop)  [![Mentioned in Awesome Scoop](https://awesome.re/mentioned-badge.svg)](https://github.com/h404bi/awesome-scoop "Awesome Scoop")

| Bucket | Apps | ![Stars](https://png.icons8.com/material/15/000000/christmas-star.png "Stars") | ![Forks](https://png.icons8.com/material/15/000000/code-fork.png "Forks") | Updated |
| :--- | ---: | ---: | ---: | ---: |
{% for repo in repos_by_score %}|<a name="back_{{cache[repo]['id']}}" id="back_{{cache[repo]['id']}}"></a>[{{loop.index}}.](# "{{cache[repo]['score']}}")  [__{{cache[repo]['full_name']}}__]({{cache[repo]['url']}}){{cache[repo]['cdescription']}}|[{{cache[repo]['packages']}}](#{{cache[repo]['id']}})|[{{cache[repo]['stars']}}]({{cache[repo]['stars_url']}})|[{{cache[repo]['forks']}}]({{cache[repo]['forks_url']}})|[{{cache[repo]['updated']}}]({{cache[repo]['updated_url']}})|
{% endfor -%}
| **Bucket** | **Apps** | **![Stars](https://png.icons8.com/material/15/000000/christmas-star.png "Stars")** | **![Forks](https://png.icons8.com/material/15/000000/code-fork.png "Forks")** | **Updated** |

{% for repo in repos_by_name %}### <a name="{{cache[repo]['id']}}" id="{{cache[repo]['id']}}"></a>[{{cache[repo]['full_name']}}]({{cache[repo]['url']}}) [&#x2934;](#back_{{cache[repo]['id']}})
{{cache[repo]['idescription']}}

| Name | Version | Description | License |
| :--- | :--- | :--- | :--- |
{% for entry in cache[repo]['entries'] -%}| [{{entry['json']}}]({{entry['url']}}) | {{entry['version']}} | {{entry['description']}} | {{entry['license']}} |
{% endfor -%}
{% endfor -%}

*<a href="https://icons8.com/">Icon pack by Icons8</a>*
