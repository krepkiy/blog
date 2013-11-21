# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Post < ActiveRecord::Base
  attr_accessible :title
  
  belongs_to :user

  validates :title, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  default_scope order: 'posts.created_at DESC'
end
