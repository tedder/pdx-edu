//
// Copyright (c) 2009 Ted Timmons <ted-code@perljam.net>
// This software is released under the MIT license, cited below.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

// Project Euler problem 8: find maximum product of 5 consecutive
// numbers in a string.
// http://projecteuler.net/index.php?section=problems&id=8
//
// Assumes it's easier to input as a string, substring it, then convert
// each integer to an integer. This is language-dependent.



// CONSEC_LENGTH - how long is our multiple? use a constant for now
// input number: to solve our specific problem, this will be pasted in.

// save our maximum product- it can be no larger than 9**CONSEC_LENGTH
// loop through length of string, minus CONSEC_LENGTH
  // assemble our substring
  // loop through substring
    // convert char to integer, find product of substring
    // greater than max? save it.

// output our max product

