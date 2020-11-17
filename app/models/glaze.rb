class Glaze < ApplicationRecord
    has_many :tiles, foreign_key: "top_id", class_name: "Tile"
    has_many :bottoms, through: :tiles
end
