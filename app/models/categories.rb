class Categories < ActiveRecord::Base
  attr_accessible :enabled, :title
end

Categories.new