# jst_str

jst_str is a [Sprockets](https://github.com/sstephenson/sprockets) extension which simply returns the entire template as an escaped JavaScript string. For example, a file named __hello.jst.str__:

    <h1 class="foobar">Hello <%= get('name') %></h1>

would turn into:

    '<h1 class="foobar">Hello <%= get(\'name\') %></h1>';

In addition to single quotes, all backslashes, tabs and line breaks are also replaced with their respective symbols.
