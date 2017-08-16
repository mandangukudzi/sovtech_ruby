#String.instance_methods
#I will be using these in the application (rails)
class PredictingEmailAddresses
   attr_accessor :advisors_name, :domain_name, :first_name, :last_name, :email_address
		
	def initialize (advisors_name, domain_name)
		@advisors_name =advisors_name.downcase
		@domain_name = domain_name
		@first_name = @advisors_name.rpartition(" ").first.downcase
		@last_name = @advisors_name.rpartition(" ").last.downcase
		@email_address = "@".concat(domain_name).downcase	 
	end    
   
    #Strings are returned by the methods by default
  def first_name_dot_last_name 
		@first_name.concat('.').@last_name.concat(@email_address)
    #@advisors_name.downcase.gsub(/ /, '.').concat(@email_address).downcase
  end
	
  def first_name_dot_last_initial 
		@first_name.concat(".").concat(@last_name[0]).concat(@email_address)	
  end
   
	def first_initial_dot_last_name 
    @first_name[0].concat(".").concat(@last_name).concat(@email_address)
	end
	
	def first_initial_dot_last_initial 
    @first_name[0].concat(".").concat(@last_name[0]).concat(@email_address)
	end
	
	def print_out
		puts first_name_dot_last_name
		puts first_name_dot_last_initial
		puts first_initial_dot_last_name
		puts first_initial_dot_last_initial
	end
	
		
	PredictingEmailAddresses.new("John Ferguson", "sovtech.com").print_out
	puts "**********************************************************"
	PredictingEmailAddresses.new("Peter Wong", "sovtech.com").print_out
	puts "**********************************************************"
	PredictingEmailAddresses.new("Steve Wozniak", "apple.com").print_out
	puts "**********************************************************"
	PredictingEmailAddresses.new("Barack Obama", "whitehouse.gov").print_out
	puts "**********************************************************"	

end
