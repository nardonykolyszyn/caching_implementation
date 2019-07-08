# frozen_string_literal: true

class Book < ApplicationRecord
  ## Associations
  belongs_to :author
end
