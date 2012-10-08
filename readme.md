Discover / Install the latest binary release of NodeJS
========================================================

Installing the binary version of NodeJS is simple; however, it quickly becomes a tedius chore. `nodejs-latest`, displays the latest available binary release and `nodejs-latest -i` will download and extract it.


How is this helpful?
------------------------------

It can become tedious to continually:

-   Scan the NodeJS download page for a new release.
-   Locate the correct platform (Mac/Linux, x64/x86).
-   Download and extract.
-   Update `$PATH` and `$MANPATH` accordingly (actually see [nodejs-version][nodejs-version] for that).

`nodejs-latest -i` handles this for you.


Usage Example
------------------------------

What is the latest binary release?:

    % nodejs-latest

Install the latest binary release:

    % nodejs-latest -i

Install the latest binary release to an alternative prefix:

    % PREFIX=/path/to/nodejs/versions nodejs-latest -i

Install the latest binary relase (forcefully overwriting a previous installation):

    % nodejs-latest -if

Show program version:

    % nodejs-latest -v

Help:

    % nodejs-latest -h


Requirements
------------------------------

*   [required] Linux or Mac OS X, awk, curl, uname


Install/Upgrade
------------------------------

    % rm -rdif $HOME/local/nodejs-latest
    % mkdir -p !$
    % cd !$
    % curl -#L https://github.com/wilmoore/nodejs-latest/tarball/master | tar -xz --strip 1
    % chmod a+x bin/*
    % export PATH=$HOME/local/nodejs-latest/bin:$PATH
    % cd -

I like to use [nodejs-version][nodejs-version] to toggle between versions; however, you may alternatively export `$PATH` and `$MANPATH` manually if you do not wish to toggle between versions.


Changelog
------------------------------

-   (0.0.6) 20121008: Stable Report-only mode.
-   (0.0.3) 20120926: Renamed to `nodejs-latest` from `node-latest`.
-   (0.0.1) 20120923: Initial Usable Release.


LICENSE
------------------------------

    (The MIT License)

    Copyright (c) 2012 Wil Moore III <wil.moore@wilmoore.com>

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is furnished
    to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.



[nodejs-version]: http://github.com/wilmoore/nodejs-version
