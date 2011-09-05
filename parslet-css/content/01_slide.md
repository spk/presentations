!SLIDE bullets incremental transition=fade
# CSS Parsing #

## [github.com/andrewtimberlake/css](https://github.com/andrewtimberlake/css)

* \- Regexp based
* \- media, import, ...
* \+ Errors

!SLIDE bullets incremental transition=fade

## [github.com/alexdunae/css_parser](https://github.com/alexdunae/css_parser)

* \- Regexp based
* \- No errors (act like a browser parser)
* \+ Seems CSS 2.1 ok

!SLIDE bullets incremental transition=fade

## [https://github.com/tenderlove/csspool](https://github.com/tenderlove/csspool)

* \+ Racc based (bison like for Ruby)
* \+ Racc::ParseError
* \+ CSS 2.1
* \+/- Was using libcroco, not usable when i test it. (now ok)

!SLIDE bullets incremental transition=fade

## [github.com/spk/parslet-css](https://github.com/spk/parslet-css)

* \+ Parslet based
* \+ Parslet::ParseFailed
* \+ Seems CSS 2.1 ok, some CSS 3
* \- Not faster
* \- A lot of TODO
* \+/- Good start for first step with PEG (Parsing Expression Grammar).


!SLIDE

# Usage

    @@@ Ruby
    require 'parslet-css'
    parser = ParsletCSS::Parser.new
    parser.parse("* {background:url(plop.png);}")
    # => [{:url=>"plop.png"@18}]

!SLIDE bullets

# Spot check!

* [Get started](http://kschiess.github.com/parslet/get-started.html)
