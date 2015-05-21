
PREFIX=/
INSTALL_PATH=$(PREFIX)bin
CLONE_FILE=git-clone-crypto

install:
	cp $(CLONE_FILE) $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/$(CLONE_FILE)

clean:
	rm -f $(INSTALL_PATH)/$(CLONE_FILE)
