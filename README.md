# Photo Blog

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Environment

Built and tested on Windows 10 Home 

## System Dependencies & Configuration

* Ruby version: 2.3.3p222
* Rails version: 5.0.6

## Application Installation Instructions
* Configuration

`bundle install`

* Database creation

* Database initialization

## Operating Instructions

* Deployment instructions

## Testing Instructions

* Using Rspec [https://github.com/rspec/rspec-rails]

### Instructions from the Rspec README
To run the specs:
```
bundle exec rspec
```
To run only a subset of these specs use the following command:
```
# Run only model specs
bundle exec rspec spec/models

# Run only specs for AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run only spec on line 8 of AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb:8
```


## Overview

## Discussion

Gems that had to be added:
* rspec-rails (`gem 'rspec-rails', '~> 3.6'`) - for test driven development
* capybara (`gem 'capybara'`)- for testing web applications by simulating user input
* factory_girl_rails (`gem install factory_girl_rails`) - for creating test data
 
