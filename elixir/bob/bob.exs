defmodule Bob do
  def hey(input) do
    cond do
      # Silence
      String.match?(input, ~r/^\s*$/) -> "Fine. Be that way!"

      # Question
      String.ends_with?(input, "?") -> "Sure."

      # Shouting
      input == String.upcase(input) && input != String.downcase(input) ->
        "Whoa, chill out!"

      # Whatever
      true -> "Whatever."
    end
  end
end
