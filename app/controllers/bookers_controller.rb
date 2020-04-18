class BookersController < ApplicationController
	def top
	end

	def create
        @book = Book.new(book_params)# ストロングパラメーターを使用
        if @book.save# DBへ保存する
        	flash[:success] = "Book was successfully created."
            redirect_to "/books/#{@book.id}"
        else
        	@books = Book.all
        	render action: :index
        end
	end

    def index
		@book = Book.new
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end


	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		if @book.update(book_params)
            flash[:success] = "Book was successfully update."
            redirect_to "/books/#{@book.id}"
		else
			render action: :edit
		end
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		redirect_to books_path
	end

        private
          def book_params
          params.require(:book).permit(:title, :body)
        end
end
