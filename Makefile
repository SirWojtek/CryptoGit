
PREFIX=/
INSTALL_PATH=$(PREFIX)bin

CLONE_FILE=git-clone-crypto
INIT_FILE=git-init-crypto
PASSWD_FILE=git-passwd-crypto

install:
	cp $(CLONE_FILE) $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/$(CLONE_FILE)

	cp $(INIT_FILE) $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/$(INIT_FILE)

	cp $(PASSWD_FILE) $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/$(PASSWD_FILE)

clean:
	rm -f $(INSTALL_PATH)/$(CLONE_FILE)
	rm -f $(INSTALL_PATH)/$(INIT_FILE)
	rm -f $(INSTALL_PATH)/$(PASSWD_FILE)
