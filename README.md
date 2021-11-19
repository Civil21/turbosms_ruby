# TurbosmsRuby

Send SMS and Viber message via TurboSMS ([turbosms.ua](https://turbosms.ua))

NOW work only sms

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'turbosms_ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install turbosms_ruby

## Usage

add 

    TURBOSMS_TOKEN= <TURBO SMS TOKE>
    TURBOSMS_SENDER="<SENDER>"

sender not required if not add then use base "IT Alarm"
[reg own sender](https://turbosms.ua/sign)

    ::TurbosmsRuby.new.send_message(phones,text)
    phones - array with strings

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/turbosms_ruby.
