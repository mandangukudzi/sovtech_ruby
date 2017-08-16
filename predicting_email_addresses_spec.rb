require 'spec_helper'
require 'predicting_email_addresses'

describe PredictingEmailAddresses do

before (:each) do
	@advisors_name = "John Ferguson"
	@domain_name = "sovtech.com"
  @email_instance = PredictingEmailAddresses.new(@advisors_name, @domain_name)
end

	it "#first_name_dot_last_name" do
 #"should return the first and last name in full for the domain provided" 
    @email_instance.first_name_dot_last_name.should eql "john.ferguson@sovtech.com"
	end

	it "#first_name_dot_last_initial" do
    @email_instance.first_name_dot_last_initial.should eql "john.f@sovtech.com"
	end

  it "#first_initial_dot_last_name" do
    @email_instance.first_initial_dot_last_name.should eql "j.ferguson@sovtech.com"
	end

  it "#first_initial_dot_last_initial" do
    @email_instance.first_initial_dot_last_initial.should eql  "j.f@sovtech.com"
	end
end
