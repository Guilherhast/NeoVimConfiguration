INDEX=index.vim

SOURCE     := $(abspath $(INDEX))
SOURCE_DIR := $(dir $(SOURCE))

# The folder names required by Vim
WINVIMRC   := _vimrc
WINVIMDIR  := vimfiles

UNIXVIMRC  := .vimrc
UNIXVIMDIR := .vim

CONFIG_DIR := vimConfig

# Define the sub-items we want to link dynamically
ITEMS := coc-settings.json colors vimConfig

ifeq ($(OS),Windows_NT)
	OUTPUT_VIMRC := $(USERPROFILE)/$(WINVIMRC)
	OUTPUT_DIR   := $(USERPROFILE)/$(WINVIMDIR)
else
	OUTPUT_VIMRC := $(HOME)/$(UNIXVIMRC)
	OUTPUT_DIR   := $(HOME)/$(UNIXVIMDIR)
endif

# Target paths for all the sub-items
TARGETS := $(addprefix $(OUTPUT_DIR)/,$(ITEMS))

.PHONY: all
all: $(OUTPUT_VIMRC) $(TARGETS)

ifeq ($(OS),Windows_NT)
# ==============================================================================
# --- Windows Rules ---
# ==============================================================================

# Rule for the main .vimrc/ _vimrc hardlink
$(OUTPUT_VIMRC): $(SOURCE)
	@if not exist "$@" ( \
		echo Creating Windows hard link $< to $@... && \
		fsutil hardlink create "$@" "$<" \
	) else ( \
		echo Error: $@ already exists. Will not overwrite. >&2 && \
		exit 1 \
	)

# Pattern rule for directories and settings files (using Windows directory junctions / file symlinks)
$(OUTPUT_DIR)/%: $(SOURCE_DIR)/%
	@echo "Linking Windows target $@..."
	@mkdir -p $(@D)
	@if exist "$@" (echo Error: $@ already exists. >&2 && exit 1)
	@if exist "$<"\* (mklink /J "$@" "$<") else (mklink "$@" "$<")

else
# ==============================================================================
# --- Unix/macOS Rules ---
# ==============================================================================

# Rule for the main .vimrc symlink
$(OUTPUT_VIMRC): $(SOURCE)
	@if [ ! -e "$@" ] || [ -L "$@" ]; then \
		echo "Creating Unix symlink $< to $@..."; \
		ln -sf "$<" "$@"; \
	else \
		echo "Error: $@ exists and is not a symbolic link!" >&2; \
		exit 1; \
	fi

# Pattern rule for directories and settings files (using Unix symlinks)
$(OUTPUT_DIR)/%: $(SOURCE_DIR)/%
	@echo "Creating Unix symlink to $@..."
	@mkdir -p $(@D)
	ln -sf $(abspath $<) $@

endif
