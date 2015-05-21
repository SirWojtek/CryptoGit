
PREFIX=/
INSTALL_PATH=$(PREFIX)bin

install:
	cp git-clone-crypto $(INSTALL_PATH)
	chmod +x $(INSTALL_PATH)/git-clone-crypto
