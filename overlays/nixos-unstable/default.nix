# Snowfall Lib provides access to additional information via a primary argument of
# your overlay.
{
  # Inputs from your flake.
  inputs,
  ...
}:

final: prev: {
  unstable = import inputs.nixpkgs-unstable {
    system = final.system;
    config.allowUnfree = true;
  };
}