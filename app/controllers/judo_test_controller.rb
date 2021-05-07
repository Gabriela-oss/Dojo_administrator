class JudoTestController < ApplicationController
  def index
    @judo_tests = JudoTest.all
    @judokas = Judoka.all
  end

  def show
    @judo_test = JudoTest.find(params[:id])
    @judokas = Judoka.all
  end
end
