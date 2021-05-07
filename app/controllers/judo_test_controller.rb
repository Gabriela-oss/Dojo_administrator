class JudoTestController < ApplicationController
  def index
    @judo_tests = JudoTest.all
  end

  def show
  end
end
