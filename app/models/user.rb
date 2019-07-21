$:.unshift File.expand_path('../../../', __FILE__)
require 'app/models/application_record'

class User < ApplicationRecord
end

require 'app/models/user/id'
require 'app/models/user/email'
require 'app/models/user/first_name'
require 'app/models/user/last_name'
require 'app/models/user/birth_date'

class User < ApplicationRecord
  # composed_of :id, class_name: 'User::Id', mapping: %w(id)
  # composed_of :first_name, class_name: 'User::FirstName', mapping: %w(first_name to_s)
  # composed_of :last_name, class_name: 'User::LastName', mapping: %w(last_name to_s)
  # composed_of :birth_date, class_name: 'User::BirthDate', mapping: %w(birth_date to_date)

  def birthday_massage_sending_scheduled_at
    birth_date - 1.day
  end
end
