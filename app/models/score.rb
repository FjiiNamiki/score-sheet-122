class Score < ApplicationRecord
  belongs_to :user
  belongs_to :diary
  belongs_to :exercise
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :first
  belongs_to :second
  belongs_to :third
  belongs_to :fourth
  belongs_to :fifth
  belongs_to :sixth
  belongs_to :end


end
