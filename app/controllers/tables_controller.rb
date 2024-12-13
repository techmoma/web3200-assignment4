class TablesController < ApplicationController
  def index
    @multiplication_table = false
  end

  def generate
    @size = params[:size].to_i
    puts "Received size: #{@size}"

    # Validate input size (between 1 and 12)
    if @size.between?(1, 12)

      @multiplication_table = true
      render :index
    else

      flash[:alert] = "Please enter a number between 1 and 12."
      render :index 
    end
  end
end
