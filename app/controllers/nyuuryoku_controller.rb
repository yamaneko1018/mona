class NyuuryokuController < ApplicationController
  include SessionAction
  before_action :log_dashimasu  

  def hyouji
    @msg = "こんにちは"
    render :special
  end
  
  def input
    @test = Nyuuryoku.new
    flash[:ftest] = "ftest"
    cookies[:hoge] = {:value => "value", :expires => 30.days.from_now}
    @msg = session[:test_input]
  end

  def kakunin
    if hyouji_params[:test_input] == "test"
      redirect_to "/nyuuryoku/input"
      return false
    end
    @msg = hyouji_params[:test_input]
    session[:test_input] = @msg     
    @fsessiontest = flash[:ftest]
    Rails.logger.debug "-------"
    logger.debug flash[:ftest]
    Rails.logger.debug "-------"
    @test = cookies[:hoge]
  end
    
   def practice
   end  

  private
    def hyouji_params
      params.require(:nyuuryoku).permit(:test_input)
    end
end
