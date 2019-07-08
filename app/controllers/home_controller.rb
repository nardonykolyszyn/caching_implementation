# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    # ActiveRecord::Base.includes preloads all variants
    # This is called Eager Loading and aims to avoid n+1 queries
    @authors = Author.all.includes(:books)
  end
end
