SHELL = /bin/sh

intellij-metadata-backup = $(DESTDIR)/usr/local/bin/intellij-metadata-backup
intellij-metadata-restore = $(DESTDIR)/usr/local/bin/intellij-metadata-restore

install: intellij-metadata-backup intellij-metadata-restore
	cp intellij-metadata-backup $(intellij-metadata-backup)
	chmod 755 $(intellij-metadata-backup)
	cp intellij-metadata-restore $(intellij-metadata-restore)
	chmod 755 $(intellij-metadata-restore)

uninstall:
	-rm -Rf $(intellij-metadata-backup) $(intellij-metadata-restore)

.PHONY: install uninstall
