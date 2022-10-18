defmodule ExCommunityGraphqlWeb.Resolvers.NewsResolver do
  alias ExCommunityGraphql.News

  def all_links(_root, _args, _info) do
    {:ok, News.list_links()}
  end
end
