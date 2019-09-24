# mi-jekyll-theme

Dieses Theme dient für Jekyll Veranstaltungswebsites der Medieninformatik. Es stellt eine gemeinsame Grundlage aller Websites dar, wodurch eine konsistentere und schnellere Erstellung sowie (Weiter-)Entwicklung dieser ermöglicht wird.

Diese README beinhaltet eine Beschreibung des Aufbaus und der Verwendung des Themes.

## Aufbau des Themes

Das Theme enthält grundsätzliche Design- und Layout-Elemente für die Veranstaltungswebsites. Diese sind folgende: Jekyll Includes (Ordner: `_includes`) und Layouts (Ordner: `_layouts`), SASS-Stylesheets (Ordner: `_sass`) sowie statische Dateien wie Bilder, Javascript und die zu kompillierende SCSS-Datei im `assets`-Ordner. All diese Dateien werden den auf dem Theme basierenden Seiten zur Verfügung gestellt und somit nicht mehr in den jeweiligen Repositories benötigt. Soll eine Datei aus dem Theme für eine spezielle Website angepasst werden, muss lediglich eine gleich benannte Datei am entsprechenden Pfad erstellt werden und diese wird statt der Theme-Datei verwendet. Auch lassen sich in den Ordnern einer Website zusätzliche Dateien anlegen die zusätzlich zu den Theme-Dateien verwendet werden. Detaillierte Beschreibungen zu der Funktionsweise von Jekyll Themes sind auf der [offiziellen Website](https://jekyllrb.com/docs/themes/) verfügbar.

Bei Release des Themes werden auch lediglich die Dateien in den Ordnern `_layouts`, `_includes`, `_sass` und `assets`, die von Git getracked werden, inkludiert.  
Um weitere Ordner hinzuzufügen muss die regexp in `mi-jekyll-theme.gemspec` entsprechend angepasst werden.

Die allgemeinen Styles der Medieninformatik im `_sass/lib`-Ordner stammen aus dem [mi-style-lib](https://github.com/flobraeun/mi-style-lib) Repository und werden per git subtree aktualisiert. Der Befehl, um hier auf die aktuelle Version zu wechseln lautet:

```bash
git subtree pull --prefix _sass/lib https://github.com/flobraeun/mi-style-lib.git master --squash
```

Die für die Jekyll Websites entwickelte Styles befinden sich in der `_sass/mi-jekyll.scss`-Datei. Diese Styles sollen nur über das Theme weiterentwickelt werden, sodass sie bei allen Websites identisch genutzt werden. Eigene Styles pro Website werden über die folgende Datei ermöglicht: `assets/styles/mi-jekyll.scss`. In dieser Datei ist es standardmäßig möglich die Farbe für (u.a.) den Hero-Bereich (`$hero-color`) festzulegen. Dabei kann aus den CI-Farben der Medieninformatik per Variable ausgewählt werden, oder es kann eine beliebige Farbe spezifizert werden.

## Website erstellen

Als Basis für neue Websites sollte das [Boilerplate Repository](https://github.com/flobraeun/mi-jekyll-boilerplate) verwendet werden. Dieses stellt die Grundlegenden Funktionen bereit und basiert auf diesem Theme. Einige Anpassungen sind erforderlich.

In der `_config.yml`-Datei befinden sich die siteweiten Konfigurationen. Hier sollte der Name, die Beschreibung, die Baseurl (also der Repository-Name), das Hero-Bild sowie die Navigation angepasst werden. Die einzelnen Optionen sind in der Datei beschrieben.

## Website lokal testen

Um die Website lokal zu testen sind die üblichen Jekyll Voraussetzungen, wie Ruby nötig. Wichtig ist, dass die Abhängigkeiten per `bundle install` installiert werden. Hierbei wird das Theme als gem von [rubygems.org](https://rubygems.org/) abgerufen.

Zum starten der Site als Webserver dient der Befehl `jekyll serve`, um lediglich die statischen Dateien zu generieren wird `jekyll build` verwendet.

## Website über GitHub Pages deployen

Der Deploy über GitHub Pages ist sehr einfach, Pages muss lediglich in den Einstellungen des Repositories aktiviert werden. In der `_config.yml`-Datei ist das Theme für GitHub Pages als Link auf dieses Repositroy hinterlegt, sodass bei jedem Deploy der Site stets die aktuelle Version verwendet wird.

## Website/Theme Weiterentwicklung

Das Jekyll Theme wird in diesem Repository weiterentwickelt. Websites, die dieses Theme nutzen, verwenden bei GitHub Pages automatisch die aktuelle Version, bei Building über die lokale Version von Jekyll wird die in der `Gemfile` angegebene Version verwendet. Diese muss bei größeren Versionssprüngen angepasst werden, damit lokal die identische Version verwendet wird, die auch GitHub Pages verwendet. Hier sollte gelentlich `bundle update` ausgeführt werden.

## Theme Deployment

Das Theme muss auf zwei Arten deplyoed werden: Zum einen als Commit in GitHub für die auf GitHub Pages gehosteten Websites, zum anderen muss eine neue Version bei [rubygems.org](https://rubygems.org/) veröffentlicht werden, damit das Theme beim lokalen generieren der Website nutzbar ist.

Zukünftig könnte hier auch auf die [GitHub Package Registry](https://github.com/features/package-registry) umgestellt werden, diese befindet sich allerding aktuell noch in einer limitieren öffentlichen Beta und es war noch kein Zugriff möglich.
