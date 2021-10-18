class Admin::BooksController < Admin::BaseController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @categories = Category.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to admin_books_path
      else
        @categories = Category.all
        render :new
      end
  end

  def edit
    @book = Book.friendly.find(params[:id])
    @categories = Category.all
  end

  def update
    @book = Book.friendly.find(params[:id])
    @book.update(book_params)
    if @book.save
      redirect_to admin_books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.friendly.find(params[:id])
    if @book.destroy
      redirect_to admin_books_path
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :category_id)
    end
end
