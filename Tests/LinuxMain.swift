//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
//
// LinuxMain.swift
//
import XCTest

///
/// NOTE: This file was generated by generate_linux_tests.rb
///
/// Do NOT edit this file directly as it will be regenerated automatically when needed.
///

#if os(Linux) || os(FreeBSD) || os(Android)
   @testable import NIOSSLTests

// This protocol is necessary to we can call the 'run' method (on an existential of this protocol)
// without the compiler noticing that we're calling a deprecated function.
// This hack exists so we can deprecate individual tests which test deprecated functionality without
// getting a compiler warning...
protocol LinuxMainRunner { func run() }
class LinuxMainRunnerImpl: LinuxMainRunner {
   @available(*, deprecated, message: "not actually deprecated. Just deprecated to allow deprecated tests (which test deprecated functionality) without warnings")
   func run() {
       XCTMain([
             testCase(ByteBufferBIOTest.allTests),
             testCase(CertificateVerificationTests.allTests),
             testCase(ClientSNITests.allTests),
             testCase(CustomPrivateKeyTests.allTests),
             testCase(IdentityVerificationTest.allTests),
             testCase(NIOSSLALPNTest.allTests),
             testCase(NIOSSLIntegrationTest.allTests),
             testCase(SSLCertificateTest.allTests),
             testCase(SSLPKCS12BundleTest.allTests),
             testCase(SSLPrivateKeyTest.allTests),
             testCase(TLSConfigurationTest.allTests),
             testCase(UnwrappingTests.allTests),
        ])
    }
}
(LinuxMainRunnerImpl() as LinuxMainRunner).run()
#endif
