class RecipesController < ApplicationController
    def index
        @recipes = if params[:keywords]
                      test = Recipe.where('name like ?', "%#{params[:keywords]}%")
                      arrayHolder = []
                      test.each do |item|
                          arrayHolder.push({
                                               id: item.id,
                                               name: item.name,
                                               instructions: item.instructions
                                           })
                      end
                      render :json => arrayHolder
                  else
                      []
                  end
    end
end
