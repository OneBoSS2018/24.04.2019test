class Post < ApplicationRecord
    belongs_to :user
    has_many :post_comments

    validates :title, :body, presence: true

    validates_presence_of :name
    validates_length_of :name, :within => 3..50
end
