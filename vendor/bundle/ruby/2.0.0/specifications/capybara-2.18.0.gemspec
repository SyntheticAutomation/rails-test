# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "capybara"
  s.version = "2.18.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Walpole", "Jonas Nicklas"]
  s.cert_chain = ["gem-public_cert.pem"]
  s.date = "2018-02-13"
  s.description = "Capybara is an integration testing tool for rack based web applications. It simulates how a user would interact with a website"
  s.email = ["twalpole@gmail.com", "jonas.nicklas@gmail.com"]
  s.homepage = "https://github.com/teamcapybara/capybara"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.3"
  s.summary = "Capybara aims to simplify the process of integration testing Rack applications, such as Rails, Sinatra or Merb"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.3.3"])
      s.add_runtime_dependency(%q<mini_mime>, [">= 0.1.3"])
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<rack-test>, [">= 0.5.4"])
      s.add_runtime_dependency(%q<xpath>, ["< 4.0", ">= 2.0"])
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_development_dependency(%q<selenium-webdriver>, ["!= 3.4.1", "< 4.0", ">= 2.0"])
      s.add_development_dependency(%q<sinatra>, [">= 0.9.4"])
      s.add_development_dependency(%q<rspec>, [">= 2.2.0"])
      s.add_development_dependency(%q<launchy>, [">= 2.0.4"])
      s.add_development_dependency(%q<yard>, [">= 0.5.8"])
      s.add_development_dependency(%q<fuubar>, [">= 0.0.1"])
      s.add_development_dependency(%q<cucumber>, [">= 0.10.5"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<puma>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<erubi>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.3.3"])
      s.add_dependency(%q<mini_mime>, [">= 0.1.3"])
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<rack-test>, [">= 0.5.4"])
      s.add_dependency(%q<xpath>, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<selenium-webdriver>, ["!= 3.4.1", "< 4.0", ">= 2.0"])
      s.add_dependency(%q<sinatra>, [">= 0.9.4"])
      s.add_dependency(%q<rspec>, [">= 2.2.0"])
      s.add_dependency(%q<launchy>, [">= 2.0.4"])
      s.add_dependency(%q<yard>, [">= 0.5.8"])
      s.add_dependency(%q<fuubar>, [">= 0.0.1"])
      s.add_dependency(%q<cucumber>, [">= 0.10.5"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<puma>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<erubi>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.3.3"])
    s.add_dependency(%q<mini_mime>, [">= 0.1.3"])
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<rack-test>, [">= 0.5.4"])
    s.add_dependency(%q<xpath>, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>, ["!= 3.4.1", "< 4.0", ">= 2.0"])
    s.add_dependency(%q<sinatra>, [">= 0.9.4"])
    s.add_dependency(%q<rspec>, [">= 2.2.0"])
    s.add_dependency(%q<launchy>, [">= 2.0.4"])
    s.add_dependency(%q<yard>, [">= 0.5.8"])
    s.add_dependency(%q<fuubar>, [">= 0.0.1"])
    s.add_dependency(%q<cucumber>, [">= 0.10.5"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<puma>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<erubi>, [">= 0"])
  end
end
