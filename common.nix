{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/6b6b835e4a75ab6a03014f65d891f0fe04f4efbd.tar.gz";
    hash = "sha256-qy7KVnTP9Aphwq7wosbWFpvv10Evp/CidmfK3LvzM+A=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-6b6b835e4a75ab6a03014f65d891f0fe04f4efbd.tar.gz";
    hash = "sha256-LBQqM8RgpTc2LcG7TCjGs++OQCbQ5wUxiiIupWgq39E=";
    stripRoot = false;
  };
}
