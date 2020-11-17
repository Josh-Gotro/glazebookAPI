class TilesController < ApplicationController

    def index
        tiles = Tile.all
        render json: tiles.to_json
    end

end