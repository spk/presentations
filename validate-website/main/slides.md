!SLIDE
## Laurent Arnoud
## @af83
## 2012-07-03

!SLIDE bullets incremental transition=fade
# Intro #

* Started in 2009 for a little website
* First FOSS Ruby project (maybe help me to have my job @af83)
* A lot of similar project but not very fast

!SLIDE
# Similar projects

* [w3c-markup-validator](http://validator.w3.org/)
	* Installation simple with Debian package w3c-markup-validator
	* Heavy apache, perl ...
* [w3c-linkchecker](http://validator.w3.org/checklink)
	* Same as w3c-markup-validator
* [tidy](http://tidy.sourceforge.net/)
	* Check syntax but not all
* [webcheck](http://arthurdejong.org/webcheck/)
	* Good tool can be complementary for validate-website (report, list 404)
* [linkchecker](http://linkchecker.sourceforge.net/)
	* Most complete (GUI, console, CGI)
	* HTML and CSS syntax check
	* Use w3c webservices

!SLIDE

First POC use libxml-ruby with dtd check and a custom little spider.

Very simple but not very fast.

!SLIDE

# Second life

Discover `nokogiri`, `markup_validity` and `anemone` ... refacto time.

!SLIDE

What ?

* Console based
* Crawl website url and syntax check
* Static website url and syntax check
* Use dtd and xsd when possible
* 404 check also in CSS
* Log

!SLIDE

# Demo

[<img src="/validate-website.png">](https://github.com/spk/validate-website)

!SLIDE

# That's all °\o/°
