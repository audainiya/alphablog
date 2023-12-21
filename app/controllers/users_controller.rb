class UsersController < ApplicationController
    def new
        @user =User.new
    end

    def create
        @user = User.new(set_params)
        if @user.save
            flash[:notice]="Welcome to alpha Blog #{@user.username}, You have successfully signed up."
            redirect_to articles_path
        else
            render :new, status: 422
        end
        
    end

    def set_params
        params.require(:user).permit(:username,:email,:password)
    end
end