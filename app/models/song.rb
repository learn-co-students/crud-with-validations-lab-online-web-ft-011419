class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: { in: [true, false] }
  validates_presence_of :artist_name
  validates :release_year, numericality: {less_than_or_equal_to: Time.now.year}, allow_nil: true
  validates_presence_of :release_year, :if => :released?
end
