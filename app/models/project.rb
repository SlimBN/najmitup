class Project < ActiveRecord::Base
  attr_accessible :abstract, :challenges, :description, :location_id, :miniature, :category_id, :slug, :title, :video, :user_id

  belongs_to :user
  belongs_to :location
  belongs_to :category

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :miniature, MiniatureUploader
end
