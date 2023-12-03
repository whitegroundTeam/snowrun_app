SHELL=/bin/bash

runner:
	@echo "### build runner 실행 ###"
	@if command -v fvm &> /dev/null; then \
		fvm flutter clean && fvm flutter pub get && dart run build_runner build --delete-conflicting-outputs; \
	else \
		flutter clean && flutter pub get && dart run build_runner build --delete-conflicting-outputs; \
	fi

watch:
	@echo "### build runner 실행 ###"
	@dart run build_runner watch --delete-conflicting-outputs

clean:
	@echo "### delete generated files ###"
	@find . -type f -name "*.freezed.dart" -delete
	@find . -type f -name "injection.config.dart" -delete
	@find . -type f -name "router.gr.dart" -delete