require 'rubygems'
require 'rake'

namespace :slideshow do
  desc "Copy the flash file"
  task :add_flash_file do
    p "Copying flash file ..."
    FileUtils.cp "#{RAILS_ROOT}/vendor/plugins/acts_as_slideshow/files/Flex_slideshow.swf", "#{RAILS_ROOT}/public/flash/Flex_slideshow.swf"
    p "File Copied Here: #{RAILS_ROOT}/public/flash/Flex_slideshow.swf"
  end
  
  desc "Copy the config file"
  task :copy_config_file do
    p "Copying configuration file ..."
    FileUtils.cp "#{RAILS_ROOT}/vendor/plugins/acts_as_slideshow/files/config.xml", "#{RAILS_ROOT}/public/config.xml"
    p "File Copied Here: #{RAILS_ROOT}/public/config.xml"
  end
  
  desc "Copy flash and settings files"
  task :copy_flash_config do
    slideshow.copy_config_file
    slideshow.add_flash_file
  end
end