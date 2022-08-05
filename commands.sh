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

# Generate and setting up the main page

$ rails g controller pages home
      create  app/controllers/pages_controller.rb
       route  get 'pages/home'
      invoke  erb
      create    app/views/pages
      create    app/views/pages/home.html.erb
      invoke  test_unit
      create    test/controllers/pages_controller_test.rb
      invoke  helper
      create    app/helpers/pages_helper.rb
      invoke    test_unit

# Generating devise views

$ rails g devise:views
      invoke  Devise::Generators::SharedViewsGenerator
      create    app/views/devise/shared
      create    app/views/devise/shared/_error_messages.html.erb
      create    app/views/devise/shared/_links.html.erb
      invoke  form_for
      create    app/views/devise/confirmations
      create    app/views/devise/confirmations/new.html.erb
      create    app/views/devise/passwords
      create    app/views/devise/passwords/edit.html.erb
      create    app/views/devise/passwords/new.html.erb
      create    app/views/devise/registrations
      create    app/views/devise/registrations/edit.html.erb
      create    app/views/devise/registrations/new.html.erb
      create    app/views/devise/sessions
      create    app/views/devise/sessions/new.html.erb
      create    app/views/devise/unlocks
      create    app/views/devise/unlocks/new.html.erb
      invoke  erb
      create    app/views/devise/mailer
      create    app/views/devise/mailer/confirmation_instructions.html.erb
      create    app/views/devise/mailer/email_changed.html.erb
      create    app/views/devise/mailer/password_change.html.erb
      create    app/views/devise/mailer/reset_password_instructions.html.erb
      create    app/views/devise/mailer/unlock_instructions.html.erb

# Using user name instead of email

$ rails g migration AddNameToUser name:string
      invoke  active_record
      create    db/migrate/20220704040520_add_name_to_user.rb

$ rails db:migrate
== 20220704040520 AddNameToUser: migrating ====================================
-- add_column(:users, :name, :string)
   -> 0.0147s
== 20220704040520 AddNameToUser: migrated (0.0148s) ===========================

# Register new users

User.all
  User Load (0.8ms)  SELECT "users".* FROM "users"
 =>
[#<User id: 1, email: "user10@mail.com", role: 0, created_at: "2022-07-04 04:56:00.373972000 +0000", updated_at: "2022-07-04 04:56:00.373972000 +0000", name: nil>,
 #<User id: 2, email: "trinidad@minimo.com", role: 0, created_at: "2022-07-04 04:59:43.775009000 +0000", updated_at: "2022-07-04 04:59:43.775009000 +0000", name: nil>,
 #<User id: 3, email: "muresco@api.com", role: 0, created_at: "2022-07-04 05:01:10.786382000 +0000", updated_at: "2022-07-04 05:01:10.786382000 +0000", name: nil>,
 #<User id: 4, email: "sanmartin@uni.gov.ar", role: 0, created_at: "2022-07-04 05:02:19.455804000 +0000", updated_at: "2022-07-04 05:02:19.455804000 +0000", name: nil>,
 #<User id: 5, email: "facil@pasar.com", role: 0, created_at: "2022-07-04 05:03:26.099248000 +0000", updated_at: "2022-07-04 05:03:26.099248000 +0000", name: nil>,
 #<User id: 6, email: "cami@exp.com", role: 0, created_at: "2022-07-04 05:04:11.842846000 +0000", updated_at: "2022-07-04 05:04:11.842846000 +0000", name: nil>,
 #<User id: 7, email: "ulaqn@mail.com", role: 0, created_at: "2022-07-04 05:05:10.674593000 +0000", updated_at: "2022-07-04 05:05:10.674593000 +0000", name: nil>,
 #<User id: 8, email: "indi@cacion.com", role: 0, created_at: "2022-07-04 05:06:28.965506000 +0000", updated_at: "2022-07-04 05:06:28.965506000 +0000", name: nil>]

3.1.2 :011 > User.first.update!(role: 1, name: 'cristian')
  User Load (0.5ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
  TRANSACTION (0.3ms)  BEGIN
  User Update (14.0ms)  UPDATE "users" SET "role" = $1, "updated_at" = $2, "name" = $3 WHERE "users"."id" = $4  [["role", 1], ["updated_at", "2022-07-04 05:11:17.963733"], ["name", "cristian"], ["id", 1]]
  TRANSACTION (4.5ms)  COMMIT
 => true

# Generating Competiton structure model
$ rails generate model Competition_structure description:string
      invoke  active_record
      create    db/migrate/20220708002953_create_competition_structures.rb
      create    app/models/competition_structure.rb
      invoke    test_unit
      create      test/models/competition_structure_test.rb
      create      test/fixtures/competition_structures.yml

$ rake db:migrate
== 20220708002953 CreateCompetitionStructures: migrating ======================
-- create_table(:competition_structures)
   -> 0.3926s
== 20220708002953 CreateCompetitionStructures: migrated (0.3928s) =============

CompetitionStructure.all
  CompetitionStructure Load (0.6ms)  SELECT "competition_structures".* FROM "competition_structures"
 =>
[#<CompetitionStructure:0x00007f65a03eba40
  id: 1,
  description: "league",
  created_at: Fri, 08 Jul 2022 01:11:27.627251000 UTC +00:00,
  updated_at: Fri, 08 Jul 2022 01:11:27.627251000 UTC +00:00>,
 #<CompetitionStructure:0x00007f65a03eb928
  id: 2,
  description: "tournament",
  created_at: Fri, 08 Jul 2022 01:11:41.493362000 UTC +00:00,
  updated_at: Fri, 08 Jul 2022 01:11:41.493362000 UTC +00:00>,
 #<CompetitionStructure:0x00007f65a03eb860
  id: 3,
  description: "league and tournament playoff",
  created_at: Fri, 08 Jul 2022 01:12:36.390545000 UTC +00:00,
  updated_at: Fri, 08 Jul 2022 01:12:36.390545000 UTC +00:00>]

# Generating scaffold of competition model
$ rails generate scaffold Competition name:string competition_structure:references national_teams:boolean groups:integer teams_group:integer rounds:integer
      invoke  active_record
      create    db/migrate/20220708014132_create_competitions.rb
      create    app/models/competition.rb
      invoke    test_unit
      create      test/models/competition_test.rb
      create      test/fixtures/competitions.yml
      invoke  resource_route
       route    resources :competitions
      invoke  scaffold_controller
      create    app/controllers/competitions_controller.rb
      invoke    erb
      create      app/views/competitions
      create      app/views/competitions/index.html.erb
      create      app/views/competitions/edit.html.erb
      create      app/views/competitions/show.html.erb
      create      app/views/competitions/new.html.erb
      create      app/views/competitions/_form.html.erb
      create      app/views/competitions/_competition.html.erb
      invoke    resource_route
      invoke    test_unit
      create      test/controllers/competitions_controller_test.rb
      create      test/system/competitions_test.rb
      invoke    helper
      create      app/helpers/competitions_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/competitions/index.json.jbuilder
      create      app/views/competitions/show.json.jbuilder
      create      app/views/competitions/_competition.json.jbuilder

$ rails db:migrate
== 20220708014132 CreateCompetitions: migrating ===============================
-- create_table(:competitions)
   -> 0.2230s
== 20220708014132 CreateCompetitions: migrated (0.2231s) ======================

# Add begin datetime to Competition table
$ rails g migration addBeginToCompetitions begin:datetime
      invoke  active_record
      create    db/migrate/20220708022225_add_begin_to_competitions.rb

$ rails db:migrate
== 20220708022225 AddBeginToCompetitions: migrating ===========================
-- add_column(:competitions, :begin, :datetime)
   -> 0.0015s
== 20220708022225 AddBeginToCompetitions: migrated (0.0015s) ==================

# Add active to Competition table

$ rails g migration addActiveToCompetitions active:boolean
      invoke  active_record
      create    db/migrate/20220708022637_add_active_to_competitions.rb

$ rails db:migrate
== 20220708022637 AddActiveToCompetitions: migrating ==========================
-- add_column(:competitions, :active, :boolean)
   -> 0.0016s
== 20220708022637 AddActiveToCompetitions: migrated (0.0018s) =================

# Generating scaffold of group model
$ rails g model Group competition:references name:string rounds:integer playoff_round:integer
      invoke  active_record
      create    db/migrate/20220708034024_create_groups.rb
      create    app/models/group.rb
      invoke    test_unit
      create      test/models/group_test.rb
      create      test/fixtures/groups.yml

$ rails db:migrate
== 20220708034024 CreateGroups: migrating =====================================
-- create_table(:groups)
   -> 0.2082s
== 20220708034024 CreateGroups: migrated (0.2082s) ============================

# Generating team scaffold
$ rails generate scaffold Team iso_code:integer name:string national_team:boolean iso_alpha2:string iso_alpha3:string
      invoke  active_record
      create    db/migrate/20220717035020_create_teams.rb
      create    app/models/team.rb
      invoke    test_unit
      create      test/models/team_test.rb
      create      test/fixtures/teams.yml
      invoke  resource_route
       route    resources :teams
      invoke  scaffold_controller
      create    app/controllers/teams_controller.rb
      invoke    erb
      create      app/views/teams
      create      app/views/teams/index.html.erb
      create      app/views/teams/edit.html.erb
      create      app/views/teams/show.html.erb
      create      app/views/teams/new.html.erb
      create      app/views/teams/_form.html.erb
      create      app/views/teams/_team.html.erb
      invoke    resource_route
      invoke    test_unit
      create      test/controllers/teams_controller_test.rb
      create      test/system/teams_test.rb
      invoke    helper
      create      app/helpers/teams_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/teams/index.json.jbuilder
      create      app/views/teams/show.json.jbuilder
      create      app/views/teams/_team.json.jbuilder

$ rails db:migrate
== 20220717035020 CreateTeams: migrating ======================================
-- create_table(:teams)
   -> 0.4467s
== 20220717035020 CreateTeams: migrated (0.4468s) =============================

# Installing bootstrap and sassc-rails gems
$ bundle install
Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
Using rake 13.0.6
Using minitest 5.16.2
Using builder 3.2.4
Using erubi 1.10.0
Using racc 1.6.0
Using rack 2.2.4
Using strscan 3.0.3
Using bcrypt 3.1.18
Using marcel 1.0.2
Using mini_mime 1.1.2
Using digest 3.1.0
Using timeout 0.3.0
Using concurrent-ruby 1.1.10
Using public_suffix 4.0.7
Using crass 1.0.6
Using bundler 2.3.17
Using websocket-extensions 0.1.5
Using regexp_parser 2.5.0
Using msgpack 1.5.3
Using io-console 0.5.11
Using thor 1.2.1
Using zeitwerk 2.6.0
Using ffi 1.15.5
Using tilt 2.0.10
Using nio4r 2.5.8
Using websocket 1.2.9
Fetching popper_js 2.9.3
Using bindex 0.8.1
Using childprocess 4.1.0
Fetching execjs 2.8.1
Using method_source 1.0.0
Using orm_adapter 0.5.0
Using pg 1.4.1
Using rexml 3.2.5
Using sprockets 4.1.1
Using addressable 2.8.0
Using websocket-driver 0.7.5
Using tzinfo 2.0.4
Using warden 1.2.9
Using mail 2.7.1
Using net-protocol 0.1.3
Using i18n 1.10.0
Using rubyzip 2.3.2
Using net-imap 0.2.3
Using net-pop 0.1.1
Using net-smtp 0.3.1
Using selenium-webdriver 4.3.0
Using reline 0.3.1
Using sassc 2.4.0
Using irb 1.4.1
Using matrix 0.4.2
Using puma 5.6.4
Using debug 1.5.0
Using nokogiri 1.13.6 (x86_64-linux)
Using bootsnap 1.12.0
Using loofah 2.18.0
Using rack-test 2.0.2
Using rails-html-sanitizer 1.4.3
Using xpath 3.2.0
Using webdrivers 5.0.0
Using capybara 3.37.1
Using activesupport 7.0.3
Using rails-dom-testing 2.0.3
Using globalid 1.0.0
Using actionview 7.0.3
Using activemodel 7.0.3
Using activejob 7.0.3
Using actionpack 7.0.3
Using jbuilder 2.11.5
Using actionmailer 7.0.3
Using railties 7.0.3
Using sprockets-rails 3.4.2
Using activerecord 7.0.3
Using actioncable 7.0.3
Using activestorage 7.0.3
Using importmap-rails 1.1.2
Using stimulus-rails 1.0.4
Using turbo-rails 1.1.1
Using web-console 4.2.0
Using sassc-rails 2.1.2
Using actionmailbox 7.0.3
Using actiontext 7.0.3
Using responders 3.0.1
Using rails 7.0.3
Using devise 4.8.1
Installing execjs 2.8.1
Installing popper_js 2.9.3
Fetching autoprefixer-rails 10.4.7.0
Installing autoprefixer-rails 10.4.7.0
Fetching bootstrap 5.1.3
Installing bootstrap 5.1.3
Bundle complete! 18 Gemfile dependencies, 87 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

# Downloading bootstrap using importmap
$ bin/importmap pin bootstrap --download
Pinning "bootstrap" to vendor/javascript/bootstrap.js via download from https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js
Pinning "@popperjs/core" to vendor/javascript/@popperjs/core.js via download from https://ga.jspm.io/npm:@popperjs/core@2.11.5/lib/index.js

# Generating scaffold of group_team model
$ rails g model Group_team group:references team:references points:integer wins:integer draws:integer loses:integer goals_made:integer goals_received:integer difference_goals:integer
      invoke  active_record
      create    db/migrate/20220719010711_create_group_teams.rb
      create    app/models/group_team.rb
      invoke    test_unit
      create      test/models/group_team_test.rb
      create      test/fixtures/group_teams.yml

$ rails db:migrate
== 20220719010711 CreateGroupTeams: migrating =================================
-- create_table(:group_teams)
   -> 0.1947s
== 20220719010711 CreateGroupTeams: migrated (0.1948s) ========================

# Carefully adding indexes
$ rails db:migrate
== 20220719012418 AddingCompositeIndexToGroupTeams: migrating =================
-- add_index(:group_teams, [:group_id, :team_id], {:unique=>true})
   -> 0.3283s
== 20220719012418 AddingCompositeIndexToGroupTeams: migrated (0.3285s) ========

# Adding default values to GroupTeams table
$ rails generate migration AddingInitValuesToGroupTeams
      invoke  active_record
      create    db/migrate/20220719014426_adding_init_values_to_group_teams.rb

$ rails db:migrate
== 20220719014426 AddingInitValuesToGroupTeams: migrating =====================
-- change_column(:group_teams, :points, :integer, {:default=>0, :null=>false})
   -> 0.0207s
-- change_column(:group_teams, :wins, :integer, {:default=>0, :null=>false})
   -> 0.0010s
-- change_column(:group_teams, :draws, :integer, {:default=>0, :null=>false})
   -> 0.0011s
-- change_column(:group_teams, :loses, :integer, {:default=>0, :null=>false})
   -> 0.0148s
-- change_column(:group_teams, :goals_made, :integer, {:default=>0, :null=>false})
   -> 0.0018s
-- change_column(:group_teams, :goals_received, :integer, {:default=>0, :null=>false})
   -> 0.0017s
-- change_column(:group_teams, :difference_goals, :integer, {:default=>0, :null=>false})
   -> 0.0019s
== 20220719014426 AddingInitValuesToGroupTeams: migrated (0.0434s) ============

# Changed my mind about GroupTeam table
$ rails generate migration DropGroupTeam
      invoke  active_record
      create    db/migrate/20220719022244_drop_group_team.rb

$ rails db:migrate
== 20220719022244 DropGroupTeam: migrating ====================================
-- drop_table(:group_teams)
   -> 0.0703s
== 20220719022244 DropGroupTeam: migrated (0.0705s) ===========================

# generating model CompetingTeam
$ rails g model Competing_team group:references team:references
      invoke  active_record
      create    db/migrate/20220719023051_create_competing_teams.rb
      create    app/models/competing_team.rb
      invoke    test_unit
      create      test/models/competing_team_test.rb
      create      test/fixtures/competing_teams.yml

$ rails db:migrate
== 20220719023051 CreateCompetingTeams: migrating =============================
-- create_table(:competing_teams)
   -> 0.1502s
-- add_index(:competing_teams, [:group_id, :team_id], {:unique=>true})
   -> 0.0331s
== 20220719023051 CreateCompetingTeams: migrated (0.1835s) ====================

# Generating model CompetingTeamScores
$ rails g model Competing_team_score competing_team:references points:integer goals:integer wins:integer draws:integer loses:integer goals_made:integer goals_received:integer goals_differences:integer
      invoke  active_record
      create    db/migrate/20220719024121_create_competing_team_scores.rb
      create    app/models/competing_team_score.rb
      invoke    test_unit
      create      test/models/competing_team_score_test.rb
      create      test/fixtures/competing_team_scores.yml

$ rails db:migrate
== 20220719024121 CreateCompetingTeamScores: migrating ========================
-- create_table(:competing_team_scores)
   -> 0.0938s
== 20220719024121 CreateCompetingTeamScores: migrated (0.0939s) ===============

# Seeding Qatar 2022 group stage teams
$ rails db:reset

# Checking if it's correct
$ rails db:migrate

# Generating a new migration to delete competings team index (some competing teams won't have teams associated)

$ rails generate migration DropTeamIndexOnCompetingTeam
      invoke  active_record
      create    db/migrate/20220723040622_drop_team_index_on_competing_team.rb

$ rails db:migrate
== 20220723040622 DropTeamIndexOnCompetingTeam: migrating =====================
-- remove_index(:competing_teams, {:name=>:index_competing_teams_on_group_id_and_team_id})
   -> 0.1271s
-- remove_index(:competing_teams, {:name=>:index_competing_teams_on_team_id})
   -> 0.0010s
== 20220723040622 DropTeamIndexOnCompetingTeam: migrated (0.1283s) ============

$ rails db:migrate
== 20220723044717 NullableTeamInCompetingTeam: migrating ======================
-- change_column(:competing_teams, :team_id, :bigint, {:null=>true})
   -> 0.1537s
== 20220723044717 NullableTeamInCompetingTeam: migrated (0.1538s) =============

# Creating country and city models for match location
$ rails g model Country name:string iso_code:string iso_alpha2:string iso_alpha3:string
      invoke  active_record
      create    db/migrate/20220723185342_create_countries.rb
      create    app/models/country.rb
      invoke    test_unit
      create      test/models/country_test.rb
      create      test/fixtures/countries.yml

$ rails db:migrate
== 20220723185342 CreateCountries: migrating ==================================
-- create_table(:countries)
   -> 0.2834s
== 20220723185342 CreateCountries: migrated (0.2835s) =========================

$ rails db:reset

# Check if Catar country was created

$ 3.1.2 :003 > Country.find_by_name("Catar")
  Country Load (0.3ms)  SELECT "countries".* FROM "countries" WHERE "countries"."name" = $1 LIMIT $2  [["name", "Catar"], ["LIMIT", 1]]
 =>
#<Country:0x00007f42f9cf75b8
 id: 180,
 name: "Catar",
 iso_code: "634",
 iso_alpha2: "QA",
 iso_alpha3: "QAT",
 created_at: Sat, 23 Jul 2022 19:20:33.490820000 UTC +00:00,
 updated_at: Sat, 23 Jul 2022 19:20:33.490820000 UTC +00:00>

# Generating location model

$ rails g model Location country:references name:string
      invoke  active_record
      create    db/migrate/20220723202613_create_locations.rb
      create    app/models/location.rb
      invoke    test_unit
      create      test/models/location_test.rb
      create      test/fixtures/locations.yml

# Generating stadium model

$ rails g model Stadium location:references name:string
      invoke  active_record
      create    db/migrate/20220723203156_create_stadia.rb
      create    app/models/stadium.rb
      invoke    test_unit
      create      test/models/stadium_test.rb
      create      test/fixtures/stadia.yml

$ rails db:migrate
== 20220723202613 CreateLocations: migrating ==================================
-- create_table(:locations)
   -> 0.2202s
== 20220723202613 CreateLocations: migrated (0.2204s) =========================

== 20220723203156 CreateStadia: migrating =====================================
-- create_table(:stadia)
   -> 0.1956s
== 20220723203156 CreateStadia: migrated (0.1957s) ============================

# Generating scaffold of matches
$ rails g model Match competing_team1_goals:integer competing_team2_goals:integer competing_team1_penalty_goals:integer competing_team2_penalty_goals:integer location:references date_time:datetime is_finished:boolean
      invoke  active_record
      create    db/migrate/20220723230001_create_matches.rb
      create    app/models/match.rb
      invoke    test_unit
      create      test/models/match_test.rb
      create      test/fixtures/matches.yml

$ rails db:migrate
== 20220723230001 CreateMatches: migrating ====================================
-- create_table(:matches)
   -> 0.1615s
== 20220723230001 CreateMatches: migrated (0.1616s) ===========================

# Referencing competing teams from a match
$ rails g migration AddCompetingTeamsToMatch competing_team_1:integer competing_team_2:integer
      invoke  active_record
      create    db/migrate/20220723231347_add_competing_teams_to_match.rb

$ rails db:migrate
== 20220723231347 AddCompetingTeamsToMatch: migrating =========================
-- add_column(:matches, :competing_team_1, :integer)
   -> 0.0043s
-- add_column(:matches, :competing_team_2, :integer)
   -> 0.0020s
== 20220723231347 AddCompetingTeamsToMatch: migrated (0.0065s) ================

# Adding name to matches

$ git commit -m "Adding name to matches"
[main e220b33] Adding name to matches
 1 file changed, 5 insertions(+)
 create mode 100644 db/migrate/20220731033808_add_code_to_match.rb

$ rails db:migrate
== 20220731033808 AddCodeToMatch: migrating ===================================
-- add_column(:matches, :name, :string)
   -> 0.2019s
== 20220731033808 AddCodeToMatch: migrated (0.2020s) ==========================

# Fixing matches and competing team relationship

$ rails generate migration RemoveCompetingTeamsFromMatches competing_team_1:integer competing_team_2:integer
      invoke  active_record
      create    db/migrate/20220802014635_remove_competing_teams_from_matches.rb

$ rails db:migrate
== 20220802014635 RemoveCompetingTeamsFromMatches: migrating ==================
-- remove_column(:matches, :competing_team_1, :integer)
   -> 0.0811s
-- remove_column(:matches, :competing_team_2, :integer)
   -> 0.0014s
== 20220802014635 RemoveCompetingTeamsFromMatches: migrated (0.0827s) =========

# Seeding matches

# Big mistake about match location, deleting every match and modifying match model to relate to stadiums and not location

3.1.2 :012 > Match.delete_all
  Match Delete All (12.2ms)  DELETE FROM "matches"
 => 30

$ rails generate migration RemoveLocationFromMatches location:references
      invoke  active_record
      create    db/migrate/20220802035257_remove_location_from_matches.rb

$ rails db:migrate
== 20220802035257 RemoveLocationFromMatches: migrating ========================
-- remove_reference(:matches, :location, {:null=>false, :foreign_key=>true})
   -> 0.0777s
== 20220802035257 RemoveLocationFromMatches: migrated (0.0778s) ===============

# And then adding stadium relationship to match table

$ rails generate migration AddStadiumToMatches stadium:references
      invoke  active_record
      create    db/migrate/20220802035729_add_stadium_to_matches.rb

$ rails db:migrate
== 20220802035729 AddStadiumToMatches: migrating ==============================
-- add_reference(:matches, :stadium, {:null=>false, :foreign_key=>true})
   -> 0.3704s
== 20220802035729 AddStadiumToMatches: migrated (0.3705s) =====================

# Seeding matches again

  TRANSACTION (0.2ms)  BEGIN
  CompetingTeam Load (0.5ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  CompetingTeam Load (0.3ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Stadium Load (0.5ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Match Create (1.0ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.073506"], ["updated_at", "2022-08-02 04:06:40.073506"], ["name", "002"], ["competing_team_1_id", 3], ["competing_team_2_id", 4], ["stadium_id", 1]]
  TRANSACTION (7.9ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Match Create (0.5ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.090455"], ["updated_at", "2022-08-02 04:06:40.090455"], ["name", "001"], ["competing_team_1_id", 1], ["competing_team_2_id", 2], ["stadium_id", 2]]
  TRANSACTION (10.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-25 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.107116"], ["updated_at", "2022-08-02 04:06:40.107116"], ["name", "018"], ["competing_team_1_id", 1], ["competing_team_2_id", 3], ["stadium_id", 1]]
  TRANSACTION (10.9ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Match Create (0.5ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-25 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.124138"], ["updated_at", "2022-08-02 04:06:40.124138"], ["name", "019"], ["competing_team_1_id", 4], ["competing_team_2_id", 2], ["stadium_id", 3]]
  TRANSACTION (10.0ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-29 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.139960"], ["updated_at", "2022-08-02 04:06:40.139960"], ["name", "035"], ["competing_team_1_id", 2], ["competing_team_2_id", 3], ["stadium_id", 3]]
  TRANSACTION (10.9ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Stadium Load (0.3ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-29 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.156985"], ["updated_at", "2022-08-02 04:06:40.156985"], ["name", "036"], ["competing_team_1_id", 4], ["competing_team_2_id", 1], ["stadium_id", 2]]
  TRANSACTION (10.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.173029"], ["updated_at", "2022-08-02 04:06:40.173029"], ["name", "003"], ["competing_team_1_id", 5], ["competing_team_2_id", 6], ["stadium_id", 3]]
  TRANSACTION (11.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.190166"], ["updated_at", "2022-08-02 04:06:40.190166"], ["name", "004"], ["competing_team_1_id", 7], ["competing_team_2_id", 8], ["stadium_id", 4]]
  TRANSACTION (10.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-25 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.206444"], ["updated_at", "2022-08-02 04:06:40.206444"], ["name", "017"], ["competing_team_1_id", 8], ["competing_team_2_id", 6], ["stadium_id", 4]]
  TRANSACTION (11.2ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-25 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.223626"], ["updated_at", "2022-08-02 04:06:40.223626"], ["name", "020"], ["competing_team_1_id", 5], ["competing_team_2_id", 7], ["stadium_id", 2]]
  TRANSACTION (10.5ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-29 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.239684"], ["updated_at", "2022-08-02 04:06:40.239684"], ["name", "033"], ["competing_team_1_id", 8], ["competing_team_2_id", 5], ["stadium_id", 4]]
  TRANSACTION (11.0ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-29 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.257006"], ["updated_at", "2022-08-02 04:06:40.257006"], ["name", "034"], ["competing_team_1_id", 6], ["competing_team_2_id", 7], ["stadium_id", 1]]
  TRANSACTION (10.5ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 9], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 10], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.273280"], ["updated_at", "2022-08-02 04:06:40.273280"], ["name", "008"], ["competing_team_1_id", 9], ["competing_team_2_id", 10], ["stadium_id", 5]]
  TRANSACTION (10.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 11], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 12], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.289702"], ["updated_at", "2022-08-02 04:06:40.289702"], ["name", "007"], ["competing_team_1_id", 11], ["competing_team_2_id", 12], ["stadium_id", 7]]
  TRANSACTION (11.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 12], ["LIMIT", 1]]
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 10], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Match Create (0.5ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-26 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.307108"], ["updated_at", "2022-08-02 04:06:40.307108"], ["name", "022"], ["competing_team_1_id", 12], ["competing_team_2_id", 10], ["stadium_id", 6]]
  TRANSACTION (10.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 9], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 11], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-26 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.322590"], ["updated_at", "2022-08-02 04:06:40.322590"], ["name", "024"], ["competing_team_1_id", 9], ["competing_team_2_id", 11], ["stadium_id", 5]]
  TRANSACTION (3.8ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 12], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 9], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-30 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.331070"], ["updated_at", "2022-08-02 04:06:40.331070"], ["name", "039"], ["competing_team_1_id", 12], ["competing_team_2_id", 9], ["stadium_id", 7]]
  TRANSACTION (3.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 10], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 11], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-30 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.339224"], ["updated_at", "2022-08-02 04:06:40.339224"], ["name", "040"], ["competing_team_1_id", 10], ["competing_team_2_id", 11], ["stadium_id", 5]]
  TRANSACTION (3.9ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 15], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 16], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.347970"], ["updated_at", "2022-08-02 04:06:40.347970"], ["name", "006"], ["competing_team_1_id", 15], ["competing_team_2_id", 16], ["stadium_id", 6]]
  TRANSACTION (11.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 13], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 14], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-21 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.364431"], ["updated_at", "2022-08-02 04:06:40.364431"], ["name", "005"], ["competing_team_1_id", 13], ["competing_team_2_id", 14], ["stadium_id", 8]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 16], ["LIMIT", 1]]
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 14], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-26 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.373271"], ["updated_at", "2022-08-02 04:06:40.373271"], ["name", "021"], ["competing_team_1_id", 16], ["competing_team_2_id", 14], ["stadium_id", 8]]
  TRANSACTION (11.2ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 13], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 15], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-26 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.389520"], ["updated_at", "2022-08-02 04:06:40.389520"], ["name", "023"], ["competing_team_1_id", 13], ["competing_team_2_id", 15], ["stadium_id", 7]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 14], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 15], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-30 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.397964"], ["updated_at", "2022-08-02 04:06:40.397964"], ["name", "037"], ["competing_team_1_id", 14], ["competing_team_2_id", 15], ["stadium_id", 8]]
  TRANSACTION (3.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 16], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 13], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-30 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.406044"], ["updated_at", "2022-08-02 04:06:40.406044"], ["name", "038"], ["competing_team_1_id", 16], ["competing_team_2_id", 13], ["stadium_id", 6]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.2ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 19], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 20], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-23 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.414511"], ["updated_at", "2022-08-02 04:06:40.414511"], ["name", "011"], ["competing_team_1_id", 19], ["competing_team_2_id", 20], ["stadium_id", 3]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 17], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 18], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-23 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.422712"], ["updated_at", "2022-08-02 04:06:40.422712"], ["name", "010"], ["competing_team_1_id", 17], ["competing_team_2_id", 18], ["stadium_id", 1]]
  TRANSACTION (3.2ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 20], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 18], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-27 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.431023"], ["updated_at", "2022-08-02 04:06:40.431023"], ["name", "025"], ["competing_team_1_id", 20], ["competing_team_2_id", 18], ["stadium_id", 4]]
  TRANSACTION (3.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 17], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 19], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-27 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.439612"], ["updated_at", "2022-08-02 04:06:40.439612"], ["name", "028"], ["competing_team_1_id", 17], ["competing_team_2_id", 19], ["stadium_id", 2]]
  TRANSACTION (3.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 20], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 17], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-01 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.447676"], ["updated_at", "2022-08-02 04:06:40.447676"], ["name", "043"], ["competing_team_1_id", 20], ["competing_team_2_id", 17], ["stadium_id", 3]]
  TRANSACTION (3.7ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 18], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 19], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-01 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.456165"], ["updated_at", "2022-08-02 04:06:40.456165"], ["name", "044"], ["competing_team_1_id", 18], ["competing_team_2_id", 19], ["stadium_id", 2]]
  TRANSACTION (3.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 23], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 24], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-23 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.464729"], ["updated_at", "2022-08-02 04:06:40.464729"], ["name", "012"], ["competing_team_1_id", 23], ["competing_team_2_id", 24], ["stadium_id", 2]]
  TRANSACTION (11.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 21], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 22], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-23 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.481279"], ["updated_at", "2022-08-02 04:06:40.481279"], ["name", "009"], ["competing_team_1_id", 21], ["competing_team_2_id", 22], ["stadium_id", 4]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 21], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 23], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-27 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.489294"], ["updated_at", "2022-08-02 04:06:40.489294"], ["name", "026"], ["competing_team_1_id", 21], ["competing_team_2_id", 23], ["stadium_id", 1]]
  TRANSACTION (3.9ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 24], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 22], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-27 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.497974"], ["updated_at", "2022-08-02 04:06:40.497974"], ["name", "027"], ["competing_team_1_id", 24], ["competing_team_2_id", 22], ["stadium_id", 3]]
  TRANSACTION (3.5ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 24], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 21], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-01 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.506307"], ["updated_at", "2022-08-02 04:06:40.506307"], ["name", "041"], ["competing_team_1_id", 24], ["competing_team_2_id", 21], ["stadium_id", 4]]
  TRANSACTION (3.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 22], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 23], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-01 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.514643"], ["updated_at", "2022-08-02 04:06:40.514643"], ["name", "042"], ["competing_team_1_id", 22], ["competing_team_2_id", 23], ["stadium_id", 1]]
  TRANSACTION (3.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 27], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 28], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-24 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.522609"], ["updated_at", "2022-08-02 04:06:40.522609"], ["name", "013"], ["competing_team_1_id", 27], ["competing_team_2_id", 28], ["stadium_id", 8]]
  TRANSACTION (3.8ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 25], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 26], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-24 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.531313"], ["updated_at", "2022-08-02 04:06:40.531313"], ["name", "016"], ["competing_team_1_id", 25], ["competing_team_2_id", 26], ["stadium_id", 5]]
  TRANSACTION (3.5ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 28], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 26], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-28 10:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.539641"], ["updated_at", "2022-08-02 04:06:40.539641"], ["name", "029"], ["competing_team_1_id", 28], ["competing_team_2_id", 26], ["stadium_id", 8]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 25], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 27], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Match Create (0.8ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-28 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.548037"], ["updated_at", "2022-08-02 04:06:40.548037"], ["name", "031"], ["competing_team_1_id", 25], ["competing_team_2_id", 27], ["stadium_id", 7]]
  TRANSACTION (11.1ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 26], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 27], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-02 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.564445"], ["updated_at", "2022-08-02 04:06:40.564445"], ["name", "047"], ["competing_team_1_id", 26], ["competing_team_2_id", 27], ["stadium_id", 7]]
  TRANSACTION (3.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 28], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 25], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-02 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.572774"], ["updated_at", "2022-08-02 04:06:40.572774"], ["name", "048"], ["competing_team_1_id", 28], ["competing_team_2_id", 25], ["stadium_id", 5]]
  TRANSACTION (3.7ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 31], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 32], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Match Create (0.2ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-24 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.581222"], ["updated_at", "2022-08-02 04:06:40.581222"], ["name", "014"], ["competing_team_1_id", 31], ["competing_team_2_id", 32], ["stadium_id", 6]]
  TRANSACTION (3.6ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 29], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 30], ["LIMIT", 1]]
  Stadium Load (0.2ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 7], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-24 16:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.589992"], ["updated_at", "2022-08-02 04:06:40.589992"], ["name", "015"], ["competing_team_1_id", 29], ["competing_team_2_id", 30], ["stadium_id", 7]]
  TRANSACTION (11.3ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 32], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 30], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-28 13:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.606248"], ["updated_at", "2022-08-02 04:06:40.606248"], ["name", "030"], ["competing_team_1_id", 32], ["competing_team_2_id", 30], ["stadium_id", 6]]
  TRANSACTION (3.4ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 29], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 31], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
  Match Create (0.3ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-11-28 19:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.614621"], ["updated_at", "2022-08-02 04:06:40.614621"], ["name", "032"], ["competing_team_1_id", 29], ["competing_team_2_id", 31], ["stadium_id", 5]]
  TRANSACTION (3.5ms)  COMMIT
  TRANSACTION (0.1ms)  BEGIN
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 30], ["LIMIT", 1]]
  CompetingTeam Load (0.1ms)  SELECT "competing_teams".* FROM "competing_teams" WHERE "competing_teams"."id" = $1 LIMIT $2  [["id", 31], ["LIMIT", 1]]
  Stadium Load (0.1ms)  SELECT "stadia".* FROM "stadia" WHERE "stadia"."id" = $1 LIMIT $2  [["id", 8], ["LIMIT", 1]]
  Match Create (0.4ms)  INSERT INTO "matches" ("competing_team1_goals", "competing_team2_goals", "competing_team1_penalty_goals", "competing_team2_penalty_goals", "date_time", "is_finished", "created_at", "updated_at", "name", "competing_team_1_id", "competing_team_2_id", "stadium_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-02 15:00:00"], ["is_finished", false],
7, $8, $9, $10, $11, $12) RETURNING "id"  [["competing_team1_goals", 0], ["competing_team2_goals", 0], ["competing_team1_penalty_goals", 0], ["competing_team2_penalty_goals", 0], ["date_time", "2021-09-02 15:00:00"], ["is_finished", false], ["created_at", "2022-08-02 04:06:40.639911"], ["updated_at", "2022-08-02 04:06:40.639911"], ["name", "046"], ["competing_team_1_id", 32], ["competing_team_2_id", 29], ["stadium_id", 6]]
  TRANSACTION (11.4ms)  COMMIT
 => true
3.1.2 :002 > Match.all.count
  Match Count (0.6ms)  SELECT COUNT(*) FROM "matches"
 => 48

# Changing column names
$ rails db:migrate
== 20220804042525 ChangeColumnNamesFromMatches: migrating =====================
-- rename_column(:matches, :competing_team1_goals, :competing_team_home_goals)
   -> 0.0300s
-- rename_column(:matches, :competing_team2_goals, :competing_team_away_goals)
   -> 0.0021s
-- rename_column(:matches, :competing_team1_penalty_goals, :competing_team_home_penalty_goals)
   -> 0.0016s
-- rename_column(:matches, :competing_team2_penalty_goals, :competing_team_away_penalty_goals)
   -> 0.0035s
-- rename_column(:matches, :date_time, :datetime)
   -> 0.0031s
-- rename_column(:matches, :competing_team_1_id, :competing_team_home_id)
   -> 0.0031s
-- rename_column(:matches, :competing_team_2_id, :competing_team_away_id)
   -> 0.0026s
== 20220804042525 ChangeColumnNamesFromMatches: migrated (0.0463s) ============

# Generating match controller

$ rails generate controller Matches
      create  app/controllers/matches_controller.rb
      invoke  erb
      create    app/views/matches
      invoke  test_unit
      create    test/controllers/matches_controller_test.rb
      invoke  helper
      create    app/helpers/matches_helper.rb
      invoke    test_unit

# deleting every match and load them again
