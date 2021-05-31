class Api::V1::QuotesController < ApplicationController
    
    before_action :set_kind

    def index
        @quotes = @kind.quotes 
        render json: @quotes
        
    end

    def show
        @quote = Quote.find(params[:id])
        render json: @quote
    end


    def create
        @quote = @kind.quotes.new(quote_params)
        @quote.save 
        render json: @quote 
    end 

    
    private

    def set_kind
        @kind = Kind.find(params[:kind_id])
    end

    def quote_params
        params.require(:quote).permit(:content, :author, :kind_id, :description)
        
    end 
end
