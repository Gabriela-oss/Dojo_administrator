class SenseisController < ApplicationController
 
  def show
    @senseis = Sensei.all
    @sensei = Sensei.find_by_uid!(params[:id])
  end

end
