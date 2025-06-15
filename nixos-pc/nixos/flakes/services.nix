{ config, lib, pkgs, inputs, ... }:
{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.power-profiles-daemon.enable = true;
  services.openssh.enable = true;

  # for VIA to work: https://discourse.nixos.org/t/via-vial-cant-find-my-keyboard/52525/4
  # then either reboot or `sudo udevadm control --reload-rules && sudo udevadm trigger`
  services.udev = {
    packages = with pkgs; [
      qmk
        qmk-udev-rules # the only relevant
        qmk_hid
        via
        vial
    ]; # packages
  }; # udev
}

