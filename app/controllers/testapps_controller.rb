class TestappsController < ApplicationController
    def new
        @testapp = Testapp.new
    end

    def create
        @testapp = Testapp.new(testapp_params)
        if @testapp.save
            flash[:notice] = "The data has been saved successfully"
            redirect_to testapp_path(@testapp)
        else
            render 'new'
        end
    end
    
    def show
        @testapp = Testapp.find(params[:id])
    end

    def edit
        @testapp = Testapp.find(params[:id])
    end

    def update
        @testapp =Testapp.find(params[:id])
        if @testapp.update(testapp_params)
            flash[:notice] = "Data has been updated"
            redirect_to testapp_path(@testapp)
        else
            render 'edit'
        end
    end

    private

    def testapp_params
        params.require(:testapp).permit(:name, :employeeid, :project)
    end
end