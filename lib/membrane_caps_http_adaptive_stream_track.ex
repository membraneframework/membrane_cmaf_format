defmodule Membrane.Caps.HTTPAdaptiveStream.Track do
  @enforce_keys [
    :container,
    :init,
    :init_extension,
    :fragment_extension,
    :content_type
  ]
  defstruct @enforce_keys
end
