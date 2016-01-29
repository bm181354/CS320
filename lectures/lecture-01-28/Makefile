#
# For lecture-01-19
#

######
#
all:: \
mylist
#
regress:: \
mylist; ./mylist
#
cleanall:: ; $(RMF) mylist
#
######

%: %.dats; patscc -DATS_MEMALLOC_LIBC -o $@ $<

######

RMF=rm -f

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.c

cleanall:: clean

###### end of [Makefile] ######
