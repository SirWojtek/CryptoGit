
PREFIX=/
INSTALL_PATH=$(PREFIX)bin

CLONE_FILE=git-clone-crypto
INIT_FILE=git-init-crypto

install:
	cp $(CLONE_FILE) $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/$(CLONE_FILE)

	cp $(INIT_FILE) $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/$(INIT_FILE)

clean:
	rm -f $(INSTALL_PATH)/$(CLONE_FILE)
	rm -f $(INSTALL_PATH)/$(INIT_FILE)
