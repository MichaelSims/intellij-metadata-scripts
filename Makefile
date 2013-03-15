SHELL = /bin/sh

intellij-metadata-backup = $(DESTDIR)/usr/local/bin/intellij-metadata-backup
intellij-metadata-restore = $(DESTDIR)/usr/local/bin/intellij-metadata-restore
intellij-metadata-delete = $(DESTDIR)/usr/local/bin/intellij-metadata-delete

install: intellij-metadata-backup intellij-metadata-restore
	cp intellij-metadata-backup $(intellij-metadata-backup)
	chmod 755 $(intellij-metadata-backup)
	cp intellij-metadata-restore $(intellij-metadata-restore)
	chmod 755 $(intellij-metadata-restore)
	cp intellij-metadata-delete $(intellij-metadata-delete)
	chmod 755 $(intellij-metadata-delete)

uninstall:
	-rm -Rf $(intellij-metadata-backup) $(intellij-metadata-restore) $(intellij-metadata-delete)

.PHONY: install uninstall
