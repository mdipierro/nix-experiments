let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  packages = with pkgs; [
    direnv
    nix-direnv
  ];
  shellHook = ''
    mkdir -p $HOME/.config/direnv
    echo '[whitelist]' > $HOME/.config/direnv/config.toml
    echo 'prefix = ["/root/projects/project4/"]' >> $HOME/.config/direnv/config.toml
    eval "$(direnv hook bash)"
  '';
}
