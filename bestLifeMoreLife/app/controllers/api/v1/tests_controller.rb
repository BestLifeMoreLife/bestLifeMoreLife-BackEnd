class Api::V1::TestsController < ApplicationController

  def index
    @tests = Test.all
    render json: @tests
  end
end
