require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it "displays the header" do
    # rspec-railsがrails7に公式未対応のためと思われるが、
    # renderにtemplateを明示的に指定しないと見つからない。
    # https://github.com/rspec/rspec-rails/pull/2521
    render template: 'home/index'

    expect(rendered).to include "Welcome"
  end
end
