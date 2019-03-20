class PettyFact < ActiveRecord::Base
    has_many :bookmarks
    has_many :users, through: :bookmarks 
    belongs_to :number
end