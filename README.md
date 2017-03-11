# jekyll-bland

*bland* is yet another "minimal" theme for Jekyll: it is very plain-looking by design, with no frills, embellishment or fancy fandangles to be found.

![bland theme preview](/screenshot.png)

## Features

The main feature of bland is that there are very few features. What bland offers is a very stable, clean base that you can extend further to fulful your own needs, or leave as-is for a snappy lightweight site.

What bland can offer you is:
 - 4 (relatively) responsive layouts for your content:
   - `page` is a layout for your pages
   - `post` is a layout for your posts
   - `listing` is a layout for listing posts
   - `tags` is a layout for generating a list of your posts and the tags they belong to
 - An elegant, clean look
 - Simple CSS that is easy to extend and customise
 - Nothing else!

Want to add Google Analytics to your site? Or Disqus comments? Override the default layouts and add some includes, and *do it yourself*.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-bland"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-bland
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-bland

## Customisation

To override the default structure and style of bland, simply create the concerned directory at the root of your site, copy the file you wish to customise to that directory, and then edit the file. For example, to override the [`_includes/head.html`](_includes/head.html) file to specify a custom style path, you would need to:

1. create an `_includes` directory in the root of your site
2. copy `_includes/head.html` from the bland gem to your new `_includes` directory
3. edit that file

### CSS Variables

There are a number of variables used in the CSS for this theme that are available for you to customise, should you wish to do so. Take a look at [bland.scss](/_sass/bland.scss) for all of them, and their default values.

Customising the values of variables works in a similar way to overriding the `head.html` file metioned above:

1. copy `assets/css/main.scss` from the bland gem to your site's `assets/css` directory (you might have to create this if it doesn't exist)
2. set the values of any variables before the `@import "bland";` line

For example, to change the default font used throughout the site, this is what your `assets/css/main.scss` file should look like:

```scss
---
---
@charset "utf-8";

// Use a sans-serif font
$font-main: Helvetica, Arial, sans-serif;

// Import the bland theme styles
@import "bland";
```

Note the dashes at the top of the file; these are required to get jekyll to render the file properly.

You can also create your stylesheets and `@include` them here to further customise the theme, if you want to.

### Tags

If you choose to asign tags to your posts, then they will appear at the bottom of each post. Clicking on one of these tags will attempt to link to the section for that tag on the tags page, which will list all other posts under that tag.

Tag page, you say? Yes. You'll need to make this yourself, by creating a new page and putting the `layout:tags` key in the front matter. The default path for the tags page is `/tags/index.html`, but this can be adjusted with the `tags_page` key in your site's `_config.yml`.

### Navigation Links

By default, the navigation links at the top of the site will automatically include a link for every page in your jekyll site. If you want to exclude a page from the nav, you can simply include a `nav_exclude` key as part of the page's front matter:

```
---
layout: tags
permalink: /tags/
title: Tags
nav_exclude: true
---
```

## Development

To set up your environment to develop this theme, run `bundle install`.

To test your theme, run `bundle exec rake preview` and open your browser at `http://localhost:4000/bland`. This starts a Jekyll server using the theme and the contents of the [`example`](/example) directory. As you make modifications to the theme and the example site, the preview will regenerate and you should see the changes in the browser after a refresh.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

