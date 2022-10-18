# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ExCommunityGraphql.Repo.insert!(%ExCommunityGraphql.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`

alias ExCommunityGraphql.News.Link
alias ExCommunityGraphql.Repo

%Link{url: "http://graphql.org/", description: "The Best Query Language"} |> Repo.insert!()
%Link{url: "http://dev.apollodata.com/", description: "Awesome GraphQL Client"} |> Repo.insert!()
