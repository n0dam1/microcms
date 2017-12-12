class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  acts_as_taggable
  validates :title, presence: true
  validates :content, presence: true
end
