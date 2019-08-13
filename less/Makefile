LESSC=node_modules/.bin/lessc
CSSDIR=../static/css/

all : install
	$(LESSC) app.less --clean-css="--s1 --advanced" $(CSSDIR)write.css
	$(LESSC) fonts.less --clean-css="--s1 --advanced" $(CSSDIR)fonts.css
	$(LESSC) icons.less --clean-css="--s1 --advanced" $(CSSDIR)icons.css

install :
	npm i less less-plugin-clean-css

clean :
	rm -f write.css
	rm -f fonts.css
	rm -f icons.css
