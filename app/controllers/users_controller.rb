class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@books = @user.books
		@book = Book.new
	end

	def index
		@book = Book.new
		@users = User.all
		@user = current_user
	end

	def edit
		@book = Book.find(params[:id])
		@user = User.find(params[:id])
	end

	def update
		book = book.find(params[:id])
		book.update(book_params)
		redirect_to book_path
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user.id)
	end

	


	private
	def book_params
		params.require(:book).permit(:title, :body)
	end
	
end
