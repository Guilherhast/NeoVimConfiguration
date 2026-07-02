INDEX:= init.lua

SOURCE     := $(abspath $(INDEX))
SOURCE_DIR := $(dir $(SOURCE))

# The folder and file names required by Neovim

NVIMINIT   := init.lua
NVIMDIRSUFIX := nvim

# Define the sub-items we want to link dynamically (folders and files)
ITEMS := lua libs colors coc-settings.json pyrightconfig.json

ifeq ($(OS),Windows_NT)
	# On Windows, Neovim looks inside AppData/Local/nvim
	OUTPUT_DIR   := $(subst \,/,$(LOCALAPPDATA))/$(NVIMDIRSUFIX)
else
	# On Unix/macOS, Neovim looks inside ~/.config/nvim
	OUTPUT_DIR   := $(HOME)/.config/$(NVIMDIRSUFIX)
endif

OUTPUT_RC    := $(OUTPUT_DIR)/$(NVIMINIT)

# Target paths for all the sub-items inside the nvim directory
TARGETS := $(addprefix $(OUTPUT_DIR)/,$(ITEMS))

.PHONY: all
all: $(OUTPUT_RC) $(TARGETS)

ifeq ($(OS),Windows_NT)
# ==============================================================================
# --- Windows Rules ---
# ==============================================================================

# Rule for the main init.lua (Since it's already inside the nvim folder, we handle it)
$(OUTPUT_RC): $(SOURCE)
	@echo "Linking Windows Neovim entry target $@..."
	@mkdir -p $(@D)
	@if exist "$@" (echo Error: $@ already exists. >&2 && exit 1)
	@mklink "$@" "$<"

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

# Rule for the main init.lua symlink
$(OUTPUT_RC): $(SOURCE)
	@mkdir -p $(@D)
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
