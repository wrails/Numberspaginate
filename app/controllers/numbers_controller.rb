class NumbersController < ApplicationController
  #before_action :set_number, only: [:show, :edit, :update, :destroy]

def index
  if params[:per_page].present?
    per_page = params[:per_page]
    @numbers = Number.paginate(page: params[:page], per_page:  per_page )
  else
    @numbers = Number.paginate(page: params[:page], per_page: 1000)
  end
end

def new
  @number = Number.new
end

def create
  @number = Number.new(number_params)
  respond_to do |format|
    if @number.save
      format.html { redirect_to @number, notice: 'Number was successfully created.' }
      format.json { render :show, status: :created, location: @number }
    else
      format.html { render :new }
      format.json { render json: @number.errors, status: :unprocessable_entity }
    end
  end
end

private
  def number_params
    params.require(:number).permit(:name, :name_in_word, :per_page)
  end
end
