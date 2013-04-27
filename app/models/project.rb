class Project < ActiveRecord::Base
  attr_accessible :abstract, :challenges, :description, :location_id, :miniature, :project_category_id, :slug, :title, :video
end
