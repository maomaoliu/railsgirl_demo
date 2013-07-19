require 'spec_helper'

describe EmployeesController do
  fixtures :employees

  %w{index new}.each do |page|
    describe "GET ##{page}" do
      it "responds successfully with an HTTP 200 status code for page #{page}" do
        get page.to_sym

        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "renders the #{page} template" do
        get page.to_sym

        expect(response).to render_template(page)
      end
    end
  end

  %w{show edit}.each do |page|
    describe "GET ##{page}" do

      before(:each) do
        @id = Employee.first.id
      end

      it "responds successfully with an HTTP 200 status code for page #{page}" do
        get page.to_sym, id: @id

        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "renders the #{page} template" do
        get page.to_sym, id: @id

        expect(response).to render_template(page)
      end
    end
  end

  describe "#create" do
    it "should create employee and redirect to show" do
      count_before = Employee.count
      post :create, employee: {:name => "Liang", :age => 34, :gender => false}
      expect(Employee.count).to equal count_before + 1
      assert_redirected_to employee_path(assigns(:employee))
    end
  end

  describe "#update" do
    it "responds update" do
      employee = Employee.first
      new_age = employee.age + 1

      put :update,
          id: employee.id,
          employee: {age: new_age, name: employee.name, gender: employee.gender}

      expect(Employee.find(employee.id).age).to eq(new_age)
    end
  end

  describe "#destroy" do
    it "should destroy employee" do
      id = Employee.first.id
      count_before = Employee.count

      delete :destroy, id: id

      expect(Employee.count).to equal count_before - 1
      expect(Employee.find_by_id(id)).to be_nil
      assert_redirected_to employees_path
    end
  end

    describe "GET #index" do
      it "loads all of the posts into @posts" do
        get :index

        expect(assigns(:employees).size).to equal 3
      end
    end

  end
