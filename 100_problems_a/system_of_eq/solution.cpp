#include "solution.h"
#include <math.h>
#include <algorithm>
#include <iostream>

int Solution::valid_answers(int n, int m){

    int count = 0;

    for (int i = 0; i <= sqrt(n); i++){

        int j = n - i * i;
        if (i + j * j == m){ count++; }

    }

    return count;
}

#ifndef RUN_TESTS
int main(){
    Solution* instance = new Solution();
    std::cout << instance->valid_answers(9, 3) << '\n';

    return 0;
}
#endif