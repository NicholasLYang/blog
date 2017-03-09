class Article < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  has_many :comments
  validates :title, presence: true,
            length: {minimum: 5}

  def slug
    # Slug is the part of a URL that identifies a page
    # in human readable keywords
    title.downcase.gsub(" ", "-")
  end

  def to_param
    "#{id}-#{slug}"
  end

end
