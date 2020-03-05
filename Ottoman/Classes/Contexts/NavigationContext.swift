//
//  NavigationContext.swift
//  Ottoman
//
//  Created by Kane Cheshire on 09/09/2019.
//

import XCTest

public protocol NavigationContext {}
public extension NavigationContext {
	
	/// Asserts that a screen can be seen, by awaiting on its trait.
	///
	/// - Parameter screen: The screen to await.
	func see<ScreenType: Screen>(_ screen: ScreenType) {
		see(screen.trait)
	}
	
	/// Asserts that a screen does not exist, by awaiting on its trait.
	///
	/// - Parameter screen: The screen to await.
	func doNotSee<ScreenType: Screen>(_ screen: ScreenType) {
		doNotSee(screen.trait)
	}
	
	/// Asserts that an element can be seen, by awaiting for it to exist and be visible.
	///
	/// - Parameter element: The element to await.
	func see(_ element: Element) {
			element.await(.exists, .visible)
	}
	
	/// Asserts that an element does not exist, by waiting for it to not exist.
	///
	/// - Parameter element: The element to await.
	func doNotSee(_ element: Element) {
		element.await(not: .exists)
	}
	
	/// Completes one or more things that knows how to complete itself.
	///
	/// - Parameter completableThings: One or more Completable things. Typically, this would be a Screen that conforms to Completable.
	func complete(_ completableThings: Completable...) {
		guard !completableThings.isEmpty else { XCTFatalFail("You must provide at least one Completable thing to complete!") }
		completableThings.forEach {
			$0.await()
			$0.complete()
		}
	}
	
	/// Dismisses one or more things that knows how to complete itself.
	///
	/// - Parameter dismissableThings: One or more Dismissable things. Typically, this would be a Screen that conforms to Dismissable.
	func dismiss(_ dismissableThings: Dismissable...) {
		guard !dismissableThings.isEmpty else { XCTFatalFail("You must provide at least one Dismissable thing to dismizs!") }
		dismissableThings.forEach {
			$0.await()
			$0.dismiss()
		}
	}
	
}
