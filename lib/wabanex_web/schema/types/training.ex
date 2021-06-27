defmodule WabanexWeb.Schema.Types.Training do
  use Absinthe.Schema.Notation

  import_types WabanexWeb.Schema.Types.Exercise

  @desc "Logic Training representation"
  object :training do
    field :id, non_null(:uuid4)
    field :start_date, non_null(:string)
    field :end_date, non_null(:string)
    field :exercises, list_of(:exercise)
  end

  input_object :create_training do
    field :user_id, non_null(:uuid4), description: "Training name"
    field :start_date, non_null(:string), description: "Training start_date"
    field :end_date, non_null(:string), description: "Training end_date"
    field :exercises, list_of(:create_exercise), description: "Training repetitions"
  end
end
