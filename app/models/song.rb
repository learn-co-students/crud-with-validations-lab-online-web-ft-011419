class Song < ActiveRecord::Base
  validates :title, :artist_name, presence: true
  validates :title, uniqueness: true
  validates :released, inclusion: { in: [true, false]}
  validates :release_year, numericality: {less_than_or_equal_to: Time.now.year}, allow_nil: true
  validates_presence_of :release_year, :if => :released?


end
