module Admin
  class CategoriesController < BaseController
    before_action :get_category, only: [:edit, :update, :destroy]
    # before_action :authenticate_user!

    def index
      @categories = Category.all
    end

    def show
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to admin_categories_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @category.update(category_params)
        redirect_to admin_categories_path
      else  
        render :edit
      end
    end

    def destroy
      if @category.destroy
        redirect_to admin_categories_path
      end
    end

    private

    def get_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
  end
end