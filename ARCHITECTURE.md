# Architecture

## Goal

The main purpose of this document is to organize the software development process.

#

## Initial Rules, Threshold and Analysis

Points to consider before introducing a new feature:

- All design patterns used in the project must be listed in the “Design Patterns” section of this document, otherwise it will be considered an erroneous implementation.
- New packages and plugins can only be used in projects after evaluation and approval by the entire team responsible for the project.
- Updates to the Domain Model can only be accepted if first added to this document and approved by everyone involved in the project.
- It is not allowed to have a concrete class as a dependency of a layer. Cohesion will only be accepted with abstract classes or interfaces. With the exception of the Store.
- Each layer should have only one responsibility.

#

## Design Patterns

- Dependency Injection: Resolve class dependencies.

#

## External packages

- url_launcher: A Flutter plugin for launching URLs
- flutter_modular: A module-based architecture framework for Flutter
- community_material_icon: A Flutter package providing access to the Community Material Icons font
- flutter_svg: A Flutter plugin for rendering SVG files
- google_fonts: A Flutter package for easy integration of Google Fonts
- responsive_builder: A Flutter plugin for simple management reponsive screen
