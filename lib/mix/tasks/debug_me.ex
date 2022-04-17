defmodule Mix.Tasks.DebugMe do
  use Mix.Task

  @version Mix.Project.config()[:version]

  @impl true
  @doc false
  def run([version]) when version in ~w(-v --version) do
    # app_vsn = Application.spec(:debug_me, :vsn)

    # Mix.shell().info("v#{@version};#{app_vsn}")
    Mix.shell().info("v#{@version}")
  end

  def run(args) do
    case args do
      _ -> Mix.raise "Invalid arguments, expected: mix debug_me"
    end
  end
end
