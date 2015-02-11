class Comment < ActiveRecord::Base
  validates :message, presence: true

  belongs_to :post
  belongs_to :user

  scope :recent, -> { limit(4) }

  paginates_per 4

  def time
    created_at.strftime('%d %b at %I:%M %p')
  end
end
