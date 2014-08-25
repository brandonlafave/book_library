require 'rails_helper'

RSpec.describe "books/index", :type => :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :cover => "Cover",
        :title => "Title",
        :author => "Author",
        :rating => 1,
        :isbn => 2,
        :approved => false,
        :active => false,
        :following => false
      ),
      Book.create!(
        :cover => "Cover",
        :title => "Title",
        :author => "Author",
        :rating => 1,
        :isbn => 2,
        :approved => false,
        :active => false,
        :following => false
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Cover".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
