# Photo Blog

A photo blog to keep track of interesting photos and experiences. 
My current project, this is a work in progress. 

<img src="https://cazyw.github.io/img/rails-photoblog.jpg" width="450">

## Environment

Built and tested in Windows 10 Home.

**Currently there's an issue with it running in Firefox** (55.0.3) - the buttons are not being picked up. There appears to be a problem with devise/jquery that needs to be investigated.

However it appears to work in Google Chrome (60.0.3112.113).

Not yet responsive for mobile environments.

## System Dependencies & Configuration

Built with
* Ruby version: 2.3.3p222
* Rails version: 5.0.6

Downloaded via the RailsInstaller [http://railsinstaller.org/en]. This includes DevKit which is necessary for a Windows environment (e.g. for paperclip gem)


## Operating Instructions

The Blog is at https://immense-dusk-24475.herokuapp.com

Users can 
* view entries by everyone
* register for their own account
* log in

Users who are logged in can also
* edit and delete anyone's entries (future feature will restrict this to only the user's posts)


## Overview

The idea of this photo blog was to build something using Ruby on Rails that I would continue to use and improve upon. At it's most basic, it's a platform for me to share photos and thoughts. But I'll be considering features in Rails I can add over time as practice such as the ability to comment, like, view a calendar or perhaps group by tags.

Currently users can pick a color to differentiate themselves from other users.

The fields for each post include
* Image: the photo
* Caption: a short description
* Location: where the photo was taken
* Blog: thoughts, discussions, opinions, ramblings



## Discussion

Below is a discussion around any challenges I exerienced in building this rails app (and a reminder to myself about steps that needed to be taken).

There is currently an issue with running the blog in **Firefox** (cannot use the buttons to login or register). 

Gems that had to be added:
* rspec-rails (`gem 'rspec-rails', '~> 3.6'`) - for test driven development [https://github.com/rspec/rspec-rails]
* capybara (`gem 'capybara'`)- for testing web applications by simulating user input [https://github.com/teamcapybara/capybara]
* factory_girl_rails (`gem install factory_girl_rails`) - for creating test data [https://github.com/thoughtbot/factory_girl_rails]
* simple_form (`gem 'simple_form'`) - for simple form creation [https://github.com/plataformatec/simple_form]
* bootstrap (`gem 'bootstrap', '~> 4.0.0.beta'`) - bootstrap [https://github.com/twbs/bootstrap-rubygem]
* paperclip (`gem "paperclip", "~> 5.0.0"`) - file attachment management [https://github.com/thoughtbot/paperclip]
* ImageMagick - required for paperclip 
* Devise (`gem 'devise'`) - for user authentication
* Color picker (`gem 'jquery-minicolors-rails') - user color selection [https://github.com/kostia/jquery-minicolors-rails]

bundle initially was not working when running in the Visual Studio Code terminal (it was working using git bash). The problem was that the path could not be located. Following a suggestion on the web, I replaced the code in C:\RailsInstaller\Ruby2.3.0\bin\bundle.bat to

```
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
ECHO.This version of Ruby has not been built with support for Windows 95/98/Me.
GOTO :EOF
:WinNT
@"%~dp0ruby.exe" "%~dpn0" %*
```


I ran into issues with bcrypt as well (which is used by devise) as devise installed
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

Heroku steps

```
$ bundle exec rake assets:precompile
$ git push heroku
$ heroku pg:reset DATABASE
$ heroku run rails db:migrate
$ heroku run rails db:seed
$ heroku restart
```