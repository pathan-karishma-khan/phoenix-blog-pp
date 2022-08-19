defmodule BlogApp.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlogApp.Posts.Post
  schema "comments" do
    field :content, :string
    field :name, :string
    belongs_to(:post, Blog.Posts.Post)

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:name, :content, :post_id])
    |> validate_required([:name, :content, :post_id])
  end
end
