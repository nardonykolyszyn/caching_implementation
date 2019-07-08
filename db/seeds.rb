# frozen_string_literal: true
# License: GPLv2
# Author: Nardo Nykolyszyn <nardonykolyszyn@gmail.com>

require 'faker'

100.times { Author.create(name: Faker::Name.name) }

Author.all.each do |author|
  30.times do
    author.books.create(name: Faker::Book.title)
  end
end
