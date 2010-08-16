require 'spec_helper'

describe Blog:: CategoriesController do
  describe "routing" do
    it "recognizes and generates #index" do
      assert_recognizes_with_host(
        { :controller => "blog/categories", :action => "index", :subdomains => ["blog"] },
        { :path => "/categories", :host => "blog.foo.local", :method => :get } )
      #{ :get => "/categories", :subdomain => 'blog' }.should route_to(:controller => "categories", :action => "index")
    end

#    it "recognizes and generates #new" do
#      { :get => "/categories/new" }.should route_to(:controller => "categories", :action => "new")
#    end
#
#    it "recognizes and generates #show" do
#      { :get => "/categories/1" }.should route_to(:controller => "categories", :action => "show", :id => "1")
#    end
#
#    it "recognizes and generates #edit" do
#      { :get => "/categories/1/edit" }.should route_to(:controller => "categories", :action => "edit", :id => "1")
#    end
#
#    it "recognizes and generates #create" do
#      { :post => "/categories" }.should route_to(:controller => "categories", :action => "create") 
#    end
#
#    it "recognizes and generates #update" do
#      { :put => "/categories/1" }.should route_to(:controller => "categories", :action => "update", :id => "1") 
#    end
#
#    it "recognizes and generates #destroy" do
#      { :delete => "/categories/1", :subdomain => "blog" }.should route_to(:controller => "categories", :action => "destroy", :id => "1") 
#    end
  end
end