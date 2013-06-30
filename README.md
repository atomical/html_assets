HtmlAssets
=======

HtmlAssets includes static html templates in the asset pipeline so you can use them in Javascript.  Think Angular.

### Install

```
gem install html_assets
```

### In application.js

```ruby
//= require html_assets
//= require_tree ./html
```

### In the browser

```javascript
console.log(HTML_Assets)
```

### Optionally create a directive that renders partials in your angular templates.

```coffeescript
  App.directive 'htmlAsset', ->
    definition = 
      replace: true
      restrict: 'A'
      compile: (tElement, tAttrs, transclude) ->
        tElement.html(HTML_Assets[tAttrs.htmlAsset])
```

```html
  <div html-asset="tasks/form"></div>
```