class Score < ApplicationRecord
  belongs_to :user
  belongs_to :diary
  belongs_to :exercise
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :score_id
end
