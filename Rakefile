#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path('../test/dummy/Rakefile', __FILE__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
load 'workarea/changelog.rake'

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task default: :test

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'workarea/product_quickview/version'

desc "Release version #{Workarea::ProductQuickview::VERSION} of the gem"
task :release do
  host = "https://#{ENV['BUNDLE_GEMS__WEBLINC__COM']}@gems.weblinc.com"

  Rake::Task['workarea:changelog'].execute
  system 'git add CHANGELOG.md'
  system 'git commit -m "Update CHANGELOG"'

  system "git tag -a v#{Workarea::ProductQuickview::VERSION} -m 'Tagging #{Workarea::ProductQuickview::VERSION}'"
  system 'git push origin HEAD --follow-tags'

  system 'gem build workarea-product_quickview.gemspec'
  system "gem push workarea-product_quickview-#{Workarea::ProductQuickview::VERSION}.gem"
  system "gem push workarea-product_quickview-#{Workarea::ProductQuickview::VERSION}.gem --host #{host}"
  system "rm workarea-product_quickview-#{Workarea::ProductQuickview::VERSION}.gem"
end
