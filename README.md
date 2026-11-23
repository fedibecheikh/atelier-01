# Atelier 1 — Premier widget et test

## Réalisation

- `lib/main.dart` : application `MaterialApp` avec la carte au centre.
- `lib/waiting_room_card.dart` : `WaitingRoomCard`, un `StatelessWidget` affichant « Hello, » + le nom.
- `lib/waiting_room_timestamp.dart` : `WaitingRoomTimestamp`, un `StatefulWidget` qui met à jour l'heure chaque seconde avec `Timer.periodic` et annule le timer dans `dispose()`.
- `test/waiting_room_card_test.dart` : test de widget vérifiant l'affichage du nom.

## Lancer le projet

```bash
flutter pub get
flutter create . --project-name waiting_room_app --platforms=android,ios,web
flutter run
flutter test
```

## Livrables de l'atelier

- [x] Projet Flutter fonctionnel (`flutter run`).
- [x] `WaitingRoomCard` affichant un nom.
- [x] Timestamp temps réel (`StatefulWidget` + `Timer`).
- [x] Test de widget qui passe (`flutter test`).
- [x] Workflow Git (branche `feature/waiting-card-refactor` + PR).
- [x] CI GitHub Actions qui exécute `flutter test` et `flutter analyze`.
