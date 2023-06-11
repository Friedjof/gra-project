# Das GRA-Projekt
## Einleitung
Das GRA-Projekt ist eine Projektarbeit, welche im Rahmen des Moduls `Grundlagenpraktikum Rechnerarchitektur` an der technischen Universität München erarbeitet wird. Dabei handelt es sich um eine Gruppenarbeit bestehend aus `Person1`, `Person2` und `Person3`.

## Aufgabenstellung
*folgt noch…*

## Projektaufbau
### Verzeichnisstruktur
*folgt noch…*

### Automatische Tests
*folgt noch…*

## Entwicklung
### Commit-Namenskonvention
Das Projekt verwendet die folgende Namenskonvention für Commits:
```text
<type>[optional scope]: <description>

[optional body]
```
### Commit-Typen
Dabei wird der `type` wie folgt gewählt:
* `feat`: Neue Features
* `fix`: Bugfixes
* `docs`: Änderungen an der Dokumentation
* `style`: Änderungen an der Formatierung
* `refactor`: Refactoring
* `test`: Änderungen an Tests
* `chore`: Sonstige Änderungen
* `revert`: Revert eines vorherigen Commits
* `merge`: Merge zweier Branches

### Commit-Scope
Der `scope` beschreibt den Bereich, in dem die Änderungen stattgefunden haben. Dies kann beispielsweise ein Modul oder eine Klasse sein.

### Commit-Beschreibung
Die `description` beschreibt die Änderungen, die durch den Commit vorgenommen wurden. Dabei sollte die Beschreibung in der Gegenwartsform geschrieben werden.

### Commit-Body
Der `body` beschreibt die Änderungen, die durch den Commit vorgenommen wurden. Dabei sollte die Beschreibung in der Gegenwartsform geschrieben werden.

### Beispiele
```text
feat: Add the ability to create accounts
```

```text
fix[account]: Fix the bug with renaming accounts #123
```

```text
docs[account]: Add documentation for the account module
```

### Branch-Namenskonvention
Für jedes Issue wird ein eigener Branch erstellt. Dabei wird der Branch-Name wie folgt gewählt:
```text
<type>/<issue-number>-<short-description>
```
* `type`: Der Typ des Issues (`feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, `revert`, `merge`)
* `issue-number`: Die Nummer des Issues
* `short-description`: Eine kurze Beschreibung des Issues

## Quellen
* [Git Commit Message Conventions](https://www.conventionalcommits.org/en/v1.0.0/)
