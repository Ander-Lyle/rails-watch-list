class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy

  # list.rb
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
