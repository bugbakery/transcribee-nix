{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/da5a2182b9c9b8aea2053d6f71fe46c329372b92.tar.gz";
    hash = "sha256-9BqchKoldCZ8DvgkADc8mHPTCYYJNI4wAJG0/XXGD/A=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-da5a2182b9c9b8aea2053d6f71fe46c329372b92.tar.gz";
    hash = "sha256-eQOuvdXSebEYWEIJW+dqwBrj7ubHI97xoL20t9/h6yo=";
    stripRoot = false;
  };
}
