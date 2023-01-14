class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, unique: true
  validates :overview, presence: true
end
