function update --wraps='sudo nix flake update --flake /etc/nixos/flake.nix && sudo nixos-rebuild switch --upgrade --impure' --description 'alias update=sudo nix flake update --flake /etc/nixos/flake.nix && sudo nixos-rebuild switch --upgrade --impure'
    sudo nix flake update --flake /etc/nixos/flake.nix && sudo nixos-rebuild switch --upgrade --impure $argv
end
