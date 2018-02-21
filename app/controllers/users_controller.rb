class UsersController < ApplicationController
 
  def new
  
  end
  
  def create
    if user = User.create(name: params[:users][:name], phone_no: params[:users][:phone_no], email: params[:users][:email], password: params[:users][:passwoord])  
      redirect_to show_user_path(id: user.id)
    else
     render 'new'
    end
  end
  
 def index
 	@users = User.all
 end

 def show
 	@user = User.find(params[:id])
 end
 
 def edit
 	 @user = User.find(params[:id])
 end

  def update
	   @user =User.find(params[:id])
	   if	@user.update(name: params[:name], phone_no: params[:phone_no], email: params[:email], password: params[:password])
	    redirect_to show_user_path(id: @user.id)
	   else
	 	   render 'edit'
	   end
  end 

  def destroy
  	@user =User.find(params[:id])
  	if @user.destroy
  		redirect_to users_index_path
  	end
  end
end