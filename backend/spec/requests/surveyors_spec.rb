require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/surveyors", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Surveyor. As you add validations to Surveyor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Surveyor.create! valid_attributes
      get surveyors_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      surveyor = Surveyor.create! valid_attributes
      get surveyor_url(surveyor)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_surveyor_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      surveyor = Surveyor.create! valid_attributes
      get edit_surveyor_url(surveyor)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Surveyor" do
        expect {
          post surveyors_url, params: { surveyor: valid_attributes }
        }.to change(Surveyor, :count).by(1)
      end

      it "redirects to the created surveyor" do
        post surveyors_url, params: { surveyor: valid_attributes }
        expect(response).to redirect_to(surveyor_url(Surveyor.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Surveyor" do
        expect {
          post surveyors_url, params: { surveyor: invalid_attributes }
        }.to change(Surveyor, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post surveyors_url, params: { surveyor: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested surveyor" do
        surveyor = Surveyor.create! valid_attributes
        patch surveyor_url(surveyor), params: { surveyor: new_attributes }
        surveyor.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the surveyor" do
        surveyor = Surveyor.create! valid_attributes
        patch surveyor_url(surveyor), params: { surveyor: new_attributes }
        surveyor.reload
        expect(response).to redirect_to(surveyor_url(surveyor))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        surveyor = Surveyor.create! valid_attributes
        patch surveyor_url(surveyor), params: { surveyor: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested surveyor" do
      surveyor = Surveyor.create! valid_attributes
      expect {
        delete surveyor_url(surveyor)
      }.to change(Surveyor, :count).by(-1)
    end

    it "redirects to the surveyors list" do
      surveyor = Surveyor.create! valid_attributes
      delete surveyor_url(surveyor)
      expect(response).to redirect_to(surveyors_url)
    end
  end
end
