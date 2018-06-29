require './config/environment'

if ActiveRecord::SchemaMigration.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate SINATRA_ENV=test` to resolve the issue.'
end

run ApplicationController