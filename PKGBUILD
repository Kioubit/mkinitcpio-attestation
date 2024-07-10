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
  'e55cb0e591a7b6a3af3f79e282e7a35727cd3c453581cb4d13ba86100844caa3'
  'd30f540cf7408c565a5a6e07a70d8e9734cce5d364ab93bea1962f77c20d1303'
)

package() {
  install -D -m 644 "${srcdir}"/usr-lib-initcpio-hooks-attest "${pkgdir}"/usr/lib/initcpio/hooks/attest
  install -D -m 644 "${srcdir}"/usr-lib-initcpio-install-attest "${pkgdir}"/usr/lib/initcpio/install/attest
}
