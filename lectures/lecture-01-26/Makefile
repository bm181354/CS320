#
# A simple Makefile
#
include $(PATSHOME)/share/atsmake-pre.mk
#
include $(PATSHOME)/share/atsmake-post.mk
#
ATSCC2JS=$(PATSHOME)/bin/atscc2js
#
all:: \
draw_sierpinski
draw_sierpinski: \
draw_sierpinski.dats ; \
$(PATSCC2) -DATS_MEMALLOC_LIBC -o $@ $<
regress:: draw_sierpinski; ./$<
cleanall:: ; $(RMF) draw_sierpinski
#
all:: \
draw_sierpinski_js_dats.js
draw_sierpinski_js_dats.js: draw_sierpinski_js.dats ; \
$(PATSCC2) -DATS_MEMALLOC_LIBC -ccats -o $@ $< && $(ATSCC2JS) -i draw_sierpinski_js_dats.c > $@
#
testall:: all
testall:: regress
testall:: cleanall
#
cleanats:: ; $(RMF) *~
cleanats:: ; $(RMF) *_?ats.c
#
cleanall:: cleanats
cleanall:: ; $(RMF) draw_sierpinski_js_dats.js
#
###### end of [Makefile] ######
