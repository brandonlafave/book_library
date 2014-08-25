require 'rails_helper'

RSpec.describe "books/edit", :type => :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :cover => "MyString",
      :title => "MyString",
      :author => "MyString",
      :rating => 1,
      :isbn => 1,
      :approved => false,
      :active => false,
      :following => false
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_cover[name=?]", "book[cover]"

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_rating[name=?]", "book[rating]"

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_approved[name=?]", "book[approved]"

      assert_select "input#book_active[name=?]", "book[active]"

      assert_select "input#book_following[name=?]", "book[following]"
    end
  end
end
