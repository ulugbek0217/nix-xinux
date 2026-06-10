{
  inputs,
  lib,
  config,
  pkgs,
  outputs,
  ...
}: {
  home = {
    username = "ulugbek";
    homeDirectory = "/home/ulugbek";
    # backupFileExtension = "backup";
  };

  # # This is important for GNOME to find applications
  # targets.genericLinux.enable = false;

  programs.home-manager.enable = true;

  # systemd.user.startServices = "sd-switch";

  programs.emacs.enable = true;
  programs.neovim.enable = true;

  home.stateVersion = "26.05";
}