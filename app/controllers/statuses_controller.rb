class StatusesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @q = Status.ransack(params[:q])
    @statuses = @q.result
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

  def question_s
    @status = Status.find(rand(Status.count) + 1)
    @answer_s = @status.s
    # numbers = [1,2,3,4,5]
    # new_numbers = numbers.map { |n| n*10 } 
  end

  private

    def status_params
      params.require(:status).permit(:name, :h, :a, :b, :c, :d, :s)
    end
end
