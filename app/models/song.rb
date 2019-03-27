class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: true 
    validates :genre, presence: true 
    validates :released, inclusion: { in: [true, false] }
end
