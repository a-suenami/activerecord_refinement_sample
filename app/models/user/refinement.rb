module Refinement
  refine User do
    User.composed_of :id, class_name: 'User::Id', mapping: %w(id)
    User.composed_of :first_name, class_name: 'User::FirstName', mapping: %w(first_name to_s)
    User.composed_of :last_name, class_name: 'User::LastName', mapping: %w(last_name to_s)
    User.composed_of :birth_date, class_name: 'User::BirthDate', mapping: %w(birth_date to_date)

    User.delegate :birthday_massage_sending_scheduled_at, to: :birth_date
  end
end
