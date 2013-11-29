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

describe AmmsController do

  # This should return the minimal set of attributes required to create a valid
  # Amm. As you add validations to Amm, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "ac_type" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AmmsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all amms as @amms" do
      amm = Amm.create! valid_attributes
      get :index, {}, valid_session
      assigns(:amms).should eq([amm])
    end
  end

  describe "GET show" do
    it "assigns the requested amm as @amm" do
      amm = Amm.create! valid_attributes
      get :show, {:id => amm.to_param}, valid_session
      assigns(:amm).should eq(amm)
    end
  end

  describe "GET new" do
    it "assigns a new amm as @amm" do
      get :new, {}, valid_session
      assigns(:amm).should be_a_new(Amm)
    end
  end

  describe "GET edit" do
    it "assigns the requested amm as @amm" do
      amm = Amm.create! valid_attributes
      get :edit, {:id => amm.to_param}, valid_session
      assigns(:amm).should eq(amm)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Amm" do
        expect {
          post :create, {:amm => valid_attributes}, valid_session
        }.to change(Amm, :count).by(1)
      end

      it "assigns a newly created amm as @amm" do
        post :create, {:amm => valid_attributes}, valid_session
        assigns(:amm).should be_a(Amm)
        assigns(:amm).should be_persisted
      end

      it "redirects to the created amm" do
        post :create, {:amm => valid_attributes}, valid_session
        response.should redirect_to(Amm.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved amm as @amm" do
        # Trigger the behavior that occurs when invalid params are submitted
        Amm.any_instance.stub(:save).and_return(false)
        post :create, {:amm => { "ac_type" => "invalid value" }}, valid_session
        assigns(:amm).should be_a_new(Amm)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Amm.any_instance.stub(:save).and_return(false)
        post :create, {:amm => { "ac_type" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested amm" do
        amm = Amm.create! valid_attributes
        # Assuming there are no other amms in the database, this
        # specifies that the Amm created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Amm.any_instance.should_receive(:update).with({ "ac_type" => "MyString" })
        put :update, {:id => amm.to_param, :amm => { "ac_type" => "MyString" }}, valid_session
      end

      it "assigns the requested amm as @amm" do
        amm = Amm.create! valid_attributes
        put :update, {:id => amm.to_param, :amm => valid_attributes}, valid_session
        assigns(:amm).should eq(amm)
      end

      it "redirects to the amm" do
        amm = Amm.create! valid_attributes
        put :update, {:id => amm.to_param, :amm => valid_attributes}, valid_session
        response.should redirect_to(amm)
      end
    end

    describe "with invalid params" do
      it "assigns the amm as @amm" do
        amm = Amm.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Amm.any_instance.stub(:save).and_return(false)
        put :update, {:id => amm.to_param, :amm => { "ac_type" => "invalid value" }}, valid_session
        assigns(:amm).should eq(amm)
      end

      it "re-renders the 'edit' template" do
        amm = Amm.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Amm.any_instance.stub(:save).and_return(false)
        put :update, {:id => amm.to_param, :amm => { "ac_type" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested amm" do
      amm = Amm.create! valid_attributes
      expect {
        delete :destroy, {:id => amm.to_param}, valid_session
      }.to change(Amm, :count).by(-1)
    end

    it "redirects to the amms list" do
      amm = Amm.create! valid_attributes
      delete :destroy, {:id => amm.to_param}, valid_session
      response.should redirect_to(amms_url)
    end
  end

end