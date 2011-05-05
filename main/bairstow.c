

/*****************************************************************************
* Bairstow's method Machine Problem for ES 204
* Author: Rebs S. Guarina
*
* used for finding the roots of an equation using Bairstow's method for
* equations up to the 15th degree
*
* Developed on OpenBSD 3.6 for i386
*/

#ifndef _BAIRSTOWLIB
#include "libbairstow.h"
#endif

#include<stdio.h>

int main(int argc, char **argv) {
    int n,maxiter=100;
    float x[DEGREE+1],epsilon=0.00001;
    //float a[DEGREE+1];

    /* Get degree of polynomial */
    n=getpoly();
    /* Get coefficients */
    getcoeff(n,x);
    /* Display parameters */
    putparam(n,x,epsilon,maxiter);
    /* Start Bairstow */
    bairstow(n,x,epsilon,maxiter);
    getsignal("Done...");
    return 0;
}
