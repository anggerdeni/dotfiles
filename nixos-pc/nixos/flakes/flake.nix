{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    # mach-nix.url = "github:DavHau/mach-nix";
  };

  outputs = { self, nixpkgs, zen-browser } @ inputs: {
    nixosConfigurations.pc = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration-pc.nix
      ];
    };
  };
}

