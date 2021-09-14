class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :diary
  has_many :scores
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :distance
end
