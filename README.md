# sprockets-jst-str

sprockets-jst-str is a [Sprockets](https://github.com/sstephenson/sprockets) plugin which simply returns the entire template as an escaped JavaScript string. For example, a file named __hello.jst.str__:

```html
<h1 class="foobar">
  Hello <%= get('name') %>
</h1>
```

would turn into:

```js
'<h1 class="foobar">\n  Hello <%= get(\'name\') %>\n</h1>';
```

In addition to single quotes, all backslashes, tabs and line breaks are also replaced with their respective symbols.
