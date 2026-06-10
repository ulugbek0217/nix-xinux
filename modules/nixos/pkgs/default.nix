{pkgs, ...}: {
  environment = {
    sessionVariables = {
      # These help GNOME find applications
      XDG_DATA_DIRS = [
        "/var/lib/flatpak/exports/share"
        "/home/ulugbek/.local/share/flatpak/exports/share"
      ];
    };
    gnome.excludePackages = with pkgs; [
      epiphany
      geary
      gnome-music
      gnome-photos
      totem
    ];
    systemPackages = with pkgs; [
      tree
      pciutils
      usbutils
      lshw
      dmidecode
      smartmontools
      hwinfo
      inxi
      libva-utils
      eza
      zoxide
      fzf
      glances
      wget
      time
      sbctl
      direnv

      lutris
      # Highly recommended additions for gaming on NixOS:
      wineWow64Packages.stable # A full Wine installation with 32/64-bit support
      winetricks # Utility to install Windows dependencies

      # GNOME
      gnome-tweaks
      gnome-extension-manager
      dconf-editor
      gnomeExtensions.vitals

      gparted
    ];
  };
}
