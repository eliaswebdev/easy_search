class Project < ActiveRecord::Base
	
	belongs_to :category

	

	def self.search(search)
	  if search
	    where('lower(name) LIKE ?', "%#{search.downcase}%")
	  else
	    self.all
	  end
	end

end

