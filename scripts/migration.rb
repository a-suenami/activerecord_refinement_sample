$:.unshift File.expand_path('../../', __FILE__)
require 'active_record'
require 'benchmark'
require 'config/database'

ActiveRecord::Migration.create_table :users do |t|
  t.string :first_name, null: false
  t.string :last_name, null: false
  t.string :email, null: false
  t.date   :birth_date, null: false
end
