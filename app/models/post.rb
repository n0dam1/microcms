class Post < ApplicationRecord
  belongs_to :category
  acts_as_taggable
  validates :title, presence: true
  validates :content, presence: true
end
