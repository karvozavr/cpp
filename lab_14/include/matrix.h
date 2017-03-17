#ifndef LAB_14_MATRIX
#define LAB_14_MATRIX

#include <vector>
#include <string>

class MatrixException {
 public:
  MatrixException() : error_info_("Unknown matrix error.") {}

  MatrixException(const std::string &message) : error_info_(message) {}

  const std::string &error_info() const;

 private:
  std::string error_info_;
};

class Matrix {
 public:


 private:
  std::vector<std::vector<int>> matrix_;
};

#endif // LAB_14_MATRIX
