# Installing Bunto SEO Tag

1. Add the following to your site's `Gemfile`:

  ```ruby
  gem 'bunto-seo-tag'
  ```

2. Add the following to your site's `_config.yml`:

  ```yml
  gems:
    - bunto-seo-tag
  ```

3. Add the following right before `</head>` in your site's template(s):

  ```liquid
  {% seo %}
  ```
