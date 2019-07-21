$:.unshift File.expand_path('../../../', __FILE__)
require 'active_record'
require 'config/database'

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
