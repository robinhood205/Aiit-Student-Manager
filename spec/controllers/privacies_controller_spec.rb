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

describe PrivaciesController do

  # This should return the minimal set of attributes required to create a valid
  # Privacy. As you add validations to Privacy, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "aiit_member_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PrivaciesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all privacies as @privacies" do
      privacy = Privacy.create! valid_attributes
      get :index, {}, valid_session
      assigns(:privacies).should eq([privacy])
    end
  end

  describe "GET show" do
    it "assigns the requested privacy as @privacy" do
      privacy = Privacy.create! valid_attributes
      get :show, {:id => privacy.to_param}, valid_session
      assigns(:privacy).should eq(privacy)
    end
  end

  describe "GET new" do
    it "assigns a new privacy as @privacy" do
      get :new, {}, valid_session
      assigns(:privacy).should be_a_new(Privacy)
    end
  end

  describe "GET edit" do
    it "assigns the requested privacy as @privacy" do
      privacy = Privacy.create! valid_attributes
      get :edit, {:id => privacy.to_param}, valid_session
      assigns(:privacy).should eq(privacy)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Privacy" do
        expect {
          post :create, {:privacy => valid_attributes}, valid_session
        }.to change(Privacy, :count).by(1)
      end

      it "assigns a newly created privacy as @privacy" do
        post :create, {:privacy => valid_attributes}, valid_session
        assigns(:privacy).should be_a(Privacy)
        assigns(:privacy).should be_persisted
      end

      it "redirects to the created privacy" do
        post :create, {:privacy => valid_attributes}, valid_session
        response.should redirect_to(Privacy.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved privacy as @privacy" do
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        post :create, {:privacy => { "aiit_member_id" => "invalid value" }}, valid_session
        assigns(:privacy).should be_a_new(Privacy)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        post :create, {:privacy => { "aiit_member_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested privacy" do
        privacy = Privacy.create! valid_attributes
        # Assuming there are no other privacies in the database, this
        # specifies that the Privacy created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Privacy.any_instance.should_receive(:update_attributes).with({ "aiit_member_id" => "1" })
        put :update, {:id => privacy.to_param, :privacy => { "aiit_member_id" => "1" }}, valid_session
      end

      it "assigns the requested privacy as @privacy" do
        privacy = Privacy.create! valid_attributes
        put :update, {:id => privacy.to_param, :privacy => valid_attributes}, valid_session
        assigns(:privacy).should eq(privacy)
      end

      it "redirects to the privacy" do
        privacy = Privacy.create! valid_attributes
        put :update, {:id => privacy.to_param, :privacy => valid_attributes}, valid_session
        response.should redirect_to(privacy)
      end
    end

    describe "with invalid params" do
      it "assigns the privacy as @privacy" do
        privacy = Privacy.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        put :update, {:id => privacy.to_param, :privacy => { "aiit_member_id" => "invalid value" }}, valid_session
        assigns(:privacy).should eq(privacy)
      end

      it "re-renders the 'edit' template" do
        privacy = Privacy.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        put :update, {:id => privacy.to_param, :privacy => { "aiit_member_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested privacy" do
      privacy = Privacy.create! valid_attributes
      expect {
        delete :destroy, {:id => privacy.to_param}, valid_session
      }.to change(Privacy, :count).by(-1)
    end

    it "redirects to the privacies list" do
      privacy = Privacy.create! valid_attributes
      delete :destroy, {:id => privacy.to_param}, valid_session
      response.should redirect_to(privacies_url)
    end
  end

end
