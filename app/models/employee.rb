class Employee < ActiveRecord::Base
  belongs_to :company
  belongs_to :location
  has_many :courses
end
