defmodule Membrane.CMAF.Track do
  @moduledoc """
  Membrane description for Common Media Application Format.
  """

  @enforce_keys [
    :content_type,
    :header
  ]
  defstruct @enforce_keys

  @typedoc """
  Common Media Application Format description.

  The header field should contain binary contents of a CMAF init file.
  """
  @type t :: %__MODULE__{
          content_type: :audio | :video,
          header: binary
        }
end
