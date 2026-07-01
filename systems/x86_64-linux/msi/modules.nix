{...}: {
  services.flatpak.enable = true;
  modules.packagemanagers.appimage.enable = true;
  modules.shell.starship = true;
  modules.graphical.provider = "nvidia";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  modules.xinux.binaryCompat.enable = true;
  modules.efiboot.bootloader = "systemd-boot";
}
