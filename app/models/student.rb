class Student < ApplicationRecord
  has_many :grades
  belongs_to :course

  validates :name, presence: true
end