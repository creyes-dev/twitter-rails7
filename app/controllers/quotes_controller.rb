class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy ]

  # GET /quotes or /quotes.json
  def index
    @matches = Match.all.order(:round_id, :name)
    @quotes = Quote.all
  end

  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes or /quotes.json
  def create
    @quote = Quote.new(quote_params)
      if @quote.save
        redirect_to quotes_path, notice: "Quote was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  def update
      if @quote.update(quote_params)
        redirect_to quotes_path, notice: "Quote was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /quotes/1 or /quotes/1.json
  def destroy
    @quote.destroy
    redirect_to quotes_path, notice: "Quote was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:name_one, :name_two)
    end
end
