class Api::V1::QuotesController < ApplicationController
    
    before_action :set_kind

    def index
        @quotes = Quote.all
        render json: @quotes
    end

    def create
        @quote = @kind.quotes.new(quote_params)
        @quote.save 
        render json: @kind 
    end 

    def show
        @quote = Quote.find(params[:id])
        render json: @quote
    end

    def destroy
        @quote = Quote.find(params["id"])
        @kind = Kind.find(@quote.kind_id)
        @quote.destroy 
        render json: @kind
    end 

    def update
        @quote = Quote.find(params[:id])
        @quote.update(content: params["content"])
        @quote.update(author: params["author"])
        @quote.update(description: params["description"])
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
