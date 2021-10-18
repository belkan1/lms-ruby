class Admin::IssuesController < Admin::BaseController
  def index
  	@issues = Issue.all
  end

  def approve
  	@issue = Issue.find(params[:id])
  	@issue.status = 1
  	if @issue.save
  		redirect_to admin_issues_path
  	end
  end
end
