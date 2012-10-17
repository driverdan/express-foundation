Express Foundation
==================

Express Foundation is Express, Foundation, and other useful libraries
plus some skeleton code to get your node-based web project up and running quickly.

Libraries
---------

[CoffeeScript](http://coffeescript.org/)

### Node

* [Express](http://expressjs.com/) - Web application framework / server
* [Jade](http://jade-lang.com/) - Template engine
* [Stylus](http://learnboost.github.com/stylus/) - Expressive, dynamic,
robust CSS preprocessor
* [nib](http://visionmedia.github.com/nib/) - CSS3 extensions for Stylus
* [Connect-assets](https://github.com/TrevorBurnham/connect-assets) - Rails 3.1-style asset pipeline for Node.js
* [Mocha](http://visionmedia.github.com/mocha/) - Testing framework
* [Chai](http://chaijs.com/) - BDD / TDD assertion library

### Front End

* [Foundation](http://foundation.zurb.com/) - Responsive front-end
framework
* [Foundation Icons](http://www.zurb.com/playground/foundation-icons) -
Font icons
* [jQuery](jquery.com)
* jQuery Digits Plugin - Simple plugin to enforce numeric input in text
   fields
* [Underscore](http://underscorejs.org/) - Utility-belt library for JavaScript
* [Backbone](http://backbonejs.org/) - Lightweight Model-View-Collection framework

### Additional Goodies

* Animated loading image that automatically shows/hides on AJAX requests
* Placeholder favicon
* Skeleton code to get you started

How To Use
----------

1. Do `npm install`
2. Run with `coffee app`

Directory / File Structure
--------------------------

    /assets (All front end assets to be processed by connect-assets)
      /css
        foundation.css (Foundation framework)
        general_foundicons.css (Foundation Icons CSS)
        style.styl (Your project's styles in Stylus. You'll want to break this into multiple files at some point.)
      /js
        /collections (Backbone colletions)
        /models (Backbone models)
        /views (Backbone views)
        backbone-min.js (Minfied Backbone)
        bootstrap.coffee (Code that needs to run first to get your app up and running)
        jquery-*-min.js (Minified jQuery)
        jquery.digits.js (jQuery Digits plugin)
        script.coffee (Main site code. All other custom JS will be concatinated into this.)
        underscore-min.js (Minified Underscore)
    /public (Public files accessible directly from the browser, NOT processed by connect-assets)
      /css
      /fonts
        general_fondicons.* (Foundation Icon fonts)
      /img
        loading.gif (Animated loading image)
      /js
      favicon.ico (Your site's favicon)
    /routes (Directory for your Express route scripts)
      index.coffee (Example of having routes in separate scripts)
    /test (Tests go here. You do use tests right?)
      server.coffee (Sample tests for your server)
    /views (Server-side views go here)
      index.jade (Sample homepage content)
      layout.jade (Sample layout)
    app.coffee (Main app)
    package.json (npm package file)
    README.md (this)
