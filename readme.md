# Array With Priority

Lets you add items in groups of priority. Useful if you've got 10 tasks to run, and need 1,2,3 to happen before 4,5,6,7 and then 8,9 before 10 but don't care about the order in each cluster.

## Usage

    ap = ArrayWithPriority.new
    ap << :foo # default priority is 5
    ap.push :bar, :priority => 2
    ap.push :sed, :priority => 2
    ap.push :fud, :priority => 10
    
    ap.to_a # => [[:bar, :sed], [:foo], [:fud]]

## Installation

    gem install array_with_priority

## Licence

Copyright (c) 2011 Caius Durling <caius@swedishcampground.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
