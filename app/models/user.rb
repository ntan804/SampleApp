class User < ActiveRecord::Base
  attr_accessible :title, :body, :name

  validates :title, :presence => true
end
