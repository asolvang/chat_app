require "rails_helper"

RSpec.describe MessageGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/message_groups").to route_to("message_groups#index")
    end

    it "routes to #new" do
      expect(get: "/message_groups/new").to route_to("message_groups#new")
    end

    it "routes to #show" do
      expect(get: "/message_groups/1").to route_to("message_groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/message_groups/1/edit").to route_to("message_groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/message_groups").to route_to("message_groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/message_groups/1").to route_to("message_groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/message_groups/1").to route_to("message_groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/message_groups/1").to route_to("message_groups#destroy", id: "1")
    end
  end
end
