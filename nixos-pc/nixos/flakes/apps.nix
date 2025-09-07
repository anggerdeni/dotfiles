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
  programs.nix-ld.enable = true;
  
  # systemPackages
  environment.systemPackages = with pkgs; [
    bind
    brave
    cmake
    ethtool
    exiftool
    ffmpeg
    ffmpegthumbnailer
    fzf
    gcc
    gimp3-with-plugins
    gnome-themes-extra
    go
    gopls
    hicolor-icon-theme
    hypridle
    hyprlock
    hyprpaper
    hyprshot
    jq
    kitty
    kubectl
    kubectx
    libnotify
    loupe
    nodejs_24
    ntfs3g
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
    vlc
    virtualbox
    wget
    wl-clipboard
    yazi
    zig
    zip
    zoom-us
    inputs.zen-browser.packages."${system}".default
    # inputs.mach-nix.packages."${system}".default
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
