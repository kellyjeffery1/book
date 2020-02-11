require 'csv'

class UsersController < ApplicationController
  def initialize(csv_file_path)
    @books = []
    @csv_file_path = csv_file_path
    load_csv
  end

  def all
    return @books
  end

  def add_book(book)
    @books << book
    save_csv
  end

  def remove_book(index)
    @books.delete_at(index)
    save_csv
  end

  def load_csv
    CSV.foreach(@csv_file_path) do |row|
    @books << Book.new(row[0], row[1], row[2])
    end
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
   @books.each do |book|
    csv << [book.name, book.description]
  end
end
