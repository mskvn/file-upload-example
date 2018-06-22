require 'selenium-webdriver'

puts "Create driver for #{ARGV[0]}"

driver = Selenium::WebDriver.for :remote,
                                  url: 'http://127.0.0.1:4444/wd/hub',
                                  desired_capabilities: ARGV[0].to_sym

driver.file_detector = lambda do |args|
  str = args.first.to_s
  str if File.exist?(str)
end

begin
  puts 'Go to page with file upload form'
  driver.navigate.to 'https://mskvn.github.io/index.html'
  puts 'Upload file'
  driver.find_element(xpath: "//*[@id='fileToUpload']").send_keys 'test.png'
  driver.save_screenshot('success.png')
rescue => e
  driver.save_screenshot('error.png')
  driver.quit
  raise e
ensure
  driver.quit
end
