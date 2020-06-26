OUTPUT_NAME = fake-cam
OUTPUT_PATH = .
ARAVIS_SRC_PATH = ./aravis
ARAVIS_INST_PATH = ./aravis-inst
TOOLCHAIN_PREFIX = 

SRC_FILES = arvfakegvcamera.c
OBJ_PATH  = .

INCLUDE_PATH =	-I$(OUTPUT_PATH)/patched \
				-I$(ARAVIS_INST_PATH)/include/aravis-0.6 \
				-I$(ARAVIS_SRC_PATH)/src \
				-I/usr/include/glib-2.0 \
				-I/usr/lib/glib-2.0/include \
				-I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include \
				-I/usr/lib/libffi-3.2.1/include \
				-I/usr/include/libmount \
				-I/usr/include/blkid \
				-I/usr/include/uuid \
				-I/usr/include/libxml2 \
				-I/usr/include/libusb-1.0

PATCH_FILES = $(ARAVIS_SRC_PATH)/src/arvbufferprivate.h


LIBS_PATH =	-L$(ARAVIS_INST_PATH)/lib \
			-L/usr/lib

LIBS =	-laravis-0.6 -lm -lgio-2.0 -lgobject-2.0 -lxml2 -lgthread-2.0 -pthread -lglib-2.0 -lz -lusb-1.0 -laudit
		#-lffi -lpcre -lv4l2
 
OPTIM_OPTS =	-O2 -fpermissive -DEXTENSION_BUILD
SPEC_OPTS =		-Wl,-rpath,/usr/lib
#####
all: patch x64 postbuild

patch: $(PATCH_FILES)
	mkdir -p $(OUTPUT_PATH)/patched
	cp --remove-destination $(PATCH_FILES) -t $(OUTPUT_PATH)/patched
	patch -d $(OUTPUT_PATH)/patched < ./patch.txt

x64: 	$(patsubst %.cpp,%.x64.o,$(filter %.cpp,$(SRC_FILES))) \
     	$(patsubst %.cc,%.x64.o,$(filter %.cc,$(SRC_FILES))) \
     	$(patsubst %.c,%.x64.o,$(filter %.c,$(SRC_FILES)))
	$(TOOLCHAIN_PREFIX)g++ $(addprefix $(OBJ_PATH)/,$(notdir $^)) $(LIBS_PATH) $(LIBS) -o $(OUTPUT_PATH)/$(OUTPUT_NAME)

%.x64.o: %.cpp
	$(TOOLCHAIN_PREFIX)g++ $(INCLUDE_PATH) $(OPTIM_OPTS) $(SPEC_OPTS) -c $^ -o $(OBJ_PATH)/$(notdir $@)
%.x64.o: %.cc
	$(TOOLCHAIN_PREFIX)g++ $(INCLUDE_PATH) $(OPTIM_OPTS) $(SPEC_OPTS) -c $^ -o $(OBJ_PATH)/$(notdir $@)
%.x64.o: %.c
	$(TOOLCHAIN_PREFIX)gcc $(INCLUDE_PATH) $(OPTIM_OPTS) $(SPEC_OPTS) -c $^ -o $(OBJ_PATH)/$(notdir $@)

postbuild:	$(OUTPUT_PATH)/patched
	rm -rf $(OUTPUT_PATH)/patched

#####

.PHONY: clean
clean:
	rm $(OBJ_PATH)/*.o
