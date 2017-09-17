# Photo Blog



## Environment

Built and tested on Windows 10 Home 

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

bundle initially was not working when running in the Visual Studio Code terminal (it was working using git bash). The problem was that the path could not be located. Following a suggestion on the web, I replaced the code in C:\RailsInstaller\Ruby2.3.0\bin\bundle.bat to

```
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
ECHO.This version of Ruby has not been built with support for Windows 95/98/Me.
GOTO :EOF
:WinNT
@"%~dp0ruby.exe" "%~dpn0" %*
```

Using simple form for simple form creation. Added bootstrap for styling.

ImageMagick - getting picture resizing to work for me also required the rmagick gem. I downloaded ImageMagick from their website [https://www.imagemagick.org/script/download.php] and installed it and also added the rmagick gem to my gemfile. I then ran into extconf errors until I restarted my computer which fixed up the path errors.

Important notes:

* ImageMagick must be installed in a directory with no whitespaces in the path
* choose a bit version of imagemagick that matches the bit version of ruby (32bit) - ImageMagick-7.0.7-2-Q16-x86-dll.exe





Creation

rails g controller posts
rails g model Post caption:string location:string blog:text
rake db:migrate
rails g paperclip post image
 
