.PHONY: gen run

run:
	fvm flutter run
gen:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs
watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
pubget:
	fvm flutter pub get