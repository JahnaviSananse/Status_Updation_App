class StatusesController < ApplicationController
  def dashboard; end

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
    @tasks = @status.tasks.build
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      StatusMailer.with(status: @status).new_status_email.deliver_later
      redirect_to status_path(@status)
    else
      render action: :new
    end
  end

  def edit; end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      redirect_to @status
    else
      render 'edit'
    end
  end

  def destroy
    Status.find(params[:id]).destroy
    redirect_to root_path
  end

  def show
    @status = Status.find(params[:id])
    @tasks = @status.tasks
  end

  private

  def status_params
    params.require(:status).permit(:date, tasks_attributes: %i[id name pr hours _destroy])
  end
end
