  class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates_presence_of :a_flag
end
