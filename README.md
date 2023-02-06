# README

Skipping validation with Rspec because it isn't working


ooooh no, this was the problem :(

  Failure/Error:
  Rspec.configure do |config|
    config.include FactoryBot::Syntax::Methods
  end

NameError:
  uninitialized constant Rspec
  Did you mean?  RSpec

* ...
