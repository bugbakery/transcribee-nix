{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/0ab0f9785b580867c727c4961ce6dcc8ee9bf361.tar.gz";
    hash = "sha256-iIR2WL9SiCXiYn5EAdT4dI7yEhOWCqQS5xFS9lDfnx8=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-0ab0f9785b580867c727c4961ce6dcc8ee9bf361.tar.gz";
    hash = "sha256-bEZOwY/hw1c++UU+U55v7vz2Q3khgiKVLQ2EW/SsXgQ=";
    stripRoot = false;
  };
}
