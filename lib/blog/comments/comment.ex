defmodule Blog.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Posts.Post
  alias Blog.Posts

  schema "comments" do
    field :content, :string
    field :name, :string
    field :post_id, :id

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:name, :content, :post_id])
    |> validate_required([:name, :content, :post_id])
  end
end
