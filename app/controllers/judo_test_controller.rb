class JudoTestController < ApplicationController
  def index
    @judo_tests = JudoTest.all
    @judokas = Judoka.all
  end

  def show
    @judokas = Judoka.all
  end
end
