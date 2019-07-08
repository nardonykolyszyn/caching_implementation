# frozen_string_literal: true
# License: GPLv2
# Author: Nardo Nykolyszyn <nardonykolyszyn@gmail.com>

require 'faker'

30.times { Author.create(name: Faker::Name.unique.name) }

Author.all.each do |author|
  20.times do
    author.books.create(name: Faker::Book.title)
  end
end
