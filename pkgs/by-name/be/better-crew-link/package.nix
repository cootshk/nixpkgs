{
  appimageTools,
  fetchurl,
  lib,
  ...
}:
appimageTools.wrapType2 rec {
  pname = "better-crew-link";
  version = "3.1.3";
  src = fetchurl {
    url = "https://github.com/OhMyGuus/BetterCrewLink/releases/download/v${version}/Better-CrewLink-${version}.AppImage";
    sha256 = "sha256-E8SxPkZDd6CTg3PuQBylD5Q4QG9Vl9icLXQc8EdigdE=";
  };
  meta = with lib; {
    description = "Free, Open, Among Us Proximity Voice Chat.";
    homepage = "https://github.com/OhMyGuus/BetterCrewLink"; # NOT https://bettercrewl.ink
    downloadPage = "https://github.com/OhMyGuus/BetterCrewLink/releases";
    changelog = "https://github.com/OhMyGuus/BetterCrewLink/releases/tag/v${version}";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ cootshk ];
    platforms = [ "x86_64-linux" ];
  };
}
