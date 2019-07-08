# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @authors = Author.all.includes(:books)
  end
end
