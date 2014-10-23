class LibraryController < ApplicationController
  def list
    @books = Book.all
    @patrons = Patron.all
  end

  def new_checkout
    @checkout = Checkout.new
    if params[:book_id]
      @checkout.book = Book.find(params[:book_id])
    end
  end

  def checkout
    @checkout = Checkout.new(params.require(:checkout).permit(:book_id, :patron_id))
    @checkout.checkout_at = DateTime.now
    # set checkout_at to now
    # set book.available to false
    if @checkout.save
      @checkout.book.available = false
      @checkout.book.save

      redirect_to root_path, notice: "BOOM"
    else
      render :new_checkout
    end
  end

  def new_checkin
  end
end
