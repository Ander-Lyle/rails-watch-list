class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :movie_id, uniqueness: {
    scope: %i[list_id movie_id]
  }
end
