require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AircraftDocumentsController do

  # This should return the minimal set of attributes required to create a valid
  # AircraftDocument. As you add validations to AircraftDocument, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "operator" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AircraftDocumentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all aircraft_documents as @aircraft_documents" do
      aircraft_document = AircraftDocument.create! valid_attributes
      get :index, {}, valid_session
      assigns(:aircraft_documents).should eq([aircraft_document])
    end
  end

  describe "GET show" do
    it "assigns the requested aircraft_document as @aircraft_document" do
      aircraft_document = AircraftDocument.create! valid_attributes
      get :show, {:id => aircraft_document.to_param}, valid_session
      assigns(:aircraft_document).should eq(aircraft_document)
    end
  end

  describe "GET new" do
    it "assigns a new aircraft_document as @aircraft_document" do
      get :new, {}, valid_session
      assigns(:aircraft_document).should be_a_new(AircraftDocument)
    end
  end

  describe "GET edit" do
    it "assigns the requested aircraft_document as @aircraft_document" do
      aircraft_document = AircraftDocument.create! valid_attributes
      get :edit, {:id => aircraft_document.to_param}, valid_session
      assigns(:aircraft_document).should eq(aircraft_document)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AircraftDocument" do
        expect {
          post :create, {:aircraft_document => valid_attributes}, valid_session
        }.to change(AircraftDocument, :count).by(1)
      end

      it "assigns a newly created aircraft_document as @aircraft_document" do
        post :create, {:aircraft_document => valid_attributes}, valid_session
        assigns(:aircraft_document).should be_a(AircraftDocument)
        assigns(:aircraft_document).should be_persisted
      end

      it "redirects to the created aircraft_document" do
        post :create, {:aircraft_document => valid_attributes}, valid_session
        response.should redirect_to(AircraftDocument.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved aircraft_document as @aircraft_document" do
        # Trigger the behavior that occurs when invalid params are submitted
        AircraftDocument.any_instance.stub(:save).and_return(false)
        post :create, {:aircraft_document => { "operator" => "invalid value" }}, valid_session
        assigns(:aircraft_document).should be_a_new(AircraftDocument)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AircraftDocument.any_instance.stub(:save).and_return(false)
        post :create, {:aircraft_document => { "operator" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested aircraft_document" do
        aircraft_document = AircraftDocument.create! valid_attributes
        # Assuming there are no other aircraft_documents in the database, this
        # specifies that the AircraftDocument created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AircraftDocument.any_instance.should_receive(:update).with({ "operator" => "" })
        put :update, {:id => aircraft_document.to_param, :aircraft_document => { "operator" => "" }}, valid_session
      end

      it "assigns the requested aircraft_document as @aircraft_document" do
        aircraft_document = AircraftDocument.create! valid_attributes
        put :update, {:id => aircraft_document.to_param, :aircraft_document => valid_attributes}, valid_session
        assigns(:aircraft_document).should eq(aircraft_document)
      end

      it "redirects to the aircraft_document" do
        aircraft_document = AircraftDocument.create! valid_attributes
        put :update, {:id => aircraft_document.to_param, :aircraft_document => valid_attributes}, valid_session
        response.should redirect_to(aircraft_document)
      end
    end

    describe "with invalid params" do
      it "assigns the aircraft_document as @aircraft_document" do
        aircraft_document = AircraftDocument.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AircraftDocument.any_instance.stub(:save).and_return(false)
        put :update, {:id => aircraft_document.to_param, :aircraft_document => { "operator" => "invalid value" }}, valid_session
        assigns(:aircraft_document).should eq(aircraft_document)
      end

      it "re-renders the 'edit' template" do
        aircraft_document = AircraftDocument.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AircraftDocument.any_instance.stub(:save).and_return(false)
        put :update, {:id => aircraft_document.to_param, :aircraft_document => { "operator" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested aircraft_document" do
      aircraft_document = AircraftDocument.create! valid_attributes
      expect {
        delete :destroy, {:id => aircraft_document.to_param}, valid_session
      }.to change(AircraftDocument, :count).by(-1)
    end

    it "redirects to the aircraft_documents list" do
      aircraft_document = AircraftDocument.create! valid_attributes
      delete :destroy, {:id => aircraft_document.to_param}, valid_session
      response.should redirect_to(aircraft_documents_url)
    end
  end

end