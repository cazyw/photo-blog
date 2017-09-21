# Photo Blog

Photo blog to keep track of interesting photos

## Environment

Built and tested in Windows 10 Home 

## System Dependencies & Configuration

* Ruby version: 2.3.3p222
* Rails version: 5.0.6

Downloaded via the RailsInstaller [http://railsinstaller.org/en]. This includes DevKit which is necessary for a Windows environment (e.g. for paperclip gem)

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
or
```
rspec
```
To run only a subset of these specs use the following command:
```
# Run only model specs
bundle exec rspec spec/models

# Run only specs for AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run only spec on line 8 of AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb:8

rspec /spec/features/creating_new_posts_spec.rb
```


## Overview

* Image: the photo
* Caption: short description
* Location: where the photo was taken
* Blog: thoughts, discussions, opinions

## Discussion

Gems that had to be added:
* rspec-rails (`gem 'rspec-rails', '~> 3.6'`) - for test driven development [https://github.com/rspec/rspec-rails]
* capybara (`gem 'capybara'`)- for testing web applications by simulating user input [https://github.com/teamcapybara/capybara]
* factory_girl_rails (`gem install factory_girl_rails`) - for creating test data [https://github.com/thoughtbot/factory_girl_rails]
* simple_form (`gem 'simple_form'`) - for simple form creation [https://github.com/plataformatec/simple_form]
* bootstrap (`gem 'bootstrap', '~> 4.0.0.beta'`) - bootstrap [https://github.com/twbs/bootstrap-rubygem]
* paperclip (`gem "paperclip", "~> 5.0.0"`) - file attachment management [https://github.com/thoughtbot/paperclip]
* ImageMagick - required for paperclip 
* Devise (`gem 'devise'`) - for user authentication

bundle initially was not working when running in the Visual Studio Code terminal (it was working using git bash). The problem was that the path could not be located. Following a suggestion on the web, I replaced the code in C:\RailsInstaller\Ruby2.3.0\bin\bundle.bat to

```
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
ECHO.This version of Ruby has not been built with support for Windows 95/98/Me.
GOTO :EOF
:WinNT
@"%~dp0ruby.exe" "%~dpn0" %*
```

Using simple form for simple form creation. Added bootstrap (version 4) for styling.

Ran into issues with bcrypt as well (which is used by devise) as devise installed
```
$gem list bcrypt
bcrypt (3.1.11 x86-mingw32)
```

Solved by
gem uninstall devise && gem uninstall bcrypt
gem install bcrypt --platform=ruby
Added gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt' and bundle install
```

Make sure the bcrypt version is just bcrypt (3.1.11)
Creation

rails g controller posts
rails g model Post caption:string location:string blog:text
rake db:migrate
rails g paperclip post image
 

 bundle exec rake assets:precompile

$ git push heroku
$ heroku pg:reset DATABASE
$ heroku run rails db:migrate
$ heroku run rails db:seed
$ heroku restart
