defmodule ExrmProtocolRepro do
end

defprotocol Proto do
  def go(_)
end

defmodule Foo do
  defstruct [:x]

  defimpl Proto do
    def go(_) do
      IO.puts "In Foo Proto"
    end
  end
end

# Change version to 0.0.2 and uncomment this, then `mix release again`
defmodule Bar do
  defstruct [:x]

  defimpl Proto do
    def go(_) do
      IO.puts "In Bar Proto"
    end
  end
end
