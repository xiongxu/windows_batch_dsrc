.PHONY: all

R1RawSuffix = .dsrc
rawFiles =  $(wildcard *$(R1RawSuffix))
FilesDsrc =  $(patsubst %$(R1RawSuffix),%.fastq,$(rawFiles))
all: $(FilesDsrc)

define decompress
$(subst $(R1RawSuffix),.fastq,$1) : $1
	"$(CURDIR)\dsrc.exe" d -m2 -t2 $$< $$@
endef

$(foreach name, $(rawFiles), $(eval $(call decompress,$(name))))

clean:
	rm -rf $(FilesDsrc)
