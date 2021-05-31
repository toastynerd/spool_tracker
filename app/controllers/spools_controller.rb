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
  end

  def update
    @spool = Spool.find(params[:id])

    if @spool.update(spool_params)
      redirect_to spools_path
    else
      render :edit
    end
  end

  def destroy
    @spool = Spool.find(params[:id])
    @spool.destroy

    redirect_to spools_path
  end

  private
  def spool_params
    params.require(:spool).permit(:rfid, :material, :manufacturer, :purchased)
  end
end
