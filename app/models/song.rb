class Song < ApplicationRecord
 validates :title, presence: true 
 validates :title, uniqueness: { scope: [:release_year, :artist_name] }
 validates :artist_name, presence: true 
 validates  :released, inclusion: {in: [true,false]}
 with_options if: :released? do |released|
    released.validates :release_year, presence: true
    released.validates :release_year, numericality: {less_than_or_equal_to: Time.new.year}  
 end 

 def released?
  self.released == true 
end
end
