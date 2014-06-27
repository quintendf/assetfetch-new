class FetchesController < InheritedResources::Base

	def show
    # For URL like /orders/1/items
    # Get the order with id=1
    @fetch = Fetch.find(params[:id])

    # Access all items for that order
    @tasks = @fetch.tasks
    
  end

  def create
  @fetch = Fetch.new(params[:fetch])
  @user = User.find(@fetch.user_id)

  respond_to do |format|
    if @fetch.save
    	puts "test put"
    	puts @fetch.recipient
      FetchesMailer.fetch_sent(@fetch, @user).deliver

      format.html { redirect_to(@fetch, :notice => 'User was successfully created.') }
      format.xml  { render :xml => @fetch, :status => :created, :location => @fetch }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @fetch.errors, :status => :unprocessable_entity }
    end
  end
end
end
