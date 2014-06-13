class FetchesController < InheritedResources::Base

	def show
    # For URL like /orders/1/items
    # Get the order with id=1
    @fetch = Fetch.find(params[:id])

    # Access all items for that order
    @tasks = @fetch.tasks
  end
end
