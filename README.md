# PagePilingRails

- [Live demo](http://alvarotrigo.com/pagePiling/)
- [Page Piling JS](https://github.com/alvarotrigo/pagePiling.js/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'page_piling_rails'
```

And then execute:

    $ bundle

And then execute:

    $ bundle exec rails generate page_piling_rails:install

If rake task fails to require the js,
Add this line to your applications's `app/assets/javascripts/application.js`

```
//= require jquery.pagepiling.min.js
```

and also add this line to your applications's `app/assets/stylesheets/application.css`

```
*= require jquery.pagepiling.css
```

Or install it yourself as:

    $ gem install page_piling_rails

## Required HTML structure

Each section will be defined with a `div` containing the `section` class.
The active section by default will be the first section, which is taken as the home page.

```html
<div id="pagepiling">
  <div class="section">Some section</div>
  <div class="section">Some section</div>
  <div class="section">Some section</div>
  <div class="section">Some section</div>
</div>
```

## Initialization
All you need to do is call the plugin inside a `$(document).ready` function:


```javascript
$(document).ready(function() {
  $('#pagepiling').pagepiling();
});
```

## Example:

```javascript
$('#pagepiling').pagepiling({
    sectionsColor: ['#f2f2f2', '#4BBFC3', '#7BAABE', 'whitesmoke', '#000'],
});
```

## Options
For more options checkout - [Page Piling JS](https://github.com/alvarotrigo/pagePiling.js/)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/page_piling_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

