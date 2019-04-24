describe 'Taking a course' do

  let!(:user) { create(:user, email: "misha@mail.com", password: "qwerty1234") }

  before(:each) do
    login("misha@mail.com", "qwerty1234")
  end

  it "opens courses page after login" do
    expect(page).to have_content "Текущие курсы"
  end

   context "can start and go through course" do

    before(:each) do
      course = create(:course, title: "Ruby on Rails")
      task = create(:task, course: course, title: "Простой контроллер")
    end

    it "can start course" do
      visit dashboard_root_path
      click_link "Начать курс"
      expect(page).to have_content "Простой контроллер"
    end

  end

end
