# colors

* http://github.com/apohllo/colors

## DESCRIPTION:

Colorful strings in Ruby!

## FEATURES/PROBLEMS:

* whole/partial string colorization is  possible

* if you use Readline, there might be some problems with multiline strings

## SYNOPSIS:

Colors is an extension for Ruby String class, which provides colorful strings.
It uses ANSI control sequences, thus works in any ANSI-compliant
terminal.

## INSTALL:

As easy as:

```
  $ gem install colors
```


## BASIC USAGE: 

Require the gem:

```ruby
require 'rubygems'
require 'colors'
```

Get the string bolded with +hl+:
  
```ruby
"abc".hl #=> *abc*
```

Get the string colored:

```ruby
"abc".hl(:red) #=> *abc* (it is red, no kidding :)
```

Get some words within the string colored (only whole words are colored):
  
```ruby
"abc abcde abc".hl(:blue, "abc") #=> *abc* abcde *abc*
```

## Available colors

* gray
* red
* green
* yellow
* blue
* purple
* lightblue
* white
* red_bg
* green_bg
* yellow_bg
* blue_bg
* purple_bg
* lightblue_bg
* white_bg


## LICENSE:
 
(The MIT License)

Copyright (c) 2009 Aleksander Pohl

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## FEEDBACK

* mailto:apohllo@o2.pl
