$:.unshift File.expand_path('../../../', __FILE__)
require 'app/models/user'

class UserRegisterService
  def self.call(email:, first_name:, last_name:, birth_date:)
    User.create!(email: email, first_name: first_name, last_name: last_name, birth_date: birth_date)
  end
end

user = UserRegisterService.call(email: 'test@example.com', first_name: 'Akira', last_name: 'Suenami', birth_date: Time.local(1985, 5, 13))
puts user.inspect
