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

    def index
        @testapp = Testapp.all
    end

    def destroy
        @testapp = Testapp.find(params[:id])
        if @testapp.destroy
            flash[:notice] = "Selected Data has been deleted successfully"
            redirect_to testapps_path
        else
            render 'index'
            flash[:notice] = "There is an error while deleting the data"
        end
    end

    private

    def testapp_params
        params.require(:testapp).permit(:name, :employeeid, :project)
    end
end