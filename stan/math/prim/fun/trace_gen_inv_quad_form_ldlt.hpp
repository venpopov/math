#ifndef STAN_MATH_PRIM_FUN_TRACE_GEN_INV_QUAD_FORM_LDLT_HPP
#define STAN_MATH_PRIM_FUN_TRACE_GEN_INV_QUAD_FORM_LDLT_HPP

#include <stan/math/prim/meta.hpp>
#include <stan/math/prim/err.hpp>
#include <stan/math/prim/fun/Eigen.hpp>
#include <stan/math/prim/fun/LDLT_factor.hpp>
#include <stan/math/prim/fun/mdivide_left_ldlt.hpp>
#include <stan/math/prim/fun/trace.hpp>
#include <stan/math/prim/fun/transpose.hpp>
#include <stan/math/prim/fun/multiply.hpp>

namespace stan {
namespace math {

/**
 * Compute the trace of an inverse quadratic form.  I.E., this computes
 *       trace(D B^T A^-1 B)
 * where D is a square matrix and the LDLT_factor of A is provided.
 *
 * @tparam EigMat1 type of the first matrix
 * @tparam T2 type of matrix in the LDLT_factor
 * @tparam EigMat3 type of the third matrix
 *
 * @param D multiplier
 * @param A LDLT_factor
 * @param B inner term in quadratic form
 * @return trace(D * B^T * A^-1 * B)
 * @throw std::domain_error if D is not square
 * @throw std::domain_error if A cannot be multiplied by B or B cannot
 * be multiplied by D.
 */
template <typename EigMat1, typename T2, typename EigMat3,
          typename = require_all_not_st_var<EigMat1, T2, EigMat3>>
inline return_type_t<EigMat1, T2, EigMat3> trace_gen_inv_quad_form_ldlt(
    const EigMat1& D, const LDLT_factor<T2>& A, const EigMat3& B) {
  check_square("trace_gen_inv_quad_form_ldlt", "D", D);
  check_multiplicable("trace_gen_inv_quad_form_ldlt", "A", A.matrix(), "B", B);
  check_multiplicable("trace_gen_inv_quad_form_ldlt", "B", B, "D", D);

  if (D.size() == 0 || A.matrix().size() == 0) {
    return 0;
  }

  return multiply(B, D.transpose()).cwiseProduct(mdivide_left_ldlt(A, B)).sum();
}

}  // namespace math
}  // namespace stan

#endif
