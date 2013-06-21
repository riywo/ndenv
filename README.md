# ndenv - another node.js version manager
ndenv is similar to [rbenv](https://github.com/sstephenson/rbenv), manages multi versions node.js. Unlike [nvm](https://github.com/creationix/nvm), ndenv automatically change node version using `.node-version` file locally.

    $ node -v
    v0.10.12
    $ cd latest-app
    $ cat .node-version
    v0.11.2
    $ node -v
    v0.11.2

Almost all of code come from rbenv. Thanks a lot!

## INSTALL

    $ git clone https://github.com/riywo/ndenv ~/.ndenv
    $ echo 'export PATH="$HOME/.ndenv/bin:$PATH"' >> ~/.bash_profile
    $ echo 'eval "$(ndenv init -)"' >> ~/.bash_profile
    $ exec $SHELL -l

I recommend using [node-build](https://github.com/riywo/node-build) for installing node itself. See also node-build.

    $ ndenv install v0.10.12
    $ ndenv rehash

## LICENSE

(The MIT license)

Copyright (c) 2013 Ryosuke Iwanaga

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    
