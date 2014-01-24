# Errorception-Rails

Add [errorception](http://errorception.com) to your Rails app.

## Installation

Add this line to your application's Gemfile:

    gem 'errorception-rails', require: 'errorception_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install errorception-rails

    # your file.rb
    require 'errorception_rails'

## Usage

Include the JavaScript snippet into your pages **before** any other script tag.
Ideally, you'll want to put this close to the very top in your `<head>` tag.

    <head>
      ...
      <%= javascript_include_tag 'errorception_rails/errorception' %>
      <%= javascript_include_tag 'application' %>
      ...

When using Rails asset pipeline include this file at the top of the manifest:

    # app/assets/javascripts/application.js
    ...
    //
    //= require errorception_rails/errorception
    //= ...

Errorception is disabled by default. Enable it typically in production only via:

    # config/environments/production.rb
    ...
    config.errorception.api_key = "YOUR API KEY"
    config.errorception.enabled = true
    ...

Or in all environments:

    # config/application.rb
    ...
    config.errorception.api_key = "YOUR API KEY"
    config.errorception.enabled = true
    ...
    
    
    