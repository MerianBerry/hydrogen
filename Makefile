
source_files := $(wildcard src/*.c)

$(info [${source_files}])

.PHONEY: all hydrogen

all: hydrogen

hydrogen: $(source_files)
	@gcc -Wpedantic -Wno-multichar -lm -c $< -o build/lib$@.a
	
