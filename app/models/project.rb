class Project < ActiveRecord::Base
  attr_accessible :abstract, :challenges, :description, :location_id, :miniature, :project_category_id, :slug, :title, :video, :user_id

  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :miniature, MiniatureUploader
end
