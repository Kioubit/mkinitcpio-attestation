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
  'etc-initcpio-hooks-attest'
  'etc-initcpio-install-attest'
)

sha256sums=(
  'ac8db6d87943e7b01c1db27ae779d154ba24fdfaf62b263ed9881efe5482b457'
  '54708bdf711c4fc297175a4d93578982714353df414623bd592ee5ce94ab48cb'
)

package() {
  install -D -m 644 "${srcdir}"/etc-initcpio-hooks-attest "${pkgdir}"/usr/lib/initcpio/hooks/attest
  install -D -m 644 "${srcdir}"/etc-initcpio-install-attest "${pkgdir}"/usr/lib/initcpio/install/attest
}
