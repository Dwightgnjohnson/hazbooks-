class CheckoutController < ApplicationController
  def list
     @books = Book.all
    @patrons = Patron.all
  end

  def new_checkout
  end

  def new_checkin
  end
end
