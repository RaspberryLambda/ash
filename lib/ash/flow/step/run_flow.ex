defmodule Ash.Flow.Step.RunFlow do
  @moduledoc false
  use Ash.Flow.Step.BuiltinStep, [:input, :flow, :built]
  @shared_opts Ash.Flow.Step.shared_opts()

  def schema,
    do:
      [
        flow: [
          type: :atom,
          doc: "The flow to run.",
          required: true
        ],
        input: Ash.Flow.Step.input()
      ]
      |> Spark.OptionsHelpers.merge_schemas(@shared_opts, "Global Options")
end
