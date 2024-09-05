# net-http-debug

Implementation was copied from @kaiwren's [script](https://gist.github.com/kaiwren/591601).

[![Gem Version](https://badge.fury.io/rb/net-http-debug.svg)](https://badge.fury.io/rb/net-http-debug)

`net-http-debug` is a simple Ruby gem that provides an easy way to enable and disable HTTP debugging for Net::HTTP in Rails development environment. It allows you to quickly toggle debug output for all Net::HTTP requests, which can be incredibly useful when troubleshooting API integrations or network-related issues.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'net-http-debug'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install net-http-debug
```

## Usage

To use Net::HTTP Debug in your Rails application, first require it:

```ruby
require 'net-http-debug'
```

### Enabling Debug Mode

To enable debug mode, which will output all Net::HTTP requests and responses to STDERR, use:

```ruby
Net::HTTP.enable_debug!
```

This will modify all subsequent Net::HTTP requests to output debug information.

### Disabling Debug Mode

To disable debug mode and return to normal operation:

```ruby
Net::HTTP.disable_debug!
```

### Important Note

The `enable_debug!` method includes a safeguard to prevent accidental usage in non-development environments. It will raise an exception if called outside of the Rails development environment.

## Example

Here's a quick example of how you might use Net::HTTP Debug in a Rails console or application:

```ruby
require 'net-http-debug'

# Enable debugging
Net::HTTP.enable_debug!

# Make a request
Net::HTTP.get(URI('https://api.example.com/data'))

# You'll see detailed output of the request and response

# Disable debugging when you're done
Net::HTTP.disable_debug!
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andreibondarev/net-http-debug. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/andreibondarev/net-http-debug/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Net::HTTP Debug project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/net-http-debug/blob/master/CODE_OF_CONDUCT.md).
