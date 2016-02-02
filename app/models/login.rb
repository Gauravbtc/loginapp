class Login < ActiveRecord::Base
   puts "------------------------------------------------------------->#{self.inspect}" 

	validates :username, presence:true 
	validates :password, presence:true
	validates :password, confirmation: true
    validates :password_confirmation, presence: true
    

    
end
