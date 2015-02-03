class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre

  has_many :comments

  def date_published
    created_at.strftime("%D")
  end
end
