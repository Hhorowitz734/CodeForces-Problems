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
    EXPECT_EQ(2, instance->num_toasts_possible(
        3, 4, 5, 10, 8, 100, 3, 1));
}

TEST_F(SolutionTests, TestTwo) {
    Solution* instance = new Solution();
    EXPECT_EQ(3, instance->num_toasts_possible(
        5, 100, 10, 1, 19, 90, 4, 3));
}

TEST_F(SolutionTests, TestThree) {
    Solution* instance = new Solution();
    EXPECT_EQ(0, instance->num_toasts_possible(
        10, 1000, 1000, 25, 23, 1, 50, 1));
}


#ifdef RUN_TESTS
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif