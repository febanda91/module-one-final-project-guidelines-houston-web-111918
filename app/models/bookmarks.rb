class Bookmark < ActiveRecord::Base
    belongs_to :user
    belongs_to :petty_fact
end