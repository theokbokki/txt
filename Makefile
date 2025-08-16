# Makefile

CONTENT = ./public/content.txt
BACKUP = ./content.txt.bak

wrap:
	cp $(CONTENT) $(BACKUP)
	TEMP=$$(mktemp) && \
	fold -s -w 80 $(CONTENT) > $$TEMP && \
	cat $$TEMP > $(CONTENT) && \
	rm $$TEMP
