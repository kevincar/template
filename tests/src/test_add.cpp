#include "add.hpp"
#include "gtest/gtest.h"

TEST(AddTest, add) {
  int const expected = 4;
  int const observed = add(2, 2);

  EXPECT_EQ(observed, expected);
}
