{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/5e5646543d2e4297327980acef6b66544ec6ddc5.tar.gz";
    hash = "sha256-d+revIc8ovqYlhbEQdpu06xx2xj1hCSj0XGW18PFjWE=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-5e5646543d2e4297327980acef6b66544ec6ddc5.tar.gz";
    hash = "sha256-7L3U5ef43MmvjynOhVEB7BfF1nKNHeGsEfg/LtADCRA=";
    stripRoot = false;
  };
}
