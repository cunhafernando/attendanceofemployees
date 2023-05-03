class RegisterController < ApplicationController
  skip_before_action :authorized, only: [:index, :index2]
  before_action :timesheet
  def index
  end

  def timesheet
    
  end
end
