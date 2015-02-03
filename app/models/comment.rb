class Comment < ActiveRecord::Base
  belongs_to :story

  def date_posted
    created_at.strftime("%D")
  end

  def get_name(commentor_id)
    name = User.find(commentor_id).name
  end
end
