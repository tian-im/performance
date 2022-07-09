class ApplicationController < ActionController::Base
  def index
    render plain: 'Helloworld'
  end
end
