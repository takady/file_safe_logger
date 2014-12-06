# FileSafeLogger

FileSafeLogger enable you to keep logging even if log file removed after initialize

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'file_safe_logger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install file_safe_logger

## Usage

```ruby
require 'file_safe_logger'
logger = FileSafeLogger.new('logfile.log')
```

## Contributing

1. Fork it ( https://github.com/takady/file_safe_logger/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
