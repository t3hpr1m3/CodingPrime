require 'spec_helper'

describe "/session/destroy" do
  before(:each) do
    render 'session/destroy'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/session/destroy])
  end
end
