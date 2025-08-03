with import <nixpkgs> { };
# https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/rust.section.md#setting-up-nix-shell-setting-up-nix-shell
stdenv.mkDerivation {
  name = "rust-env";
  nativeBuildInputs = [
    rustc
    cargo

    # Example Build-time Additional Dependencies
    pkg-config
  ];
  buildInputs = [
    # Example Run-time Additional Dependencies
    openssl
  ];

  # Set Environment Variables
  RUST_BACKTRACE = 1;
}
