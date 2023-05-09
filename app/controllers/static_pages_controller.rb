class StaticPagesController < ApplicationController
  def index
    # when a request comes to the route '/', it will be directed to this method
    # this is empty for now since we have nothing to process for homepage
    # so, we are going to respond with a webpage (defined in HTML)

    render 'index'
  end
end