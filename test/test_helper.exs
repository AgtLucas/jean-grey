ExUnit.start

Mix.Task.run "ecto.create", ~w(-r JeanGrey.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r JeanGrey.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(JeanGrey.Repo)

