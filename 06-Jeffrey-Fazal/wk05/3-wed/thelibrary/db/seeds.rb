# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'authors_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Transaction.new
  t.book_id = row['book_id']
  t.title = row['title']
  t.isbn = row['isbn']
  t.avg_rating = row['avg_rating']
  t.publication_year = row['publication_year']
  t.image_url = row['image_url']
  t.save
  puts "#{t.book_id}, #{t.title} saved"
end