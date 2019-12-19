defmodule Membrane.Caps.HTTPAdaptiveStream.Channel do
  @enforce_keys [:container, :init, :init_name, :fragment_prefix, :fragment_extension]
  defstruct @enforce_keys
end
