require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use EventsController
use UsersController
use SessionsController
use CitiesController
