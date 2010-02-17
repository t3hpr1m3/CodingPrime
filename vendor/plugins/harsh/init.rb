# Include hook code here
require File.dirname(__FILE__)+"/lib/harsh.rb"
ActionView::Base.send(:include, Harsh::ErbMethods)
ActiveRecord::Base.send( :include, Harsh::ErbMethods )


harsh_sheets = Dir.entries(RAILS_ROOT+"/public/stylesheets/harsh/").reject {|s| s =~ /^\./}.map {|s| "harsh/"+s}
ActionView::Helpers::AssetTagHelper.register_stylesheet_expansion :harsh => harsh_sheets
