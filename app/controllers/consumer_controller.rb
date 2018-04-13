class ConsumerController < ApplicationController
    #before_action :set_status, only: [:show, :edit, :update, :destroy]

    def list
        @consumers = Consumer.all
    end

    def show
        @consumer = Consumer.find(Params[:id])
    end

    def create
        @consumer = Consumer.new(consumer_params)
        if @consumer.save
            render @customer, status: :ok
        else
            render json: {error: "Lol"}, status: 301
        end
    end

    private

    def consumer_params
        params.permit(:first_name, :last_name, :user_name, :password)
    end
end
