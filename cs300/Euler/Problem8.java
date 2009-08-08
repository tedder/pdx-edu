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


public class Problem8 {
  // CONSEC_LENGTH - how long is our multiple? use a constant for now
  public static final int CONSEC_LENGTH = 5;

  public static void main(String[] args) {
    // input number: to solve our specific problem, this will be pasted in.
    String bigNumber = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450";

    //Problem8 p = new Problem8();

    // save our maximum product- it can be no larger than 9**CONSEC_LENGTH
    int maxProduct = 0;

    // loop through length of string, minus CONSEC_LENGTH
    for (int i = 0; i < (bigNumber.length() - CONSEC_LENGTH); ++i) {
      System.out.println("i: " + i);

      // assemble our substring
      // loop through substring
        // convert char to integer, find product of substring
        // greater than max? save it.
    }

  } // end main

  // output our max product

} // end class


