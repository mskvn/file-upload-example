# Simple script for reproduce problem with file upload using selenium remote webdriver and firefox

https://github.com/SeleniumHQ/selenium/issues/6064

## Prerequisites

* ruby 2.3+
* bundler
* Selenium grid with Firefox 49+

## Reproduce

```
bundle install
bundle exec ruby reproduce.rb <http://remote-hub-url>
```

## Actual result

File does not upload. Webdriver get error:

```
WebDriverError@chrome://marionette/content/error.js:178:5: File not found: test.png (Selenium::WebDriver::Error::InvalidArgumentError)
	from InvalidArgumentError@chrome://marionette/content/error.js:305:5
	from interaction.uploadFile@chrome://marionette/content/interaction.js:484:11
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/response.rb:69:in `assert_ok'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/response.rb:32:in `initialize'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/http/common.rb:84:in `new'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/http/common.rb:84:in `create_response'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/http/default.rb:104:in `request'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/http/common.rb:62:in `call'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/bridge.rb:164:in `execute'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/w3c/bridge.rb:535:in `execute'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/remote/w3c/bridge.rb:365:in `send_keys_to_element'
	from /Users/moskvin/.rbenv/versions/2.3.3/lib/ruby/gems/2.3.0/gems/selenium-webdriver-3.12.0/lib/selenium/webdriver/common/element.rb:154:in `send_keys'
	from reproduce.rb:18:in `<main>'
```