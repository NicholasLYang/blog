class Article < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  has_many :comments
  validates :title, presence: true,
            length: {minimum: 5}
end
