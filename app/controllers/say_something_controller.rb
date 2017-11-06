class SaySomethingController < ApplicationController
  def index
    redirect_to NiceThing.random
  rescue ActionController::ActionControllerError
    redirect_to root_path
  end
end
