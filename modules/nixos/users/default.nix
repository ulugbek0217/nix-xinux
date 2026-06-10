{
  users.users = {
    ulugbek = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = [];
      extraGroups = ["wheel" "docker" "podman" "networkmanager" "libvirtd"];
    };
  };
}
