require "rails_helper"
require "spec_helper"

RSpec.describe PetsController, :type => :controller do
	describe "GET #index" do
   		it "responds successfully with an HTTP 200 status code" do
      		get :index
      		expect(response).to be_success
      		expect(response).to have_http_status(200)
    	end

    	# it "assigns @pets" do
     #  		team = Pets.create
     #  		get :index
     # 		expect(assigns(:pets)).to eq([pet])
    	# end
	end

	# describe "DELETE #destroy" do
	# 	it "deletes pet from DB successfully" do
	# 		expect { Pet.count }.to change.by(-1)
	# 	end
	# end
	
end