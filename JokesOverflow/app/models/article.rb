class Article < ApplicationRecord
  has_many :comments

  belongs_to :user

  belongs_to :category

  has_many :votes, as: :voteable

  validates :title, :body, presence: true
end
