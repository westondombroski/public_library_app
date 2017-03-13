class LibraryUsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries # so we type less in the view
  end

  def create
    @library = Library.find(params[:library_id])
    @library.users.push(current_user)  # no error handling currently

    redirect_to current_user
  end
end
