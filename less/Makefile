ifneq ($(shell which lessc),)
	LESSC=lessc
else
	LESSC=node_modules/.bin/lessc
endif
LESSC=lessc
export LESSC

CSSDIR=../static/css/

all :
	$(LESSC) app.less --clean-css="--s1 --advanced" $(CSSDIR)write.css
	$(LESSC) fonts.less --clean-css="--s1 --advanced" $(CSSDIR)fonts.css
	$(LESSC) icons.less --clean-css="--s1 --advanced" $(CSSDIR)icons.css

clean :
	rm -f write.css
	rm -f fonts.css
	rm -f icons.css
