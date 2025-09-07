{ config, pkgs, ... }:

{
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.users.yourusername.extraGroups = [ "vboxusers" ];
}

