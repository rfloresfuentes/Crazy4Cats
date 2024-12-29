class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :reactions
    has_many :users, through: :reactions
end
