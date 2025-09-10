{ config, pkgs, ... }:

{
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.guest.enable = true;
  virtualisation.virtualbox.guest.dragAndDrop = true;
  users.users.nov.extraGroups = [ "vboxusers" ];
  virtualisation.virtualbox.host.enableHardening = false;
  virtualisation.virtualbox.host.enableExtensionPack = true;
}

