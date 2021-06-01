class StaticController < ApplicationController
  def index
    if current_user 
      redirect_to spools_path
    end
  end
end
