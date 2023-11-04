#include <gtest/gtest.h>
#include "solution.h"

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
    EXPECT_EQ(800, instance->max_possible_sum(
        5, 1, 3, 4));
}

TEST_F(SolutionTests, TestTwo) {
    Solution* instance = new Solution();
    EXPECT_EQ(256, instance->max_possible_sum(
       1, 1, 1, 1));
}

#ifdef RUN_TESTS
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif