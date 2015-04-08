class Post < ActiveRecord::Base
	has_many :reviews

	before_create :initialize_like

	def initialize_like
	 	if self.like == nil
	 		self.like = 0
	 	end
	end
end
