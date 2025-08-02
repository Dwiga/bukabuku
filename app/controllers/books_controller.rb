class BooksController < ApplicationController
  def index
    books = Book.all
    respond_to do |format|
      format.html
      format.json { render json: books }
    end
  end

  def new
    @book = Book.new
  end
end
