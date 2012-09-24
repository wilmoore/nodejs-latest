nodejs-install: nodejs installer for *nix-like systems
========================================================

This utility is a very simple wrapper of a pattern I use to install multiple NodeJS versions without conflict. Best if used with [node-version](http://github.com/wilmoore/node-version).


Usage Examples
------------------------------

    % nodejs-install


Requirements
------------------------------

*   [required] Linux or Mac OS X, awk, curl, uname


Installing
------------------------------

**Download**

    % mkdir -p $HOME/local/nodejs-install
    % cd !$
    % curl -# -L https://github.com/wilmoore/nodejs-install/tarball/master | tar -xz --strip 1
    % chmod a+x bin/*
    % export PATH=${HOME}/local/nodejs-install/bin:${PATH}
    % cd -

**Path Setup**

Best if used with [nodejs-version](http://github.com/wilmoore/nodejs-version); however, you may alternatively export the ${PATH} and ${MANPATH} environment variables manually.


Changelog
------------------------------

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

