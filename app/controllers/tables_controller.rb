class TablesController < ApplicationController
  def index
    @size = nil
    @multiplication_table = false
  end

  def generate
    @size = params[:size].to_i
    if @size.between?(1, 12)
      @multiplication_table = true
    else
      @multiplication_table = false
      flash[:alert] = "Please enter a number between 1 and 12."
    end
    render :index
  end
end