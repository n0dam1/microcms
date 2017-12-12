class User < ApplicationRecord
  has_many :posts, dependent: :nullify
  acts_as_authentic
  enum role: { normal: 0, admin: 1 }
end
