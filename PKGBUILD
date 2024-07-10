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
  '4839a617381a8340523f0a8da3a713254dd2360e19363e8585befdc8aa592e6d'
  'd30f540cf7408c565a5a6e07a70d8e9734cce5d364ab93bea1962f77c20d1303'
)

package() {
  install -D -m 644 "${srcdir}"/usr-lib-initcpio-hooks-attest "${pkgdir}"/usr/lib/initcpio/hooks/attest
  install -D -m 644 "${srcdir}"/usr-lib-initcpio-install-attest "${pkgdir}"/usr/lib/initcpio/install/attest
}
