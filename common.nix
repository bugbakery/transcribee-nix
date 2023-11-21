{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/f0c211e7718d0fb1dfc14e72515ceb9c1f944765.tar.gz";
    hash = "sha256-7plz6Jr81zjZpoI/QfMTBu1fYKaSX+lbzU/v1aTt+y8=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-f0c211e7718d0fb1dfc14e72515ceb9c1f944765.tar.gz";
    hash = "sha256-J05oDqWhe81GTGAJZJp+x6tum/58/EJt39bWc8h7lC0=";
    stripRoot = false;
  };
}
