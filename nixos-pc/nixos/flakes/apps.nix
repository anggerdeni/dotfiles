{ config, lib, pkgs, inputs, ... }:
{
  # programs
  programs.firefox.enable = true;
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell"; # Will be overridden by Starship prompt
      plugins = [ "git" "z" "docker" ];
    };
  };
  programs.git = {
    enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "Novian Deny";
	email = "anggerdeni@gmail.com";
      };
    };
  };
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.hyprland.enable = true;
  programs.waybar.enable = true;
  programs.nm-applet.enable = true;
  programs.dconf.enable = true; # for GTK theming to work?
  
  # systemPackages
  environment.systemPackages = with pkgs; [
    brave
    cmake
    ffmpeg
    ffmpegthumbnailer
    fzf
    gcc
    gnome-themes-extra
    go
    gopls
    hicolor-icon-theme
    hypridle
    hyprlock
    hyprpaper
    hyprshot
    kitty
    kubectl
    kubectx
    nodejs_24
    pavucontrol
    python314
    qt6ct # for styling Qt6 apps
    qt6.qtwayland # for wayland support
    ripgrep
    rofi-wayland
    rustup
    starship
    swaynotificationcenter
    telegram-desktop
    tmux
    unzip
    wget
    wl-clipboard
    yazi
    zig
    zip
    zoom
    inputs.zen-browser.packages."${system}".default
    catppuccin-cursors.macchiatoSapphire
  ];

  fonts.packages = with pkgs; [
    fira-code
    font-awesome
    jetbrains-mono
    noto-fonts
  ];

  virtualisation.docker.enable = true;
}
