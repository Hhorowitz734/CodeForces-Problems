#include "solution.h"
#include <iostream>

int Solution::num_toasts_possible(int n, int k, int l, int c, int d, int p, int nl, int np){
    
    int total_drink = k * l;
    int lime_slices = c * d;
    int grams_salt = p;

    int rounds = 0;

    while (n * nl <= total_drink && n <= lime_slices && n * np <= grams_salt){
        total_drink -= n * nl;
        lime_slices -= n;
        grams_salt -= n * np;
        rounds++;
    }

    return rounds;
}

#ifndef RUN_TESTS
int main(){
    Solution* instance = new Solution();
    std::cout << instance->num_toasts_possible(
        5, 100, 10, 1, 19, 90, 4, 3
    ) << '\n';

    return 0;
}
#endif