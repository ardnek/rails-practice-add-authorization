require 'rails_helper'

  describe ClubsController do
    describe "index" do
      it "redirects visitor to the login page" do
        get :index
        expect(response).to redirect_to(login_path)
      end

      it "render index when logged-in student tries to visit" do
        student = Student.create!(
        name: "Bill",
        email: "Murray",
        password: "password"
        )
        session[:student_id] = student.id
        get :index
        expect(response).to render_template("index")
      end
    end
  end
