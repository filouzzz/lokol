class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :privacypolicy]

  def home
  end

  def privacypolicy
  end
end
