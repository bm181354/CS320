#
# For lecture-01-19
#

######

all:: fact
regress:: fact; ./fact
cleanall:: ; $(RMF) fact

######

%: %.dats; patscc -o $@ $<

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
