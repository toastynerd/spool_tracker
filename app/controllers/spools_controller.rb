class SpoolsController < ApplicationController
  before_action :authenticate_user!

  def index
    @spools = current_user.spools
  end

  def new
    @spool = current_user.spools.build
  end

  def create
    @spool = current_user.spools.build(spool_params)
    if @spool.save
      redirect_to spools_path
    else
      render :new
    end
  end

  def edit
    @spool = Spool.find(params[:id])
    unauthorized unless @spool.is_owner?(current_user)
  end

  def update
    @spool = Spool.find(params[:id])
    if @spool.is_owner?(current_user) 
      if @spool.update(spool_params)
        redirect_to spools_path
      else
        render :edit
      end
    else
      unauthorized
    end
  end

  def destroy
    @spool = Spool.find(params[:id])
    if @spool.is_owner?(current_user)
      @spool.destroy

      redirect_to spools_path
    else
      unauthorized
    end
  end

  private
  def spool_params
    params.require(:spool).permit(:rfid, :material, :manufacturer, :purchased)
  end

  def unauthorized
    render file: "public/401.html", status: :unauthorized
  end
end
