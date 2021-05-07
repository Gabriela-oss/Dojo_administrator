class JudokasController < ApplicationController
  def index
    @judokas = Judoka.all
  end
end