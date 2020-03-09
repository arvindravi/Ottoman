//
//  BiometricsContext.swift
//  Ottoman
//
//  Created by Kane Cheshire on 09/09/2019.
//

import Foundation

public protocol BiometricsContext {}
public extension BiometricsContext {
	
	func deviceBiometricsAreEnabled() {
		Biometrics.enrolled()
	}
	
	func deviceBiometricsAreDisabled() {
		Biometrics.unenrolled()
	}
	
	func successfullyAuthenticateBiometrics() {
		Biometrics.successfulAuthentication()
	}
	
	func failToAuthenticateBiometrics() {
		Biometrics.unsuccessfulAuthentication()
	}
	
}
