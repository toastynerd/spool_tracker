class PrintsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_spools

  def index
    @prints = current_user.prints
  end

  def new
    @print = current_user.prints.build
  end

  def create
    @print = current_user.prints.build(print_params)
    if @print.save
      redirect_to prints_path
    else
      render :new
    end
  end

  def edit
    @print = Print.find(params[:id])
    unauthorized unless @print.is_owner?(current_user)
  end

  def update
    @print = Print.find(params[:id])
    if @print.is_owner?(current_user)
      if @print.update(print_params)
        redirect_to prints_path
      else
        render :edit
      end
    else
      unauthorized
    end
  end

  def destroy
    @print = Print.find(params[:id])
    if @print.is_owner?(current_user)
      @print.destroy

      redirect_to prints_path
    else
      unauthorized
    end
  end

  private
  def print_params
    params.require(:print).permit(:spool_id, :settings, :file, :success, :description, :print_name, :print_notes)
  end

  def get_spools
    @spools = current_user.spools
  end

  def unauthorized
    render file: "public/401.html", status: :unauthorized
  end
end
