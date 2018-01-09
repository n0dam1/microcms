class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  acts_as_taggable

  validates :title, presence: true
  validates :content, presence: true

  paginates_per 20

  scope :index_all, -> {
    select(:id, :title, :updated_at, :user_id, :category_id)
      .order(updated_at: :asc)
      .includes(:user, :category)
  }
end
