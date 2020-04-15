class PhilosopherListsController < ApplicationController 
    def index 
        @philosopher_lists = PhilosopherList.all 
        render json: @philosopher_lists, include: [:user, :philosopher]
    end 

    def create
        @philosopher_list = PhilosopherList.find_by(
            user_id: params[:user_id],
            philosopher_id: params[:philosopher_id]
        ) 

        if !@philosopher_list
            @philosopher_list = PhilosopherList.create(
                user_id: params[:user_id],
                philosopher_id: params[:philosopher_id]
            )
        end

        redirect_to "http://localhost:3001/profile.html?user_id=#{params[:user_id]}"
    end 

    def destroy
        @philosopher_list = PhilosopherList.find(
            params[:id]
        ) 
        @philosopher_list.destroy 
        render json: {:message => "Has been deleted!"}
    end
   
end
