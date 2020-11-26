class StatusesController < ApplicationController
  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.create(status_params)
    if @status.save
      redirect_to statuses_path, notice: "#{@status.name}を登録しました"
    else
      render :new
    end
  end

  private

    def status_params
      params.require(:status).permit(:name, :h, :a, :b, :c, :d, :s)
    end
end
