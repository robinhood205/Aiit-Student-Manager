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

describe MibunsController do

  # This should return the minimal set of attributes required to create a valid
  # Mibun. As you add validations to Mibun, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "status" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MibunsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all mibuns as @mibuns" do
      mibun = Mibun.create! valid_attributes
      get :index, {}, valid_session
      assigns(:mibuns).should eq([mibun])
    end
  end

  describe "GET show" do
    it "assigns the requested mibun as @mibun" do
      mibun = Mibun.create! valid_attributes
      get :show, {:id => mibun.to_param}, valid_session
      assigns(:mibun).should eq(mibun)
    end
  end

  describe "GET new" do
    it "assigns a new mibun as @mibun" do
      get :new, {}, valid_session
      assigns(:mibun).should be_a_new(Mibun)
    end
  end

  describe "GET edit" do
    it "assigns the requested mibun as @mibun" do
      mibun = Mibun.create! valid_attributes
      get :edit, {:id => mibun.to_param}, valid_session
      assigns(:mibun).should eq(mibun)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mibun" do
        expect {
          post :create, {:mibun => valid_attributes}, valid_session
        }.to change(Mibun, :count).by(1)
      end

      it "assigns a newly created mibun as @mibun" do
        post :create, {:mibun => valid_attributes}, valid_session
        assigns(:mibun).should be_a(Mibun)
        assigns(:mibun).should be_persisted
      end

      it "redirects to the created mibun" do
        post :create, {:mibun => valid_attributes}, valid_session
        response.should redirect_to(Mibun.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mibun as @mibun" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mibun.any_instance.stub(:save).and_return(false)
        post :create, {:mibun => { "status" => "invalid value" }}, valid_session
        assigns(:mibun).should be_a_new(Mibun)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mibun.any_instance.stub(:save).and_return(false)
        post :create, {:mibun => { "status" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mibun" do
        mibun = Mibun.create! valid_attributes
        # Assuming there are no other mibuns in the database, this
        # specifies that the Mibun created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Mibun.any_instance.should_receive(:update_attributes).with({ "status" => "MyString" })
        put :update, {:id => mibun.to_param, :mibun => { "status" => "MyString" }}, valid_session
      end

      it "assigns the requested mibun as @mibun" do
        mibun = Mibun.create! valid_attributes
        put :update, {:id => mibun.to_param, :mibun => valid_attributes}, valid_session
        assigns(:mibun).should eq(mibun)
      end

      it "redirects to the mibun" do
        mibun = Mibun.create! valid_attributes
        put :update, {:id => mibun.to_param, :mibun => valid_attributes}, valid_session
        response.should redirect_to(mibun)
      end
    end

    describe "with invalid params" do
      it "assigns the mibun as @mibun" do
        mibun = Mibun.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mibun.any_instance.stub(:save).and_return(false)
        put :update, {:id => mibun.to_param, :mibun => { "status" => "invalid value" }}, valid_session
        assigns(:mibun).should eq(mibun)
      end

      it "re-renders the 'edit' template" do
        mibun = Mibun.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mibun.any_instance.stub(:save).and_return(false)
        put :update, {:id => mibun.to_param, :mibun => { "status" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mibun" do
      mibun = Mibun.create! valid_attributes
      expect {
        delete :destroy, {:id => mibun.to_param}, valid_session
      }.to change(Mibun, :count).by(-1)
    end

    it "redirects to the mibuns list" do
      mibun = Mibun.create! valid_attributes
      delete :destroy, {:id => mibun.to_param}, valid_session
      response.should redirect_to(mibuns_url)
    end
  end

end
