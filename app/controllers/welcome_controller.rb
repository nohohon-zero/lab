class WelcomeController < ApplicationController
  def index
    @programs = Program.all
  end
end
