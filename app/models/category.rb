class Category < ActiveRecord::Base
	## RELATIONSHIPS
	has_many :projects
	
	belongs_to :parent, class_name: "Category", foreign_key: "category_id"
	has_many :children, class_name: "Category", foreign_key: "category_id"

end
