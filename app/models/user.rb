class User < ActiveRecord::Base
    has_many :bookmarks
    has_many :petty_facts, through: :bookmarks
end