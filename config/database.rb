require 'active_record'

config = {
  adapter: 'sqlite3',
  host: 'localhost',
  database: 'db/sample.sqlite3',
}
ActiveRecord::Base.establish_connection(config)
