class BookersController < ApplicationController
	def top
	end

	def index
		@book = Book.new
		@books= Book.all
	end

	def create
        book = Book.new(book_params)# ストロングパラメーターを使用
        if book.save# DBへ保存する
            redirect_to index_path
          else
          	redirect_to show_path
          end
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		book = Book.find(params[:id])
        book.update(book_params)
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		redirect_to index_path
	end

        private
          def book_params
          params.require(:book).permit(:title, :body)
        end
end
