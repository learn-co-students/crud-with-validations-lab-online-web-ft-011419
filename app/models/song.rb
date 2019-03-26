class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: [:release_year, :artist_name] }
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, release_date: true
  validates :artist_name, presence: true
end
