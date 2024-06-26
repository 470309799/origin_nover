// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.40.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../../lib.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These types are ignored because they are not used by any `pub` functions: `Cert`, `ClientCert`, `InnerVersion`, `NoVerifier`, `TlsBackend`, `Version`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Certificate>>
abstract class Certificate implements RustOpaqueInterface {
  /// Create a `Certificate` from a binary DER encoded certificate
  ///
  /// # Examples
  ///
  /// ```
  /// # use std::fs::File;
  /// # use std::io::Read;
  /// # fn cert() -> Result<(), Box<dyn std::error::Error>> {
  /// let mut buf = Vec::new();
  /// File::open("my_cert.der")?
  ///     .read_to_end(&mut buf)?;
  /// let cert = reqwest::Certificate::from_der(&buf)?;
  /// # drop(cert);
  /// # Ok(())
  /// # }
  /// ```
  static Future<Certificate> fromDer({required List<int> der}) =>
      RustLib.instance.api.reqwestTlsCertificateFromDer(der: der);

  /// Create a `Certificate` from a PEM encoded certificate
  ///
  /// # Examples
  ///
  /// ```
  /// # use std::fs::File;
  /// # use std::io::Read;
  /// # fn cert() -> Result<(), Box<dyn std::error::Error>> {
  /// let mut buf = Vec::new();
  /// File::open("my_cert.pem")?
  ///     .read_to_end(&mut buf)?;
  /// let cert = reqwest::Certificate::from_pem(&buf)?;
  /// # drop(cert);
  /// # Ok(())
  /// # }
  /// ```
  static Future<Certificate> fromPem({required List<int> pem}) =>
      RustLib.instance.api.reqwestTlsCertificateFromPem(pem: pem);

  /// Create a collection of `Certificate`s from a PEM encoded certificate bundle.
  /// Example byte sources may be `.crt`, `.cer` or `.pem` files.
  ///
  /// # Examples
  ///
  /// ```
  /// # use std::fs::File;
  /// # use std::io::Read;
  /// # fn cert() -> Result<(), Box<dyn std::error::Error>> {
  /// let mut buf = Vec::new();
  /// File::open("ca-bundle.crt")?
  ///     .read_to_end(&mut buf)?;
  /// let certs = reqwest::Certificate::from_pem_bundle(&buf)?;
  /// # drop(certs);
  /// # Ok(())
  /// # }
  /// ```
  static Future<List<Certificate>> fromPemBundle(
          {required List<int> pemBundle}) =>
      RustLib.instance.api
          .reqwestTlsCertificateFromPemBundle(pemBundle: pemBundle);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Identity>>
abstract class Identity implements RustOpaqueInterface {
  /// Parses PEM encoded private key and certificate.
  ///
  /// The input should contain a PEM encoded private key
  /// and at least one PEM encoded certificate.
  ///
  /// Note: The private key must be in RSA, SEC1 Elliptic Curve or PKCS#8 format.
  ///
  /// # Examples
  ///
  /// ```
  /// # use std::fs::File;
  /// # use std::io::Read;
  /// # fn pem() -> Result<(), Box<dyn std::error::Error>> {
  /// let mut buf = Vec::new();
  /// File::open("my-ident.pem")?
  ///     .read_to_end(&mut buf)?;
  /// let id = reqwest::Identity::from_pem(&buf)?;
  /// # drop(id);
  /// # Ok(())
  /// # }
  /// ```
  ///
  /// # Optional
  ///
  /// This requires the `rustls-tls(-...)` Cargo feature enabled.
  static Future<Identity> fromPem({required List<int> buf}) =>
      RustLib.instance.api.reqwestTlsIdentityFromPem(buf: buf);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<TlsInfo>>
abstract class TlsInfo implements RustOpaqueInterface {
  /// Get the DER encoded leaf certificate of the peer.
  Future<U8?> peerCertificate();
}
