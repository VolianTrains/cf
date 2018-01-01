SLUG = cf
VERSION = 0.5.11
FLAGS += -D 0.5.0

SOURCES = $(wildcard src/*.cpp)

include ../../plugin.mk

.PHONY: dist
dist: all
	rm -rf dist
	mkdir -p dist/$(SLUG)
	cp LICENSE* dist/$(SLUG)/
	cp $(TARGET) dist/$(SLUG)/
	cp -R res dist/$(SLUG)/
	cd dist && zip -5 -r $(SLUG)-$(VERSION)-$(ARCH).zip $(SLUG)
