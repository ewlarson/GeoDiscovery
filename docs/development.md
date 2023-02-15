# Local Development

## Dependencies: Ruby and Java

To run GeoDiscovery locally, you'll need to be able to run Ruby and Java. GoRails has good instructions for installing Ruby on Rails on multiple operating systems online here: https://gorails.com/setup

Make sure you have Java installed. On a Mac with homebrew, that can be as simple as: `brew install java`.

### Clone the GeoDiscovery repository, and cd into it

`git clone git@github.com:UWM-Libraries/GeoDiscovery.git`
`cd GeoDiscovery`

### Configure your DotEnv files

.example.env.test and .example.env.development

`cp .example.env.test .env.test`
`cp .example.env.development .env.development`

After you copy the files, update them to include your database and solr connections

### Bundle dependencies

Bundle the application's Rubygem dependencies via:

`bundle install`

### Database initialization

You'll need a local database (sqlite) for development and test modes

`bundle exec rake db:create`
`bundle exec rake db:migrate`

In a production environment, you'll want a production capacity database like MySQL or PostgreSQL.

### Run the application

This rake task will run Solr and Puma and populate the application with the test fixture Aardvark JSON files:

`bundle exec rake uwm:server`

### Run the test suite

To run the project test suite, run this rake task below:

`RAILS_ENV=test bundle exec rake ci`

### Run the Ruby linter

`bundle exec standardrb`