#
# For lecture-01-19
#

######
#
all:: \
mylist2
#
regress:: \
mylist2; ./mylist2
#
cleanall:: ; $(RMF) mylist2
#
######

all:: \
show_square
#
regress:: \
show_square; ./show_square
#
cleanall:: ; $(RMF) show_square
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
