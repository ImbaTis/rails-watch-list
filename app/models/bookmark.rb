class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }

  validates :list, presence: true
  validates :movie, presence: true
  validates :list, uniqueness: { scoope: :movie }
end
