class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @technologies = Technology.all
    # @message = Message.new
  end
end
