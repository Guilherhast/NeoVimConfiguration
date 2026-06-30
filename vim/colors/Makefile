#HOME=$(shell echo $HOME)

LOCAL=.
## Plug folder

NVIMTHEMESSUFIX=.local/share/nvim/site/pack/packer/start/vim-airline-themes/autoload/airline/themes
VIMTHEMESSUFIX=.vim/plugged/vim-airline-themes/autoload/airline/themes

NVIMTHEMESFOLDER=$(HOME)/$(NVIMTHEMESSUFIX)
VIMTHEMESFOLDER=$(HOME)/$(VIMTHEMESSUFIX)

BASENAME=dew
DESTNAME=$(BASENAME).vim
ORINAME=airline-$(BASENAME).vim

# Targets
NVIMDESTFILE=$(NVIMTHEMESFOLDER)/$(DESTNAME)
VIMDESTFILE=$(VIMTHEMESFOLDER)/$(DESTNAME)
ORIFILE=$(LOCAL)/$(ORINAME)


default: airline
	echo done

airline: $(ORIFILE)
	cp $(ORIFILE) $(NVIMDESTFILE)
	cp $(ORIFILE) $(VIMDESTFILE)
