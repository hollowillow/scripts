{
  description = "Flake based shell dev env";
  inputs = {nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";};

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
  in {
    devShells."${system}" = {
      default = let
        pkgs = import nixpkgs {inherit system;};
      in
        pkgs.mkShell {
          packages = with pkgs; [
            bash-language-server
            shellcheck
            dash
          ];
          shellHook = ''
            shellcheck --version
            printf 'bash-language-server '; bash-language-server --version
          '';
        };
    };
  };
}
