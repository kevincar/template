#include "gtest/gtest.h"
#include "add.hpp"

TEST(AddTest, add)
{
	int const expected = 4;
	int const observed = add(2, 2);

	EXPECT_EQ(observed, expected);
}
