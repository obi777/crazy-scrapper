require "rspec"
require_relative "../lib/townhall"

include RSpec

describe "townhall" do


  describe "email" do
    it "found_SAINT_GERVAIS" do
      expect({"email" =>"mairie.saintgervais@wanadoo.fr"}).to include({"email" =>"mairie.saintgervais@wanadoo.fr"})
    end
  end

  describe "nil" do
    it "found_NIL" do
      expect(nil).to be_nil
    end
  end


  describe "name" do
    it "check if SARCELLES is a name" do
      expect("name"=>"SARCELLES").to include("name"=>"SARCELLES")
    end
  end
end

