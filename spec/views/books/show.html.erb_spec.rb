require 'rails_helper'

RSpec.describe "books/show", :type => :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :cover => "Cover",
      :title => "Title",
      :author => "Author",
      :rating => 1,
      :isbn => 2,
      :approved => false,
      :active => false,
      :following => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cover/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
