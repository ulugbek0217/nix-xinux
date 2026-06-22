# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware.nix
    ./modules.nix
  ];
  # Define your hostname.
  networking.hostName = "xinux";

  networking.hosts = {
    "91.212.89.25" = ["git.oss.uzinfocom.uz"];
  };

  console.useXkbConfig = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."ulugbek" = {
    isNormalUser = true;
    description = "Ulugbek";
    extraGroups = ["wheel" "networkmanager" "dialout"];
  };

  programs.nix-data = {
    enable = true;
    systemconfig = "/home/ulugbek/.config/nix/systems/x86_64-linux/xinux/default.nix";
    flake = "/home/ulugbek/.config/nix/flake.nix";
    hostname = "xinux";
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05"; # Did you read the comment?
}
