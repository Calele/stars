require 'spec_helper'

describe FirstController do

  describe "GET 'tabs'" do
    it "returns http success" do
      get 'tabs'
      response.should be_success
    end
  end

  describe "GET 'tables'" do
    it "returns http success" do
      get 'tables'
      response.should be_success
    end
  end

end
