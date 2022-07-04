psql and deployment
https://www.youtube.com/watch?v=5QUTfcO7BEw

setup solargraph
https://www.youtube.com/watch?v=mkLDPpDSWng

commit inicial

$ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Gemfile
	Gemfile.lock
	Rakefile
	app/
	bin/
	commands.sh
	config.ru
	config/
	db/
	lib/
	log/
	public/
	storage/
	test/
	tmp/
	vendor/

nothing added to commit but untracked files present (use "git add" to track)

$ git add .

$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   .gitignore
	new file:   Gemfile
	new file:   Gemfile.lock
	new file:   Rakefile
	new file:   app/assets/config/manifest.js
	new file:   app/assets/images/.keep
	new file:   app/assets/stylesheets/application.css
	new file:   app/channels/application_cable/channel.rb
	new file:   app/channels/application_cable/connection.rb
	new file:   app/controllers/application_controller.rb
	new file:   app/controllers/concerns/.keep
	new file:   app/helpers/application_helper.rb
	new file:   app/javascript/application.js
	new file:   app/javascript/controllers/application.js
	new file:   app/javascript/controllers/hello_controller.js
	new file:   app/javascript/controllers/index.js
	new file:   app/jobs/application_job.rb
	new file:   app/mailers/application_mailer.rb
	new file:   app/models/application_record.rb
	new file:   app/models/concerns/.keep
	new file:   app/views/layouts/application.html.erb
	new file:   app/views/layouts/mailer.html.erb
	new file:   app/views/layouts/mailer.text.erb
	new file:   bin/bundle
	new file:   bin/importmap
	new file:   bin/rails
	new file:   bin/rake
	new file:   bin/setup
	new file:   commands.sh
	new file:   config.ru
	new file:   config/application.rb
	new file:   config/boot.rb
	new file:   config/cable.yml
	new file:   config/credentials.yml.enc
	new file:   config/database.yml
	new file:   config/environment.rb
	new file:   config/environments/development.rb
	new file:   config/environments/production.rb
	new file:   config/environments/test.rb
	new file:   config/importmap.rb
	new file:   config/initializers/assets.rb
	new file:   config/initializers/content_security_policy.rb
	new file:   config/initializers/filter_parameter_logging.rb
	new file:   config/initializers/inflections.rb
	new file:   config/initializers/permissions_policy.rb
	new file:   config/locales/en.yml
	new file:   config/puma.rb
	new file:   config/routes.rb
	new file:   config/storage.yml
	new file:   db/seeds.rb
	new file:   lib/assets/.keep
	new file:   lib/tasks/.keep
	new file:   log/.keep
	new file:   public/404.html
	new file:   public/422.html
	new file:   public/500.html
	new file:   public/apple-touch-icon-precomposed.png
	new file:   public/apple-touch-icon.png
	new file:   public/favicon.ico
	new file:   public/robots.txt
	new file:   storage/.keep
	new file:   test/application_system_test_case.rb
	new file:   test/channels/application_cable/connection_test.rb
	new file:   test/controllers/.keep
	new file:   test/fixtures/files/.keep
	new file:   test/helpers/.keep
	new file:   test/integration/.keep
	new file:   test/mailers/.keep
	new file:   test/models/.keep
	new file:   test/system/.keep
	new file:   test/test_helper.rb
	new file:   tmp/.keep
	new file:   vendor/.keep
	new file:   vendor/javascript/.keep

 git commit -m "first commit"
[main 407b155] first commit
 Committer: Cristian Reyes <cristian@debian-host.debian-domain>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 74 files changed, 1435 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 Rakefile
 create mode 100644 app/assets/config/manifest.js
 create mode 100644 app/assets/images/.keep
 create mode 100644 app/assets/stylesheets/application.css
 create mode 100644 app/channels/application_cable/channel.rb
 create mode 100644 app/channels/application_cable/connection.rb
 create mode 100644 app/controllers/application_controller.rb
 create mode 100644 app/controllers/concerns/.keep
 create mode 100644 app/helpers/application_helper.rb
 create mode 100644 app/javascript/application.js
 create mode 100644 app/javascript/controllers/application.js
 create mode 100644 app/javascript/controllers/hello_controller.js
 create mode 100644 app/javascript/controllers/index.js
 create mode 100644 app/jobs/application_job.rb
 create mode 100644 app/mailers/application_mailer.rb
 create mode 100644 app/models/application_record.rb
 create mode 100644 app/models/concerns/.keep
 create mode 100644 app/views/layouts/application.html.erb
 create mode 100644 app/views/layouts/mailer.html.erb
 create mode 100644 app/views/layouts/mailer.text.erb
 create mode 100755 bin/bundle
 create mode 100755 bin/importmap
 create mode 100755 bin/rails
 create mode 100755 bin/rake
 create mode 100755 bin/setup
 create mode 100644 commands.sh
 create mode 100644 config.ru
 create mode 100644 config/application.rb
 create mode 100644 config/boot.rb
 create mode 100644 config/cable.yml
 create mode 100644 config/credentials.yml.enc
 create mode 100644 config/database.yml
 create mode 100644 config/environment.rb
 create mode 100644 config/environments/development.rb
 create mode 100644 config/environments/production.rb
 create mode 100644 config/environments/test.rb
 create mode 100644 config/importmap.rb
 create mode 100644 config/initializers/assets.rb
 create mode 100644 config/initializers/content_security_policy.rb
 create mode 100644 config/initializers/filter_parameter_logging.rb
 create mode 100644 config/initializers/inflections.rb
 create mode 100644 config/initializers/permissions_policy.rb
 create mode 100644 config/locales/en.yml
 create mode 100644 config/puma.rb
 create mode 100644 config/routes.rb
 create mode 100644 config/storage.yml
 create mode 100644 db/seeds.rb
 create mode 100644 lib/assets/.keep
 create mode 100644 lib/tasks/.keep
 create mode 100644 log/.keep
 create mode 100644 public/404.html
 create mode 100644 public/422.html
 create mode 100644 public/500.html
 create mode 100644 public/apple-touch-icon-precomposed.png
 create mode 100644 public/apple-touch-icon.png
 create mode 100644 public/favicon.ico
 create mode 100644 public/robots.txt
 create mode 100644 storage/.keep
 create mode 100644 test/application_system_test_case.rb
 create mode 100644 test/channels/application_cable/connection_test.rb
 create mode 100644 test/controllers/.keep
 create mode 100644 test/fixtures/files/.keep
 create mode 100644 test/helpers/.keep
 create mode 100644 test/integration/.keep
 create mode 100644 test/mailers/.keep
 create mode 100644 test/models/.keep
 create mode 100644 test/system/.keep
 create mode 100644 test/test_helper.rb
 create mode 100644 tmp/.keep
 create mode 100644 vendor/.keep
 create mode 100644 vendor/javascript/.keep

$ git push
Enumerating objects: 87, done.
Counting objects: 100% (87/87), done.
Delta compression using up to 12 threads
Compressing objects: 100% (70/70), done.
Writing objects: 100% (86/86), 22.81 KiB | 5.70 MiB/s, done.
Total 86 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), done.
To github.com:creyes-dev/twitter-rails7.git
   d4cb863..407b155  main -> main

# Setting up solargraph

$ yard gems

$ yard config --gem-install-yri
Updated ~/.gemrc: 'gem: --document=yri'

$ solargraph bundle

# Setting up postgresql and creating database

$ rails db:create
Created database 'prode_development'
Created database 'prode_test'

$ rails db:migrate

$ sudo -u postgres psql
[sudo] password for cristian:
psql (13.7 (Debian 13.7-0+deb11u1))
Type "help" for help.

postgres=# \l

                                      List of databases
       Name        |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
-------------------+----------+----------+-------------+-------------+-----------------------
 cristiandb        | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 postgres          | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 prode_development | cristian | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 prode_test        | cristian | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0         | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
                   |          |          |             |             | postgres=CTc/postgres
 template1         | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
                   |          |          |             |             | postgres=CTc/postgres
(6 rows)

# setting up devise

$ bundle add devise
Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
Using rake 13.0.6
Using builder 3.2.4
Using crass 1.0.6
Using racc 1.6.0
Using websocket-extensions 0.1.5
Using marcel 1.0.2
Using digest 3.1.0
Using concurrent-ruby 1.1.10
Using bindex 0.8.1
Using bundler 2.3.17
Using matrix 0.4.2
Using mini_mime 1.1.2
Using io-console 0.5.11
Using timeout 0.3.0
Using strscan 3.0.3
Using public_suffix 4.0.7
Using msgpack 1.5.3
Using minitest 5.16.2
Using rack 2.2.4
Using nio4r 2.5.8
Using regexp_parser 2.5.0
Using childprocess 4.1.0
Using erubi 1.10.0
Using method_source 1.0.0
Using thor 1.2.1
Fetching orm_adapter 0.5.0
Fetching bcrypt 3.1.18
Using rexml 3.2.5
Using rubyzip 2.3.2
Using websocket 1.2.9
Using nokogiri 1.13.6 (x86_64-linux)
Using websocket-driver 0.7.5
Using bootsnap 1.12.0
Using rack-test 2.0.2
Using zeitwerk 2.6.0
Using sprockets 4.1.1
Using puma 5.6.4
Using selenium-webdriver 4.3.0
Using net-protocol 0.1.3
Using addressable 2.8.0
Using i18n 1.10.0
Using tzinfo 2.0.4
Using net-pop 0.1.1
Using net-smtp 0.3.1
Using pg 1.4.1
Using reline 0.3.1
Using loofah 2.18.0
Using irb 1.4.1
Using webdrivers 5.0.0
Using net-imap 0.2.3
Fetching warden 1.2.9
Using mail 2.7.1
Using activesupport 7.0.3
Using xpath 3.2.0
Using rails-dom-testing 2.0.3
Using activemodel 7.0.3
Using capybara 3.37.1
Using rails-html-sanitizer 1.4.3
Using debug 1.5.0
Using actionview 7.0.3
Using activerecord 7.0.3
Using globalid 1.0.0
Using actionpack 7.0.3
Using activejob 7.0.3
Using sprockets-rails 3.4.2
Using jbuilder 2.11.5
Using actioncable 7.0.3
Using railties 7.0.3
Using activestorage 7.0.3
Using actionmailer 7.0.3
Using actionmailbox 7.0.3
Using actiontext 7.0.3
Using stimulus-rails 1.0.4
Using turbo-rails 1.1.1
Using importmap-rails 1.1.2
Using web-console 4.2.0
Fetching responders 3.0.1
Using rails 7.0.3
Installing warden 1.2.9
Installing responders 3.0.1
Installing bcrypt 3.1.18 with native extensions
Installing orm_adapter 0.5.0
Fetching devise 4.8.1
Installing devise 4.8.1

$ rails g devise:install
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
# ===============================================================================
#
# Depending on your application's configuration some manual setup may be required:
#
#   1. Ensure you have defined default url options in your environments files. Here
#      is an example of default_url_options appropriate for a development environment
#      in config/environments/development.rb:
#
#        config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
#
#      In production, :host should be set to the actual host of your application.
#
#      * Required for all applications. *
#
#   2. Ensure you have defined root_url to *something* in your config/routes.rb.
#      For example:
#
#        root to: "home#index"
#
#      * Not required for API-only Applications *
#
#   3. Ensure you have flash messages in app/views/layouts/application.html.erb.
#      For example:
#
#        <p class="notice"><%= notice %></p>
#        <p class="alert"><%= alert %></p>
#
#      * Not required for API-only Applications *
#
#   4. You can copy Devise views (for customization) to your app by running:
#
#        rails g devise:views
#
#      * Not required *
#
# ===============================================================================

# Creating User model

$ rails g devise User role:integer
      invoke  active_record
      create    db/migrate/20220704012035_devise_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      insert    app/models/user.rb
       route  devise_for :users

# Migrating User table

$ rails db:migrate
== 20220704012035 DeviseCreateUsers: migrating ================================
-- create_table(:users)
   -> 0.2256s
-- add_index(:users, :email, {:unique=>true})
   -> 0.0589s
-- add_index(:users, :reset_password_token, {:unique=>true})
   -> 0.0248s
== 20220704012035 DeviseCreateUsers: migrated (0.3095s) =======================

following: Create User Account Roles In Devise | Ruby On Rails 7 Tutorial by Deanin
https://youtu.be/FdCsBwI7raY


