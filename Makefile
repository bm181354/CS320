#
# A simple Makefile
#

######

all::

######
#
# Adding a upstream:
#
# git remote add upstream \
#   https://bithwxi@bitbucket.org/bithwxi/cs320-2016-spring.git
#
######
#
# update:: ; \
# 	git fetch upstream
#	git checkout master
#	git merge upstream/master
#
######
#
git-push:: ; \
  git push -u https://bithwxi:xav640707@bitbucket.org/bithwxi/cs320-2016-spring-hwxi.git
#
######

###### end of [Makefile] ######
