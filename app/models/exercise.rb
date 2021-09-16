class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :diary
  has_many :scores
  validates :weather_id, :distance_id, numericality: { other_than: 1 }
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :distance
end
