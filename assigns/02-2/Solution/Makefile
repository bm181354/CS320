######
#
# A simple Makefile
#
######
#
PATSCC=patscc
PATSOPT=patsopt
#
ATSCC2JS=atscc2js
#
######

all:: \
assign2-2_sol
assign2-2_sol: \
assign2-2_sol.dats ; \
$(PATSCC) -DATS_MEMALLOC_LIBC -o $@ $<

######

RMF=rm -f

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_dats.c
clean:: ; $(RMF) *_dats.o

######

cleanall:: clean
cleanall:: ; $(RMF) assign2-2_sol

###### end of [Makefile] ######
