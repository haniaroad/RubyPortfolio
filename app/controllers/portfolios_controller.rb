class PortfoliosController < ApplicationController

    def index
        @portfolio = Portfolio.all
    end

    def new
        @portfolio = Portfolio.new
    end

    def create

        @portfolio = Portfolio.create(params.require(:portfolio).permit(:title, :subtitle, :body))

        respond_to do |format|
            if @portfolio.save
              format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
              format.json { render :show, status: :created, location: @blog }
            else
              format.html { render :new }
              format.json { render json: @blog.errors, status: :unprocessable_entity }
            end
          end

    end


end
