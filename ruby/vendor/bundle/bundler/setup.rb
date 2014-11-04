require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift File.expand_path("#{path}/../gems/rack-1.5.2/lib")
$:.unshift File.expand_path("#{path}/../gems/rack-protection-1.5.3/lib")
$:.unshift File.expand_path("#{path}/../gems/tilt-1.4.1/lib")
$:.unshift File.expand_path("#{path}/../gems/sinatra-1.4.5/lib")
