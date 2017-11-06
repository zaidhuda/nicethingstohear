class InverseColorController < ApplicationController
  def index
    if session[:theme] == 'dark'
      session[:theme] = 'light'
    else
      session[:theme] = 'dark'
    end
    redirect_to :back
  end
end
