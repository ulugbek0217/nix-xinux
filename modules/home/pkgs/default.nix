{pkgs, ...}: {
  home = {
    sessionVariables = {
      # Let home-manager handle XDG_DATA_DIRS automatically
      # If you need to add custom paths, append them instead of replacing
    };

    packages = with pkgs; [
      telegram-desktop
      discord
      google-chrome
      onlyoffice-desktopeditors
      fastfetch
      peazip
      copyq
      foliate
      rustdesk
      protonup-qt
      mission-center
      qbittorrent
      unstable.insomnia
      obsidian
      element-desktop
      easyeffects

      bibata-cursors
    ];
  };
}
