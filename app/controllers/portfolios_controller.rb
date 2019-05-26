class PortfoliosController < ApplicationController

    def index
        @portfolio = Portfolio.all
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

    def new
        @portfolio = Portfolio.new
    end


    def edit
        @portfolio = Portfolio.find(params[:id])
    end

    def update
        @portfolio = Portfolio.find(params[:id])

        respond_to do |format|
            if @portfolio.update(params.require(:portfolio).permit(:title, :subtitle, :body))
              format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully edited.' }
            else
              format.html { render :edit }
            end
          end
    
    end

    def show
        @portfolio = Portfolio.find(params[:id])

    end

    def destroy
        @portfolio = Portfolio.destroy(params[:id])

        @portfolio.destroy
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
        end

    end

end


