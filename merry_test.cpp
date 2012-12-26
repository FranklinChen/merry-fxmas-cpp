#include <sstream>
#include "merry.h"

#include "gtest/gtest.h"

TEST(say, UnrollsThreeTimes) {
  std::stringstream buf;
  say<3>(buf);

  const std::string expected = R"(Merry Christmas Bill 3!
Merry Christmas Bill 2!
Merry Christmas Bill 1!
)";

  ASSERT_EQ(expected, buf.str());
}

auto main(int argc, char **argv) -> int {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
