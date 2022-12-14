defmodule ExCommunityGraphqlWeb.Resolvers.NewsResolver do
  alias ExCommunityGraphql.News

  def all_links(_root, _args, _info) do
    {:ok, News.list_links()}
  end

  def get_link(_root, args, _info) do
    {:ok, News.get_link!(args.id)}
  end

  def create_link(_root, args, _info) do
    case News.create_link(args) do
      {:ok, link} ->
        {:ok, link}

      _error ->
        {:error, "could not create link"}
    end
  end
end
