#ifndef LAB_14_MATRIX
#define LAB_14_MATRIX

#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <cstddef>
#include <stdint.h>

class MatrixException {
 public:
  MatrixException() : error_info_("Unknown matrix error.") {}

  MatrixException(const std::string &message) : error_info_(message) {}

  const std::string &error_info() const {
    return error_info_;
  }

 private:
  std::string error_info_;
};

class Matrix {
 public:
  Matrix(size_t rows = 0, size_t cols = 0) : rows_(rows), cols_(cols) {
    matrix_.resize(rows, std::vector<int32_t>(cols, 0));
  }

  void ReshapeMatrix(size_t new_rows, size_t new_cols);

  Matrix &operator+=(const Matrix &other);

  Matrix &operator*=(const Matrix &other);

  size_t rows() const;

  size_t cols() const;

  int32_t &at(int row, int col);

  int32_t at(int row, int col) const;

  friend std::ifstream &operator>>(std::ifstream &ifs, Matrix &obj);

 private:
  std::vector<std::vector<int32_t>> matrix_;
  size_t rows_;
  size_t cols_;
};

std::ostream &operator<<(std::ostream &os, const Matrix &obj);

std::ifstream &operator>>(std::ifstream &ifs, Matrix &obj);

#endif // LAB_14_MATRIX
