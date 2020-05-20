class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def profile
  end

  def home
  end
end
