defmodule Octopus.Executors.Cli do
  def call(command, args) do
    {:ok, %Rambo{err: err, out: out, status: status}} = Rambo.run(command, args)

    case status do
      0 ->
        {:ok, out}

      _not_zero ->
        {:error, err}
    end
  end
end
