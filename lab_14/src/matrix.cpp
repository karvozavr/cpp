#include "matrix.h"

size_t Matrix::rows() const {
  return rows_;
}

size_t Matrix::cols() const {
  return cols_;
}

int32_t &Matrix::at(int row, int col) {
  if (row >= (int)rows() || col >= (int)cols() || row < 0 || col < 0) {
    throw MatrixException("ACCESS: bad index.");
  }
  return matrix_[row][col];
}

int32_t Matrix::at(int row, int col) const {
  if (row >= (int)rows() || col >= (int)cols() || row < 0 || col < 0) {
    throw MatrixException("ACCESS: bad index.");
  }
  return matrix_[row][col];
}

void Matrix::ReshapeMatrix(size_t new_rows, size_t new_cols) {
  matrix_.resize(new_rows, std::vector<int32_t>(new_cols, 0));
  rows_ = new_rows;
  cols_ = new_cols;
}

Matrix &Matrix::operator+=(const Matrix &other) {
  if (other.rows_ != rows_ || other.cols_ != rows_) {
    throw MatrixException("ADD: dimensions do not match.");
  }

  for (size_t i = 0; i < rows_; ++i) {
    for (size_t j = 0; j < cols_; ++j) {
      matrix_[i][j] += other.matrix_[i][j];
    }
  }

  return *this;
}

Matrix &Matrix::operator*=(const Matrix &other) {
  if (other.rows_ != cols_) {
    throw MatrixException("MUL: #arg1.columns != #arg2.rows.");
  }

  Matrix result_matrix(rows_, other.cols_);

  for (size_t i = 0; i < rows_; ++i) {
    for (size_t j = 0; j < other.cols_; ++j) {
      for (size_t k = 0; k < cols_; ++k) {
        result_matrix.matrix_[i][j] += matrix_[i][k] * other.matrix_[k][j];
      }
    }
  }

  std::swap<Matrix>(*this, result_matrix);

  return *this;
}

std::ostream &operator<<(std::ostream &os, const Matrix &obj) {
  for (size_t i = 0; i < obj.rows(); ++i) {
    for (size_t j = 0; j < obj.cols(); ++j) {
      os << obj.at(i, j) << ' ';
    }
    os << std::endl;
  }

  return os;
}

std::ifstream &operator>>(std::ifstream &ifs, Matrix &obj) {
  ifs >> obj.rows_ >> obj.cols_;
  obj.ReshapeMatrix(obj.rows_, obj.cols_);

  for (size_t i = 0; i < obj.rows_; ++i) {
    for (size_t j = 0; j < obj.cols_; ++j) {
      ifs >> obj.matrix_[i][j];
    }
  }

  return ifs;
}






