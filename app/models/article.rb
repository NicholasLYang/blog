class Article < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: {minimum: 5}

  def slug
    # Slug is the part of a URL that identifies a page
    # in human readable keywords
    substitutions = [
      [' ' , '-'],
      ['.' , '_'],
      ['?' , '']
    ]
    safe_title = title.downcase
    substitutions.each { |sub| safe_title.gsub!(sub[0],
                                                sub[1]) }
    return safe_title.parameterize
  end

  def to_param
    "#{id}-#{slug}"
  end

end
