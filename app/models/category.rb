class Category < ActiveRecord::Base
  attr_accessible :description, :name, :parent, :slug

  has_many :questions, :through => :category_id, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged

end
