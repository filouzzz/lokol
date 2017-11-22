class PreviewsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:demo]

  def demo
  end
end
