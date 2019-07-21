$:.unshift File.expand_path('../../../', __FILE__)
require 'app/models/user'

class UserRegisterService
  def self.call(email:, first_name:, last_name:, birth_date:)
    User.create!(email: email, first_name: first_name, last_name: last_name, birth_date: birth_date)
  end
end

UserRegisterService.call(email: 'test@example.com', first_name: 'Akira', last_name: 'Suenami', birth_date: Time.local(1985, 5, 13))

registered_user = User.last
puts registered_user.id.class
puts registered_user.first_name.class
puts registered_user.last_name.class
puts registered_user.email.class
puts registered_user.birth_date.class
puts registered_user.birthday_massage_sending_scheduled_at

require 'app/models/user/refinement'
using Refinement

puts registered_user.id.class
puts registered_user.first_name.class
puts registered_user.last_name.class
puts registered_user.email.class
puts registered_user.birth_date.class
puts registered_user.birthday_massage_sending_scheduled_at
