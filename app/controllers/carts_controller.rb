class CartsController < InheritedResources::Base
include CurrentCart

before_action :set_cart, only: [:create]
before_action :set_cart, only: [:new, :edit]


def new
	@cart = Cart.new
end

def create
	@cart = Cart.new(cart_params)
end

def show
end

def edit
end


  private

    def cart_params
      params.require(:cart).permit()
    end

end
