# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware.nix
    ./modules.nix
  ];

  # lib.mkForce false bilan system-wide qo'yilgan xinux bootloaderni
  # disable qilib har bir host uchun alohida lanzaboote berish mumkin
  boot = lib.mkForce {
    loader.systemd-boot.enable = false;
    lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };
  };

  console.useXkbConfig = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."ulugbek" = {
    isNormalUser = true;
    description = "Ulugbek";
    extraGroups = ["wheel" "networkmanager" "dialout"];
  };

  # TODO: Set your hostname
  networking = {
    hostName = "msi";
    networkmanager.enable = true;
  };

  # Enable bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  # # NVIDIA driver support
  # services.xserver.videoDrivers = ["nvidia"];

  # Set your time zone.
  time = {
    timeZone = "Asia/Tashkent";
    hardwareClockInLocalTime = true;
  };

  # This setups a SSH server. Very important if you're setting up a headless system.
  # Feel free to remove if you don't need it.
  services.openssh = {
    enable = true;
    settings = {
      # Opinionated: forbid root login through SSH.
      PermitRootLogin = "no";
      # Opinionated: use keys only.
      # Remove if you want to SSH using passwords
      PasswordAuthentication = false;
    };
  };

  # Install firefox.
  programs.firefox.enable = true;

  programs.nix-data = {
    enable = true;
    systemconfig = "/home/ulugbek/.config/nix/systems/x86_64-linux/msi/default.nix";
    flake = "/home/ulugbek/.config/nix/flake.nix";
    hostname = "msi";
  };

  # Do not touch
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "25.11";
}
