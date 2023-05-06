class Movie < ApplicationRecord

  has_many :bookmarks

  validates :title, uniqueness: true
  validates :overview, uniqueness: true
  validates :title, length: { minimum: 1 }
  validates :overview, length: { minimum: 1 }
end
