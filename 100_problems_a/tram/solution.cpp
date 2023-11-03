#include "solution.h"

int Solution::min_capacity(int n, std::vector<std::pair<int, int>> stops){
    
    int curr_max = -1;
    int curr_passengers = 0;

    for (std::pair<int, int> stop : stops){

        curr_passengers -= stop.first;
        curr_passengers += stop.second;

        curr_max = std::max(curr_max, curr_passengers);
    }

    return curr_max;
}

#ifndef RUN_TESTS
int main(){
    Solution* instance = new Solution();

    delete instance;

    return 0;
}
#endif