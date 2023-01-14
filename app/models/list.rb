class List < ApplicationRecord
  has_many :bookmarks

  validates :name, presence: true, unique: true
end
