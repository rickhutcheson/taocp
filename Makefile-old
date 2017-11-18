# Makefile for TAOCP
# Description: Builds assorted pdf files for TAOCP notes.

define TEX_IN
styles
:tex
:img
endef

define BIB_IN
# FILL ME IN
endef

define OUT_TYPES
dvi pdf
endef

define TEMP_TYPES
acn acr alg aux bbl blg glg glo gls idx ilg ind ist log lox out toc thm
endef

# Constants
SILENCE    = 2>/dev/null || true
LFLAGS     = \\nonstopmode\\input
AUX_DIR	   = aux
OUT_DIR	   = output
TEX_DIR	   = tex
# Workaround: Remove all spaces from string
space :=
space +=

# Rules / Recipes
all: pdf dvi

dvi:
	make .build TEX=~/Environment/Utilities/TeX/latest/bin/x86_64-darwin/tex

pdf:
	make .build TEX=~/Environment/Utilities/TeX/latest/bin/x86_64-darwin/pdftex

loop:
	while [ true ]; do make .build TEX=~/Environment/Utilities/TeX/latest/bin/x86_64-darwin/pdftex; sleep 1; done

.build:
	@mkdir -p $(AUX_DIR)
	@mkdir -p $(OUT_DIR)
	$(TEX)  $(LFLAGS) $(TEX_DIR)/answers $(SILENCE)
	$(TEX)  $(LFLAGS) $(TEX_DIR)/mix $(SILENCE)
	$(TEX)  $(LFLAGS) $(TEX_DIR)/notes $(SILENCE)
	@make .movefiles
	@echo "Build Succeeded."

# Cleanup temp files
.movefiles:
	@echo "Removing temporary files..."
	@CMD=:
	@CMD=	$(foreach t,$(subst $(space), , $(strip $(TEMP_TYPES))), && \
		mv *.$(t) $(AUX_DIR) $(SILENCE))
	$(shell $(CMD))

# Cleanup output files
	@echo "Moving Output Files..."
	@CMD=:
	@CMD=	$(foreach t,$(subst $(space), , $(strip $(OUT_TYPES))), && \
		mv *.$(t) $(OUT_DIR) $(SILENCE))
	$(shell $(CMD))

# Remove all generated files
clean:.movefiles
	@echo "Removing temporary and output files..."
	@rm -rf $(AUX_DIR) $(SILENCE)
	@rm -rf $(OUT_DIR) $(SILENCE)
	@echo "Done."
