class BooksController < ApplicationController

    def index
    @book = Book.new    
    @books = Book.all
    end

    def show
    @book = Book.find(params[:id])
    end

    def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to book_path(@book.id), notice: "Book was successfully created."
    else
     render :index
    end
    end

    def edit
    @books = Book.all
    @book = Book.find(params[:id])
    if @book.save
     redirect_to book_path(@book.id)
    else
     render :show
    end
    end

    def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book.id), notice: "Book was successfully updated."
    end

    def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "Book was successfully destroyed."
    end

    private

    def book_params
    params.permit(:title, :body)
    end
end
