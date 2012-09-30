Behold the latest binary version of NodeJS
========================================================

Find out the latest available version of NodeJS or install the binary. I quickly got tired of typing in the URL, locating the latest directory, downloading the tarball, extracting, and updating ${PATH}. Now, when a new version of NodeJS comes out (check with `nodejs-latest`), I install with `nodejs-latest -i`.


How is this helpful
------------------------------

I'm lazy and I got tired of:

-   Looking up the NodeJS ftp site.
-   Locating the correct binary (Mac or Linux, x64 or x86)
-   Downloading
-   Extracting
-   Updating my $PATH environment variable to point to the right place (see [nodejs-version](http://github.com/wilmoore/nodejs-version) for that)

Usage Example
------------------------------

Show latest NodeJS version available:

    % nodejs-latest

Install latest NodeJS version:

    % nodejs-latest -i

Install latest NodeJS version (forcefully overwrites a previous installation of this version):

    % nodejs-latest -fi

Show `nodejs-latest` version info:

    % nodejs-latest


Requirements
------------------------------

*   [required] Linux or Mac OS X, awk, curl, uname


Installing
------------------------------

**Download**

    % mkdir -p $HOME/local/nodejs-latest
    % cd !$
    % curl -# -L https://github.com/wilmoore/nodejs-latest/tarball/master | tar -xz --strip 1
    % chmod a+x bin/*
    % export PATH=${HOME}/local/nodejs-latest/bin:${PATH}
    % cd -

**Path Setup**

Best if used with [nodejs-version](http://github.com/wilmoore/nodejs-version); however, you may alternatively export the ${PATH} and ${MANPATH} environment variables manually.


Changelog
------------------------------

-   (0.0.3) 20120926: Renamed to `nodejs-latest`.
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

