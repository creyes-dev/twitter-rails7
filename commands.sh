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






