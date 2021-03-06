class GlazesController < ApplicationController

    def index
        glazes = Glaze.all
        render json: glazes.to_json
    end

    def create 
        glaze = Glaze.create(glaze_params)
        if glaze.valid?
            render json: glaze
        else
            render json: {errors: glaze.errors.full_messages}
        end
    end

    def show
        glaze = Glaze.find_by({id: params[:id]})
        # if message
            render json: glaze.to_json
        # else
            # render json: { "Your partner is in another castle"}
        # end 
    end

    private

        def glaze_params
            params.require(:glaze).permit(:name, :code, :glaze)
        end

end
