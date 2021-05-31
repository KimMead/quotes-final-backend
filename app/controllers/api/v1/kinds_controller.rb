class Api::V1::KindsController < ApplicationController
    
    def index
        @kinds = Kind.all
        render json: @kinds
    end

    def create
        @kind = Kind.new(kind_params)
        if @kind.save 
            render json: @kind
        else 
            render json: {error: 'Error creating kind'}
        end
    end 

    def show
        @kind = Kind.find(params[:id])
        render json: @kind
    end

    def destroy
        @kind = Kind.find(params[:id])
        @kind.destroy 
    end 

    def edit

    end 

    private

    def kind_params
        params.require(:kind).permit(:name)
        
    end 
end
