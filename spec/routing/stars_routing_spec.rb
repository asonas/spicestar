require "rails_helper"

RSpec.describe StarsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stars").to route_to("stars#index")
    end

    it "routes to #new" do
      expect(:get => "/stars/new").to route_to("stars#new")
    end

    it "routes to #show" do
      expect(:get => "/stars/1").to route_to("stars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stars/1/edit").to route_to("stars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stars").to route_to("stars#create")
    end

    it "routes to #update" do
      expect(:put => "/stars/1").to route_to("stars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stars/1").to route_to("stars#destroy", :id => "1")
    end

  end
end
