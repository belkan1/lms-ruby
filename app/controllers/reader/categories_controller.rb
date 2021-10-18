class Reader::CategoriesController < Reader::BaseController
	def index
		@categories = Category.all
	end
end
