#include "matrix.h"
#include <array>

size_t GetRegisterIndex(std::string &s) {
  return (size_t) (s[1] - '0');
}

int main() {
  std::array<Matrix, 10> registers;
  std::string command_buffer;
  while (true) {
    std::cin >> command_buffer;

    if (command_buffer == "load") {
      std::cin >> command_buffer;
      size_t register_index = GetRegisterIndex(command_buffer);

      std::cin >> command_buffer;
      std::ifstream ifs(command_buffer.c_str());
      ifs >> registers[register_index];

      continue;
    }

    if (command_buffer == "print") {
      std::cin >> command_buffer;
      size_t register_index = GetRegisterIndex(command_buffer);

      std::cout << registers[register_index];

      continue;
    }

    if (command_buffer == "add") {
      std::cin >> command_buffer;
      size_t register_index_1 = GetRegisterIndex(command_buffer);
      std::cin >> command_buffer;
      size_t register_index_2 = GetRegisterIndex(command_buffer);

      try {
        registers[register_index_1] += registers[register_index_2];
      } catch (const MatrixException &e) {
        std::cerr << e.error_info() << std::endl;
      }

      continue;
    }

    if (command_buffer == "mul") {
      std::cin >> command_buffer;
      size_t register_index_1 = GetRegisterIndex(command_buffer);
      std::cin >> command_buffer;
      size_t register_index_2 = GetRegisterIndex(command_buffer);

      try {
        registers[register_index_1] *= registers[register_index_2];
      } catch (const MatrixException &e) {
        std::cerr << e.error_info() << std::endl;
      }

      continue;
    }

    if (command_buffer == "elem") {
      std::cin >> command_buffer;
      size_t register_index = GetRegisterIndex(command_buffer);
      int i, j;
      std::cin >> i >> j;

      try {
        std::cout << registers[register_index].at(i, j) << std::endl;
      } catch (const MatrixException &e) {
        std::cerr << e.error_info() << std::endl;
      }

      continue;
    }

    if (command_buffer == "exit") {
      return 0;
    }
  }
}

