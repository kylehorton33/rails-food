class ApplicationController < ActionController::Base
end

private

def page_not_found
    render :file => 'public/404.html', :layout => false, :status => :not_found
end