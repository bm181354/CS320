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
assign2_sol
assign2_sol: \
assign2_sol.dats ; $(PATSCC) -o $@ $<

######
#
all:: \
DigitalClock_sol_dats.js
DigitalClock_sol_dats.c: DigitalClock_sol.dats; $(PATSCC) -ccats $<
DigitalClock_sol_dats.js: DigitalClock_sol_dats.c; $(ATSCC2JS) -o $@ -i $<
#
######

RMF=rm -f

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_dats.c
clean:: ; $(RMF) *_dats.o

######

cleanall:: clean
cleanall:: ; $(RMF) assign2_sol
cleanall:: ; $(RMF) DigitalClock_sol_dats.js

###### end of [Makefile] ######
