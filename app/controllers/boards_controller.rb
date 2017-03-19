class BoardsController < ApplicationController
  
  def index
    @boards = Board.all
  end

  def new
  end

  def create
    board = Board.new(
      model: params[:form_model],
      length: params[:form_length],
      style: params[:form_style])
    board.save
    redirect_to "/boards"
  end

  def show
    board_id = params[:id]  
    @boards = Board.find_by(id: board_id)
  end


end
