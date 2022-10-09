class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def rules
  end
end
