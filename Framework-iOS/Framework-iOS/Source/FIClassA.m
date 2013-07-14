/*!
 *	FIClassA.m
 *	Framework-iOS
 *	
 *	Created by Diney Bomfim on 4/30/11.
 *	Copyright 2011 DB-Interactive. All rights reserved.
 */

#import "FIClassA.h"

#pragma mark -
#pragma mark Constants
#pragma mark -
//**************************************************
//  Constants
//**************************************************


#pragma mark -
#pragma mark Private Interface
#pragma mark -
//**************************************************
//	Private Interface
//**************************************************

@interface FIClassA()

- (void) privateMethodA;

@end

#pragma mark -
#pragma mark Public Interface
#pragma mark -
//**************************************************
//	Public Interface
//**************************************************

@implementation FIClassA

#pragma mark -
#pragma mark Properties
//**************************************************
//  Properties
//**************************************************

@synthesize propertyIntA;

#pragma mark -
#pragma mark Constructors
//**************************************************
//  Constructors
//**************************************************

- (id)init
{
	if ((self = [super init]))
	{
		// Initialization code here.
	}
	
	return self;
}

#pragma mark -
#pragma mark Private Methods
//**********************************************************************************************************
//
//  Private Methods
//
//**********************************************************************************************************

- (void) privateMethodA
{
	NSLog(@"Calling privateMethodA, not visible to the developer");
}

#pragma mark -
#pragma mark Self Public Methods
//**********************************************************************************************************
//
//  Self Public Methods
//
//**********************************************************************************************************

- (void) methodA
{
	NSLog(@"Calling methodA at FIClassA, yup it is modified");
}

- (void) methodAWith:(int)anInt
{
	NSLog(@"Calling methodAWith:%i at FIClassA",anInt);
}

#pragma mark -
#pragma mark Override Public Methods
//**********************************************************************************************************
//
//  Override Public Methods
//
//**********************************************************************************************************

- (void)dealloc
{
	[super dealloc];
}

@end
