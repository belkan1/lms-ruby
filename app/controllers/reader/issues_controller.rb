class Reader::IssuesController < Reader::BaseController

	def index
		@issues = Issue.where(user_id: current_user.id)
	end

	def new
		@issue = Issue.new
		@books = Book.all
	end

	def create
		@issue = Issue.new(issues_params)
		@issue.user_id = current_user.id
		if @issue.save
			redirect_to reader_issues_path
		else
			render :new
		end 
	end

	def return
		@issue = Issue.find(params[:id])
		@issue.status = 2
		@issue.save
		redirect_to reader_issues_path
	end

	private
	def issues_params
      params.require(:issue).permit(:issue_date,:return_date,:book_id)
    end
end
