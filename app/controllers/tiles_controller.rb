class TilesController < ApplicationController

    def index
        tiles = Tile.all
        render json: tile.to_json
    end

end