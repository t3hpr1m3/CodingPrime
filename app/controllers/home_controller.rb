class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html { redirect_to blog_root_url }
      format.atom
    end
  end
end
