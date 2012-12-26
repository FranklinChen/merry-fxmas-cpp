#ifndef MERRY_H
#define MERRY_H

#include <ostream>

template<int N>
auto say(std::ostream &out) -> void {
  out << "Merry Christmas Bill " << N << "!" << std::endl;
  say<N-1>(out);
}

template<>
auto say<0>(std::ostream &) -> void {
  // pass
}

#endif
