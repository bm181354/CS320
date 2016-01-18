#
# A simple Makefile
#
include $(PATSHOME)/share/atsmake-pre.mk
#
include $(PATSHOME)/share/atsmake-post.mk
#
all:: \
assign0_sol
assign0_sol: \
assign0_sol.dats ; \
$(PATSCC2) -o assign0_sol assign0_sol.dats
cleanall:: ; $(RMF) assign0_sol
#
RMF=rm -f
#
PATS2XHTML=$(PATSHOME)/bin/pats2xhtml
%_dats.html: %.dats ; $(PATS2XHTML) -o $@ -d $<
#
cleanall:: ; $(RMF) *_?ats.c
#
###### end of [Makefile] ######
