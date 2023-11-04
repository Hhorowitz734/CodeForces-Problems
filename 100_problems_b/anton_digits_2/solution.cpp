#include "solution.h"
#include <unordered_map>

int Solution::max_possible_sum(int k2, int k3, int k5, int k6){

    int count;

    while(k2 > 0 && k5 > 0 && k6 > 0){
        k2--;
        k5--;
        k6--;
        count += 256;
    }

    while (k2 > 0 && k3 > 0){
        k2--;
        k3--;
        count += 32;
    }

    return count;
};

#ifndef RUN_TESTS
int main(){

    return 0;
}
#endif