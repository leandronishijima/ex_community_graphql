defmodule ExCommunityGraphqlWeb.Schema do
  use Absinthe.Schema
  import_types(ExCommunityGraphqlWeb.Schema.Types)

  alias ExCommunityGraphqlWeb.Resolvers.NewsResolver

  query do
    @desc "Get all links"
    field :all_links, non_null(list_of(non_null(:link))) do
      resolve(&NewsResolver.all_links/3)
    end

    @desc "Get a link by id"
    field :link, :link do
      arg(:id, non_null(:id))
      resolve(&NewsResolver.get_link/3)
    end
  end

  mutation do
    @desc "Create a new link"
    field :create_link, :link do
      arg(:url, non_null(:string))
      arg(:description, non_null(:string))

      resolve(&NewsResolver.create_link/3)
    end
  end
end
