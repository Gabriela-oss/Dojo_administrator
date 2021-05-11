class SenseisController < ApplicationController
  before_action :authenticate_judoka!

  def index 
    @senseis = current_judoka.courses.map{|course| course.senseis}
    @senseis.flatten!
  end

  def show
    @sensei = Sensei.find(params[:id])
  end

end
