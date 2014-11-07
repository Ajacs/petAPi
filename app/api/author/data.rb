module Author
  class Data < Grape::API
    resource :author_data do
      # ----------------------------------------[Get authors]
      desc "List all authors"
      get do
        Authors.all
      end
      # ----------------------------------------[Post author]
      desc "create a new author"
      ## This takes care of parameter validation
      params do
        requires :name, type: String
        requires :secondName, type: String
        requires :age, type: Integer
      end

      post do
        Authors.create!({
                            name: params[:name],
                            secondName: params[:secondName],
                            age: params[:age]
                        })
      end
      # ----------------------------------------

    end
  end
end