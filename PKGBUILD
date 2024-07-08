pkgname=mkinitcpio-attestation
pkgver=1.0.0
pkgrel=1
pkgdesc="Initcpio hook for performing tpm-based system integrity attestation"
arch=('any')
license=('GPL')

depends=(
  coreutils
  tpm2-tss
  tpm2-tools
  qrencode
)

source=(
  'usr-lib-initcpio-hooks-attest'
  'usr-lib-initcpio-install-attest'
)

sha256sums=(
  '2fb15bede2f9c573825245b55a833bc933e536684749452a0c9814e9e78151ea'
  'd30f540cf7408c565a5a6e07a70d8e9734cce5d364ab93bea1962f77c20d1303'
)

package() {
  install -D -m 644 "${srcdir}"/usr-lib-initcpio-hooks-attest "${pkgdir}"/usr/lib/initcpio/hooks/attest
  install -D -m 644 "${srcdir}"/usr-lib-initcpio-install-attest "${pkgdir}"/usr/lib/initcpio/install/attest
}
