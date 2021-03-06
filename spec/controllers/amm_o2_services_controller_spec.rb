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

describe AmmO2ServicesController do

  # This should return the minimal set of attributes required to create a valid
  # AmmO2Service. As you add validations to AmmO2Service, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "ac_type" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AmmO2ServicesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all amm_o2_services as @amm_o2_services" do
      amm_o2_service = AmmO2Service.create! valid_attributes
      get :index, {}, valid_session
      assigns(:amm_o2_services).should eq([amm_o2_service])
    end
  end

  describe "GET show" do
    it "assigns the requested amm_o2_service as @amm_o2_service" do
      amm_o2_service = AmmO2Service.create! valid_attributes
      get :show, {:id => amm_o2_service.to_param}, valid_session
      assigns(:amm_o2_service).should eq(amm_o2_service)
    end
  end

  describe "GET new" do
    it "assigns a new amm_o2_service as @amm_o2_service" do
      get :new, {}, valid_session
      assigns(:amm_o2_service).should be_a_new(AmmO2Service)
    end
  end

  describe "GET edit" do
    it "assigns the requested amm_o2_service as @amm_o2_service" do
      amm_o2_service = AmmO2Service.create! valid_attributes
      get :edit, {:id => amm_o2_service.to_param}, valid_session
      assigns(:amm_o2_service).should eq(amm_o2_service)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AmmO2Service" do
        expect {
          post :create, {:amm_o2_service => valid_attributes}, valid_session
        }.to change(AmmO2Service, :count).by(1)
      end

      it "assigns a newly created amm_o2_service as @amm_o2_service" do
        post :create, {:amm_o2_service => valid_attributes}, valid_session
        assigns(:amm_o2_service).should be_a(AmmO2Service)
        assigns(:amm_o2_service).should be_persisted
      end

      it "redirects to the created amm_o2_service" do
        post :create, {:amm_o2_service => valid_attributes}, valid_session
        response.should redirect_to(AmmO2Service.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved amm_o2_service as @amm_o2_service" do
        # Trigger the behavior that occurs when invalid params are submitted
        AmmO2Service.any_instance.stub(:save).and_return(false)
        post :create, {:amm_o2_service => { "ac_type" => "invalid value" }}, valid_session
        assigns(:amm_o2_service).should be_a_new(AmmO2Service)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AmmO2Service.any_instance.stub(:save).and_return(false)
        post :create, {:amm_o2_service => { "ac_type" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested amm_o2_service" do
        amm_o2_service = AmmO2Service.create! valid_attributes
        # Assuming there are no other amm_o2_services in the database, this
        # specifies that the AmmO2Service created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AmmO2Service.any_instance.should_receive(:update).with({ "ac_type" => "MyString" })
        put :update, {:id => amm_o2_service.to_param, :amm_o2_service => { "ac_type" => "MyString" }}, valid_session
      end

      it "assigns the requested amm_o2_service as @amm_o2_service" do
        amm_o2_service = AmmO2Service.create! valid_attributes
        put :update, {:id => amm_o2_service.to_param, :amm_o2_service => valid_attributes}, valid_session
        assigns(:amm_o2_service).should eq(amm_o2_service)
      end

      it "redirects to the amm_o2_service" do
        amm_o2_service = AmmO2Service.create! valid_attributes
        put :update, {:id => amm_o2_service.to_param, :amm_o2_service => valid_attributes}, valid_session
        response.should redirect_to(amm_o2_service)
      end
    end

    describe "with invalid params" do
      it "assigns the amm_o2_service as @amm_o2_service" do
        amm_o2_service = AmmO2Service.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AmmO2Service.any_instance.stub(:save).and_return(false)
        put :update, {:id => amm_o2_service.to_param, :amm_o2_service => { "ac_type" => "invalid value" }}, valid_session
        assigns(:amm_o2_service).should eq(amm_o2_service)
      end

      it "re-renders the 'edit' template" do
        amm_o2_service = AmmO2Service.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AmmO2Service.any_instance.stub(:save).and_return(false)
        put :update, {:id => amm_o2_service.to_param, :amm_o2_service => { "ac_type" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested amm_o2_service" do
      amm_o2_service = AmmO2Service.create! valid_attributes
      expect {
        delete :destroy, {:id => amm_o2_service.to_param}, valid_session
      }.to change(AmmO2Service, :count).by(-1)
    end

    it "redirects to the amm_o2_services list" do
      amm_o2_service = AmmO2Service.create! valid_attributes
      delete :destroy, {:id => amm_o2_service.to_param}, valid_session
      response.should redirect_to(amm_o2_services_url)
    end
  end

end
