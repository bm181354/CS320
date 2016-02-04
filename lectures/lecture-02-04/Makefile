######

PATSCC=$(PATSHOME)/bin/patscc
PATSOPT=$(PATSHOME)/bin/patsopt

######

all:: \
quick_sort
quick_sort: \
quick_sort.dats ; \
$(PATSCC) -DATS_MEMALLOC_LIBC -o $@ quick_sort.dats

regress:: quick_sort; ./$<

######

all:: \
insertion_sort
insertion_sort: \
insertion_sort.dats ; \
$(PATSCC) -DATS_MEMALLOC_LIBC -o $@ insertion_sort.dats

regress:: insertion_sort; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

cleanall:: clean
cleanall:: ; rm -f quick_sort
cleanall:: ; rm -f insertion_sort
