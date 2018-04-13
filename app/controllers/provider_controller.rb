class ProviderController < ApplicationController

    def list
        @providers = Provider.all
    end

    def show
        @provider = Provider.find(params[:id])
    end
end
