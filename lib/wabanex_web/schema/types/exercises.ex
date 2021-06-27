defmodule WabanexWeb.Schema.Types.Exercise do
  use Absinthe.Schema.Notation

  @desc "Logic Exercise representation"
  object :exercise do
    field :id, non_null(:uuid4)
    field :name, non_null(:string)
    field :youtube_video_url, non_null(:string)
    field :protocal_description, non_null(:string)
    field :repetitions, non_null(:string)
  end

  input_object :create_exercise do
    field :name, non_null(:string), description: "Exercise name"
    field :youtube_video_url, non_null(:string), description: "Exercise youtube_video_url"
    field :protocol_description, non_null(:string), description: "Exercise protocal_description"
    field :repetitions, non_null(:string), description: "Exercise repetitions"
  end
end
