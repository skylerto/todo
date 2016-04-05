# Todo

This is a CLI gem which manages todos. It's super clean and light, as it intentionally only allows *some* functionality. Mainly tracking only a single todo list of a bunch of times.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'skys-todo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install todo

## Usage

Quick and dirty usage:

```
Commands:
  todo add NAME        # Add a todo item with the given name
  todo done ID         # Finish todo item with the given ID
  todo help [COMMAND]  # Describe available commands or one specific command
  todo remove ID       # Remove the todo with the given ID
  todo show            # Show all of the items in the todo list
```

## Development

After checking out the repo `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/todo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

