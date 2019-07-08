# frozen_string_literal: true

class Author < ApplicationRecord
  ## Associations
  has_many :books, dependent: :destroy
end
