class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true

  # A list has many movies through bookmarks

  # When you delete a list, you should delete all associated bookmarks
  # (but not the movies as they can be referenced in other lists).


end
