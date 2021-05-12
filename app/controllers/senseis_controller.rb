class SenseisController < ApplicationController
  before_action :authenticate_judoka!

  def index 
    @senseis = Sensei.all
  end

  def show
    @judokas = Judoka.all
    @sensei = Sensei.find(params[:id])
  end

end
