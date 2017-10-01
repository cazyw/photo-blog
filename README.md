# Photo Blog

A photo blog to keep track of interesting photos and experiences. 
My current project, additional features will be added as I explore Ruby on Rails. 

https://foodforthesoul-blog.herokuapp.com/

<img src="https://cazyw.github.io/img/rails-photoblog.jpg" width="450">

**Updated** - now responsive for small screens/mobiles

## Environment

Built and tested in Windows 10 Home.

## System Dependencies & Configuration

Built with
* Ruby version: 2.3.3p222
* Rails version: 5.0.6

Downloaded via the RailsInstaller [http://railsinstaller.org/en]. This includes DevKit which is necessary for a Windows environment (e.g. for paperclip gem)


## Operating Instructions

The Blog is at https://foodforthesoul-blog.herokuapp.com/

Users can 
* view entries by everyone
* register for their own account (and pick a colour for their post header)
* log in

Users who are logged in can also
* edit and delete their own blog posts

The app is currently populated with seed users and blog entries. You can create your own account or to use an existing one (username: `ab@gmail.com` password:`foobar`)

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

The idea of this photo blog was to build something using Ruby on Rails that I would continue to use and improve upon. At it's most basic, it's a platform for me to share photos and thoughts. But I'll be adding features  over time as I explore the features in Rails.

Currently users can pick a color to differentiate themselves from other users.

The fields for each post include
* Image: the photo
* Caption: a short description
* Location: where the photo was taken
* Blog: thoughts, discussions, opinions, ramblings



## Discussion and Lessons Learnt

Below is a reflection around any challenges I exerienced in building this rails app (and a reminder to myself about steps that needed to be taken).

### Gemfile
Gems added:
* rspec-rails (`gem 'rspec-rails', '~> 3.6'`) - for test driven development [https://github.com/rspec/rspec-rails]
* capybara (`gem 'capybara', '~>2.15.1'`)- for testing web applications by simulating user input [https://github.com/teamcapybara/capybara]
* factory_girl_rails (`'factory_girl_rails', '~>4.8.0'`) - for creating test data [https://github.com/thoughtbot/factory_girl_rails]
* simple_form (`'simple_form', '~>3.5.0'`) - for simple form creation [https://github.com/plataformatec/simple_form]
* Devise (`gem 'devise', '~>4.3.0'`) - for user authentication [https://github.com/plataformatec/devise]
* bootstrap-rails (`gem 'bootstrap', '=4.0.0.alpha6'`) - bootstrap v4 [https://github.com/twbs/bootstrap-rubygem]
* sprocket-rails (`gem 'sprockets-rails', '~>3.2.0'`) - installed for bootstrap
* popper (`gem 'popper_js', '~> 1.12.3'`) - installed for bootstrap
* rails-assets-tether (`gem 'rails-assets-tether', '>= 1.1.0'`) - installed for bootstrap
* paperclip (`gem "paperclip", "~> 5.0.0"`) - file attachment management [https://github.com/thoughtbot/paperclip] 
* awk-sdk (`gem 'aws-sdk', '~> 2.3'`) - required to use AWS S3 to store files in production
* Color picker (`gem 'jquery-minicolors-rails'`) - user color selection [https://github.com/kostia/jquery-minicolors-rails]

* ImageMagick - required for paperclip [https://www.imagemagick.org/script/download.php]

bundle initially was not working when running in the Visual Studio Code terminal (it was working using git bash). The problem was that the path could not be located. Following a suggestion on the web, I replaced the code in C:\RailsInstaller\Ruby2.3.0\bin\bundle.bat to

```
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
ECHO.This version of Ruby has not been built with support for Windows 95/98/Me.
GOTO :EOF
:WinNT
@"%~dp0ruby.exe" "%~dpn0" %*
```

I also ran into issues with bcrypt which wouldn't load (it is used by devise). This was due to the version of bcrypt that was installed. Devise installed
```
$gem list bcrypt
bcrypt (3.1.11 x86-mingw32)
```

Solved by making sure the bcrypt version is just bcrypt (3.1.11)
```
gem uninstall devise && gem uninstall bcrypt
gem install bcrypt --platform=ruby
Added gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt' and bundle install
```
### Database

I encountered problems with dropping/resetting the development database table which threw the following error
```
Couldn't drop database 'db/development.sqlite3'
rails aborted!
Errno::EACCES: Permission denied @ unlink_internal - ................./development.sqlite3
bin/rails:4:in `require'
bin/rails:4:in `<main>'
Tasks: TOP => db:drop:_unsafe
(See full trace by running task with --trace)
```

In order to reset the table run
```
$ rails db:drop:_unsafe
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

### Heroku

some commands for pushing to production on Heroku
```
$ git push heroku master
$ heroku pg:reset DATABASE
$ heroku run rails db:migrate
$ heroku run rails db:seed
$ heroku restart
```

To uncompile/precompile assets if required (shouldn't be for rails 5)
```
$RAILS_ENV=development rails assets:clobber
$ bundle exec rails assets:precompile
```

### Random

I ran into a peculiar issue where buttons stopped working in Firefox but **did** work in Chrome and IE. Links were fine, just not when they were in buttons. I finally tracked the problem down to using `link_to` inside `<button>`. Resolved by adding `class='btn btn-<whatever>'` to the `link_to` instead. This was odd because buttons had been working but I believe changing the order in `application.js` may have caused this issue whilst fixing other issues. The order of the entries in `application.js` is important. 