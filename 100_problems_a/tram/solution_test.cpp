#include <gtest/gtest.h>
#include "solution.h"
#include <vector>
#include <utility>

class SolutionTests : public ::testing::Test {

    protected:

        Solution* instance;

        void SetUp() override {
            instance = new Solution();
        }

        void TearDown() override {
            delete instance;
        }

};

TEST_F(SolutionTests, TestOne) {
    Solution* instance = new Solution();
    std::vector<std::pair<int, int>> seats = {
        {0, 3},
        {2, 5},
        {4, 2},
        {4, 0}
    };
    EXPECT_EQ(6, instance->min_capacity(4, seats));
}


#ifdef RUN_TESTS
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif