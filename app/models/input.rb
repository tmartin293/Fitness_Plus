class Input < ApplicationRecord
  validates :a_flag,
            :presence => { :if => 'a_flag.nil?' }
end
