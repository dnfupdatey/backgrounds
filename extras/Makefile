F30_DIR=$(DESTDIR)/usr/share/backgrounds/f30
GNOME_BG_DIR=$(DESTDIR)/usr/share/gnome-background-properties
MATE_BG_DIR=$(DESTDIR)/usr/share/mate-background-properties
KDE_BG_DIR=$(DESTDIR)/usr/share/wallpapers/
XFCE_BG_DIR=$(DESTDIR)/usr/share/xfce4/backdrops
MKDIR=/bin/mkdir -p
INSTALL=/usr/bin/install -p -m644 -D
LN_S=/bin/ln -s

THEMES_JPG=blue-mystic\
	pink-house\
	i-see-stars\
	lonely-tree-in-kenya\
	sunset-on-skye\
	mountains-of-north-iran\
	great-oak-in-claremont\
	enjoying-the-sun\
	mushroom-family\
	fabric\
	wheat\
	snow-on-balanced-rock
THEMES_PNG=canadian-rockies\
	zen-lover\
	dortmund-sunset\
	wasser-im-winter

all:

install:
	$(MKDIR) $(F30_DIR)/extras
	$(MKDIR) $(GNOME_BG_DIR)
	$(MKDIR) $(MATE_BG_DIR)
	$(MKDIR) $(XFCE_BG_DIR)
	$(INSTALL) f30-extras.xml 				$(F30_DIR)/extras/f30-extras.xml
	$(INSTALL) gnome-backgrounds-f30-extras.xml 	$(GNOME_BG_DIR)/f30-extras.xml
	$(INSTALL) mate-backgrounds-f30-extras.xml 	$(MATE_BG_DIR)/f30-extras.xml
	for theme in $(THEMES_JPG) ; do \
	  $(INSTALL) $${theme}.jpg $(F30_DIR)/extras/$${theme}.jpg ;\
	  $(MKDIR) $(KDE_BG_DIR)/F30_$${theme}/contents/images ;\
	  $(INSTALL) $${theme}.desktop $(KDE_BG_DIR)/F30_$${theme}/metadata.desktop ; \
	  for res in 1280x1024 \
		     640x480 800x600 1024x768 1152x864 1200x900 1280x960 1440x1080 1600x1200 1600x1280 1920x1440 2048x1536 \
		     800x480 1024x600 1152x720 1280x720 1280x768 1280x800 1366x768 1440x900 1680x1050 1920x1080 1920x1200 ; do \
	    $(LN_S) ../../../../backgrounds/f30/extras/$${theme}.jpg \
	            $(KDE_BG_DIR)/F30_$${theme}/contents/images/$${res}.jpg ; \
	  done; \
	  $(LN_S) ../../backgrounds/f30/extras/$${theme}.jpg \
			$(XFCE_BG_DIR)/f30-$${theme}.jpg ;\
	done;
	for theme in $(THEMES_PNG) ; do \
	  $(INSTALL) $${theme}.png $(F30_DIR)/extras/$${theme}.png ;\
	  $(MKDIR) $(KDE_BG_DIR)/F30_$${theme}/contents/images ;\
	  $(INSTALL) $${theme}.desktop $(KDE_BG_DIR)/F30_$${theme}/metadata.desktop ; \
	  for res in 1280x1024 \
		     640x480 800x600 1024x768 1152x864 1200x900 1280x960 1440x1080 1600x1200 1600x1280 1920x1440 2048x1536 \
		     800x480 1024x600 1152x720 1280x720 1280x768 1280x800 1366x768 1440x900 1680x1050 1920x1080 1920x1200 ; do \
	    $(LN_S) ../../../../backgrounds/f30/extras/$${theme}.png \
	            $(KDE_BG_DIR)/F30_$${theme}/contents/images/$${res}.png ; \
	  done; \
	  $(LN_S) ../../backgrounds/f30/extras/$${theme}.png \
			$(XFCE_BG_DIR)/f30-$${theme}.png ;\
	done;

