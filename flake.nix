{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs;
  };

  outputs = { self, nixpkgs }: {
    # thinkserver
    nixosConfigurations.calvin = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./calvin/configuration.nix ];
    };

    # rpi4
    nixosConfigurations.sammy = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [ ./configuration.nix ];
    };

    # rpi zero 2
    nixosConfigurations.einstein = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [ ./configuration.nix ];
    }
  };
}
