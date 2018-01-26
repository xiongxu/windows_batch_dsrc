.PHONY: all

R1RawSuffix = .fastq.gz
rawFiles =  $(wildcard *$(R1RawSuffix))
FilesDsrc =  $(patsubst %$(R1RawSuffix),%.dsrc,$(rawFiles))
all: $(FilesDsrc)

define Mapping
$(subst $(R1RawSuffix),.dsrc,$1) : $1
	"$(CURDIR)\dsrc.exe" c -m2 -t2 $$< $$@
endef

$(foreach name, $(rawFiles), $(eval $(call Mapping,$(name))))

clean:
	rm -rf $(FilesDsrc)
