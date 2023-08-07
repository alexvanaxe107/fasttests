{
  description = "A FAST API test.";

  outputs = { self, nixpkgs }:
    defaultPackage.x86_64-linux =
        let pkgs = nixpkgs.legacyPackages.x86_64-linux; in
        {
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
}
