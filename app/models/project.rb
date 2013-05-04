class Project < ActiveRecord::Base
  attr_accessible :abstract, :challenges, :description, :location_id, :miniature, :category_id, :slug, :title, :video, :user_id, :needs, :somme, :how_know, :facebook_link, :twitter_link, :accepted, :featured, :rejected_for

  belongs_to :user
  belongs_to :location
  belongs_to :category

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :miniature, MiniatureUploader
end
