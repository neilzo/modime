class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing]

  def index
    render template: 'home/index'
  end

  def landing
    render template: 'home/landing'
  end
end
