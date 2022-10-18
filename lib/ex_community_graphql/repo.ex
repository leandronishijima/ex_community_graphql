defmodule ExCommunityGraphql.Repo do
  use Ecto.Repo,
    otp_app: :ex_community_graphql,
    adapter: Ecto.Adapters.Postgres
end
