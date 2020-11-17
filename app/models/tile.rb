class Tile < ApplicationRecord
    belongs_to :top, foreign_key: "top_id", class_name: "Glaze"
    belongs_to :bottom, foreign_key: "bottom_id", class_name: "Glaze"
end
