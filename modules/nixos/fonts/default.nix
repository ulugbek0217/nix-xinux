{pkgs, ...}: {
  # Font configuration
  fonts = {
    packages = with pkgs; [
      liberation_ttf
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif"];
        sansSerif = ["Noto Sans"];
        monospace = ["JetBrains Mono"];
      };
    };
  };
}
