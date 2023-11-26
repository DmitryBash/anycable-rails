# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Channel.insert_all([{name: "general"}, {name: "random"}])

Channel.pluck(:id) => [id_1, id_2]

Message.insert_all(
  [
    {content: "When will Ruby 3.3 come out?", author: "Dmitrii", channel_id: id_1},
    {content: "Who knows :shrug:", author: "Mariya", channel_id: id_1},
    {content: "Rails 7.1 :heart:", author: "Alice", channel_id: id_2},
    {content: "I'm still on 4.2 :(", author: "Bob", channel_id: id_2}
  ]
)
