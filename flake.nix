{
    description = "Nix flake shell scripting environment";
    inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };

    outputs = { self , nixpkgs ,... }: let
        system = "x86_64-linux";
    in {
        devShells."${system}" = {
            default = let
                pkgs = import nixpkgs { inherit system; };
            in pkgs.mkShell {
                packages = with pkgs; [
                    shellcheck
                    dash
                ];
                shellHook = ''
                    exa -lah
                    git status
                    exec fish
                '';
            };
            nvim = let
                pkgs = import nixpkgs { inherit system; };
            in pkgs.mkShell {
                packages = with pkgs; [
                    shellcheck
                    bash-language-server
                ];
                shellHook = ''
                    exec fish -c nvim
                '';
            };
        };
    };
}
