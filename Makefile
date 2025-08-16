# Makefile

SYMLINK = "./public/content-sync.txt"
CONTENT = "./public/content.txt"
BACKUP = "./content.txt.bak"

wrap:
	cp $(SYMLINK) $(BACKUP)
	TEMP=$$(mktemp) && \
	fold -s -w 80 $(SYMLINK) > $$TEMP && \
	cat $$TEMP > $(SYMLINK) && \
	cp $$TEMP $(CONTENT) && \
	rm $$TEMP
