require 'selenium-webdriver'

puts 'Create driver'

driver = Selenium::WebDriver.for :remote,
                                  url: "#{ARGV[0]}",
                                  desired_capabilities: :firefox #chrome

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

end
