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
    EXPECT_EQ(1, instance->valid_answers(9, 3));
}

TEST_F(SolutionTests, TestTwo) {
    Solution* instance = new Solution();
    EXPECT_EQ(1, instance->valid_answers(14, 28));
}

TEST_F(SolutionTests, TestThree) {
    Solution* instance = new Solution();
    EXPECT_EQ(0, instance->valid_answers(4, 20));
}


#ifdef RUN_TESTS
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif