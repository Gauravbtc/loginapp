class LoginController < ApplicationController

  def index
   @l=Login.new
 

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
    @l.password_confirmation=params[:password_confirmation]
 #@l.valid?

     


    if @l.save

       redirect_to login_test_path
    else
      puts "hello------------------------------"
      @mes=@l.errors.messages
      puts @mes
      render 'index'
    end
   
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
