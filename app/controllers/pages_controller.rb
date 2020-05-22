class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def profile
  end

  def home
  end

  def my_trucks
    @trucks = current_user.trucks
  end
end
