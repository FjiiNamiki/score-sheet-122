class Diary < ApplicationRecord
  validates :date, :place, presence: true
  belongs_to :user
  has_many :exercises
  has_many :scores
  has_many :comments
end
