class LoginController < ApplicationController
  def index
  # 	uname=params[:username]
  #   pwd=params[:password]
  #   @l=Login.new
  #   @l.username=uname
  #   @l.password=pwd
  #   @l.save

  #  redirect_to login_test_path
  #  puts uname
  end

def create
uname=params[:username]
    pwd=params[:password]
    @l=Login.new
    @l.username=uname
    @l.password=pwd
    @l.save

   redirect_to login_test_path
   puts uname
 

end





 def test
end

def check
uname=params[:username]
	pwd=params[:password]

 	if Login.find_by(:username=>uname) and Login.find_by(:password=>pwd)
  	#redirect_to login_welcome_path
    render :welcome 
 	else
    render :index
    #redirect_to login_index_path
	end

end



end
