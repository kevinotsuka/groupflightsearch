class StylishPortfoliosController < ApplicationController
  layout "stylish_portfolio"

  def index
  end
   def results
    @user = User.find(params[:id])
  end
end
