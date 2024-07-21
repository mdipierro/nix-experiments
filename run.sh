mkdir -p /tmp/nix
podman run -it --rm \
       -v $HOME/.ssh:/root/.ssh:ro \
       -v $HOME/.gitconfig:/root/.gitconfig:ro \
       -v /tmp/nix:/nix:rw \
       -v `pwd`/projects:/root/projects:rw \
       -v `pwd`/.bashrc:/root/.bashrc:rw \
       docker.io/alpine:latest sh -c "apk add bash which nix nix-openrc && nix-channel --add https://nixos.org/channels/nixos-24.05 nixpkgs && nix-channel --update && bash"
