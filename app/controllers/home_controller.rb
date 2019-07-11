# frozen_string_literal: true

# How it works?
# If we only call for the authors without their children collections (Books)
# Once we iterate over this instance variable in the views to get all the books of each author
# We are going to perform this operation: SELECT * FROM "public"."books" WHERE "book"."author_id" = $(AUTHOR_ID)
# So, let's imagine we have 100 authors and we need to get all their books, this would be a huge problem
# Since we are going to call the same query for those 100 authors, we'll have (100) + 1 queries
# Eager loading automatically includes all books for all authors by only using an extra query
# This approach aims to have only two queries for N authors instead of N+1

class HomeController < ApplicationController
  def index
    # ActiveRecord::Base.includes preloads all variants
    # This is called Eager Loading and aims to avoid n+1 queries
    @authors = Author.all.includes(:books)
  end
end
