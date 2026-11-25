# Ninja

**Ninja** is a Jinja2-inspired HTML template engine written in [Stricta](https://github.com/lucianmarin/stricta) with strict `DOM` contexts and automatic HTML escaping.

## Features
- `{{ expr }}` interpolation with auto-escaping, dot-path traversal (`user.name`), built-in filters (`safe`, `upper`, `lower`, `trim`, `length`, `default`), and custom filters (`env.add_filter`).
- `{% if %}`, `{% elif %}`, `{% else %}`, `{% endif %}` with `and`, `or`, `not`, and comparisons.
- `{% for x in items %} ... {% endfor %}` with `loop.index`, `loop.index0`, `loop.first`, `loop.last`, `loop.length`.
- `{% extends "base.html" %}` + `{% block name %}` inheritance and `{% include "partial.html" %}`.
- `{# comments #}` and template caching.

## Run Tests
```bash
make test
```
