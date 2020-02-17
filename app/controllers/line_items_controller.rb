class LineItemsController < InheritedResources::Base
include CurrentCart

	def create
		debugger
		item = Item.find(params[:item_id])
		@line_item = @cart.line_items.build(item: item)
		redirect_to root_url
	end

  private

    def line_item_params
      params.require(:line_item).permit(:item_id, :cart_id)
    end

end
