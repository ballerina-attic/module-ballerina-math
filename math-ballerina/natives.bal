// Copyright (c) 2017 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/java;

# Ratio of the circumference of a circle to its diameter.
public const float PI = 3.141592653589793;

# Base of the natural logarithms.
public const float E = 2.718281828459045;

# Calculates Euler's number, that is 'e' raised to the power of exponent.
# ```ballerina
# float euler = math:exp(3.2);
# ```
# 
# + val - Exponential value to raise
# + return - Calculated exponential value
public isolated function exp(float val) returns float {
    return externExp(val);
}

isolated function externExp(float val) returns float = @java:Method {
    name: "exp",
    'class: "java.lang.Math"
} external;

# Calculates the value of the 'a' raised to the power of 'b'.
# ```ballerina
# float aPowerB = math:pow(3.2, 2.4);
# ```
# 
# + a - Base value
# + b - Exponential value
# + return - Calculated exponential value
public isolated function pow(float a, float b) returns float {
    return externPow(a, b);
}

isolated function externPow(float a, float b) returns float = @java:Method {
    name: "pow",
    'class: "java.lang.Math"
} external;

# Selects a random number between 0.0 and 1.0.
# ```ballerina
# float randomValue = math:random();
# ```
# 
# + return - Selected random value
public isolated function random() returns float = @java:Method {
    name: "random",
    'class: "java.lang.Math"
} external;

# Selects a random number between the given start(inclusive) and end(exclusive) values.
# ```ballerina
# int|error randomInteger = math:randomInRange(1, 100);
# ```
# 
# + startRange - Range start value
# + endRange - Range end value
# + return - Selected random value or else `Error` if start range is greater than the end range
public isolated function randomInRange(int startRange, int endRange) returns int|Error = @java:Method {
    name: "randomInRange",
    'class: "org.ballerinalang.stdlib.math.nativeimpl.ExternMethods"
} external;

# Calculates rounded positive square root of the given value.
# ```ballerina
# float squareRoot = math:sqrt(6.4);
# ```
# 
# + val - Value to get square root
# + return - Calculated square root value
public isolated function sqrt(float val) returns float = @java:Method {
    name: "sqrt",
    'class: "java.lang.Math"
} external;

# Calculates the absolute value of a float value.
# ```ballerina
# float absoluteFloatValue = math:absFloat(-152.2544);
# ```
# 
# + val - Value to get absolute value
# + return - Calculated absolute value
public isolated function absFloat(float val) returns float = @java:Method {
    name: "abs",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;

# Calculates the absolute value of an int value.
# ```ballerina
# int absoluteIntValue = math:absInt(-152);
# ```
# 
# + val - Value to get the absolute value
# + return - Calculated absolute value
public isolated function absInt(int val) returns int = @java:Method {
    name: "abs",
    'class: "java.lang.Math",
    paramTypes: ["long"]
} external;

# Calculates the arc cosine of a value; the returned angle is in the range 0.0 through pi.
# ```ballerina
# float acosValue = math:acos(0.027415567780803774);
# ```
# 
# + val - Value to get the arc cosine
# + return - Calculated arc cosine value
public isolated function acos(float val) returns float = @java:Method {
    name: "acos",
    'class: "java.lang.Math"
} external;

# Calculates the arc sine of a value.
# ```ballerina
# float arcSineValue = math:asin(0.027415567780803774);
# ```
# 
# + val - Value to get the arc sine
# + return - Calculates arc sine value
public isolated function asin(float val) returns float = @java:Method {
    name: "asin",
    'class: "java.lang.Math"
} external;

# Calculates the arc tangent of a value.
# ```ballerina
# float arcTangent = math:atan(0.027415567780803774);
# ```
# 
# + val - Value to get the arc tangent
# + return - Calculated arc tangent value
public isolated function atan(float val) returns float = @java:Method {
    name: "atan",
    'class: "java.lang.Math"
} external;

# Calculates the angle theta from the conversion of rectangular coordinates (a, b) to polar coordinates (r, theta).
# ```ballerina
# float arcTangentFromCoordinates = math:atan2(6.4, 3.2);
# ```
# 
# + a - Ordinate coordinate
# + b - Abscissa coordinate
# + return - Calculated angle theta
public isolated function atan2(float a, float b) returns float = @java:Method {
    name: "atan2",
    'class: "java.lang.Math"
} external;

# Calculates the cube root of a float value.
# ```ballerina
# float cubeRoot = math:cbrt(-27.0);
# ```
# 
# + val - Value to get the cube root
# + return - Calculated cube root value
public isolated function cbrt(float val) returns float = @java:Method {
    name: "cbrt",
    'class: "java.lang.Math"
} external;

# Calculates the smallest (closest to negative infinity) double value that is greater than or equal to the argument and
#    is equal to a mathematical integer.
# ```ballerina
# float ceilingValue = math:ceil(6.4);
# ```
# 
# + val - Value to get the ceil
# + return - Calculated smallest double value
public isolated function ceil(float val) returns float = @java:Method {
    name: "ceil",
    'class: "java.lang.Math"
} external;

# Calculates the first floating-point argument with the sign of the second floating-point argument.
# ```ballerina
# float copySignValue = math:copySign(6.4, 2.4);
# ```
# 
# + a - Parameter providing the magnitude of the result
# + b - Parameter providing the sign of the result
# + return - Calculated floating-point argument
public isolated function copySign(float a, float b) returns float = @java:Method {
    name: "copySign",
    'class: "java.lang.Math",
    paramTypes: ["double", "double"]
} external;

# Calculates the trigonometric cosine of an angle.
# ```ballerina
# float cosineValue = math:cos(0.3124);
# ```
# 
# + val - Value to get the trigonometric cosine
# + return - Calculated cosine value
public isolated function cos(float val) returns float = @java:Method {
    name: "cos",
    'class: "java.lang.Math"
} external;

# Calculates the hyperbolic cosine of a float value.
# ```ballerina
# float hyperbolicCosineValue = math:cosh(0.3124);
# ```
# 
# + val - Number whose hyperbolic cosine is to be returned
# + return - Calculated hyperbolic cosine of given float value
public isolated function cosh(float val) returns float = @java:Method {
    name: "cosh",
    'class: "java.lang.Math"
} external;

# Calculates (e to the power of x) -1.
# ```ballerina
# float exponentValue = math:expm1(6.4);
# ```
# 
# + val - Exponent to raise e to in the computation
# + return - Calculated result
public isolated function expm1(float val) returns float = @java:Method {
    name: "expm1",
    'class: "java.lang.Math"
} external;

# Calculates the largest (closest to positive infinity) float value that is less than or equal to the argument and is
#    equal to a mathematical integer.
# ```ballerina
# float floorValue = math:floor(6.4);
# ```
# 
# + val - A float value
# + return - Calculated float value
public isolated function floor(float val) returns float = @java:Method {
    name: "floor",
    'class: "java.lang.Math"
} external;

# Calculates the largest (closest to positive infinity) int value that is less than or equal to the algebraic quotient.
# ```ballerina
# int|error floorDivValue = math:floorDiv(6, 4);
# ```
# 
# + a - Dividend
# + b - Divisor
# + return - Calculated int value or else `Error` if b is 0
public isolated function floorDiv(int a, int b) returns int|Error = @java:Method {
    name: "floorDiv",
    'class: "org.ballerinalang.stdlib.math.nativeimpl.ExternMethods"
} external;

# Calculates the floor modulus of the long arguments.
# ```ballerina
# int|error floorModulesValue = math:floorMod(6, 4);
# ```
# 
# + a - dividend
# + b - divisor
# + return - Calculated floor modulus or else `Error` if b is 0
public isolated function floorMod(int a, int b) returns int|Error = @java:Method {
    name: "floorMod",
    'class: "org.ballerinalang.stdlib.math.nativeimpl.ExternMethods"
} external;

# Calculates the unbiased exponent used in the representation of a float.
# ```ballerina
# int unbiasedExponentValue = math:getExponent(6.4);
# ```
# 
# + val - Float value
# + return - Calculated unbiased exponent of the argument
public isolated function getExponent(float val) returns int = @java:Method {
    name: "getExponent",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;

# Calculates sqrt(a squared +b squared) without intermediate overflow or underflow.
# ```ballerina
# float pythogarusValue = math:hypot(6.4, 3.6);
# ```
# 
# + a - Float value
# + b - Float value
# + return - Calculated square root value
public isolated function hypot(float a, float b) returns float = @java:Method {
    name: "hypot",
    'class: "java.lang.Math"
} external;

# Computes the remainder operation on two arguments as prescribed by the IEEE 754 standard.
# ```ballerina
# float remainderValue = math:remainder(6.4, 3.6);
# ```
# 
# + a - dividend
# + b - divisor
# + return - Computed remainder when a is divided by b
public isolated function remainder(float a, float b) returns float = @java:Method {
    name: "IEEEremainder",
    'class: "java.lang.Math"
} external;

# Calculates the natural logarithm (base e) of a float value.
# ```ballerina
# float logarithmValue = math:log(6.4);
# ```
# 
# + val - A float value
# + return - Calculated natural logarithm value
public isolated function log(float val) returns float = @java:Method {
    name: "log",
    'class: "java.lang.Math"
} external;

# Calculates the base 10 logarithm of a float value.
# ```ballerina
# float logarithmValueBaseTen = math:log10(6.4);
# ```
# 
# + val - A float value
# + return - Calculated base 10 logarithm of a given float value
public isolated function log10(float val) returns float = @java:Method {
    name: "log10",
    'class: "java.lang.Math"
} external;

# Calculates the natural logarithm of the sum of the argument and 1.
# ```ballerina
# float naturalLogarithmValue = math:log1p(6.4);
# ```
# 
# + val - A float value
# + return - Calculated natural log of x + 1
public isolated function log1p(float val) returns float = @java:Method {
    name: "log1p",
    'class: "java.lang.Math"
} external;

# Calculates the negation of the argument.
# ```ballerina
# int|error negationValue = math:negateExact(6);
# ```
# 
# + val - value to negate
# + return - Calculated negation value or else `Error` if overflow occurred
public isolated function negateExact(int val) returns int|Error = @java:Method {
    name: "negateExact",
    'class: "org.ballerinalang.stdlib.math.nativeimpl.ExternMethods"
} external;

# Calculates the floating-point number adjacent to the first argument in the direction of the second argument.
# ```ballerina
# float nextAfterValue = math:nextAfter(6.4, 3.4);
# ```
# 
# + a - Starting floating-point value
# + b - Value indicating which of start's neighbors or start should be returned
# + return - Calculated floating-point number
public isolated function nextAfter(float a, float b) returns float = @java:Method {
    name: "nextAfter",
    'class: "java.lang.Math",
    paramTypes: ["double", "double"]
} external;

# Calculates the adjacent floating-point value closer to negative infinity.
# ```ballerina
# float nextDownValue = math:nextDown(6.4);
# ```
# 
# + val - Starting floating-point value
# + return - Calculated floating-point value
public isolated function nextDown(float val) returns float = @java:Method {
    name: "nextDown",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;

# Calculates the adjacent floating-point value closer to positive infinity.
# ```ballerina
# float nextUpValue = math:nextUp(6.4);
# ```
# 
# + val - Starting floating-point value
# + return - Calculates floating-point value
public isolated function nextUp(float val) returns float = @java:Method {
    name: "nextUp",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;

# Calculates the double value that is closest in value to the argument and is equal to a mathematical integer.
# ```ballerina
# float roundedValue = math:rint(6.4);
# ```
# 
# + val - A float value
# + return - Calculated double value
public isolated function rint(float val) returns float = @java:Method {
    name: "rint",
    'class: "java.lang.Math"
} external;

# Calculates the closest int to the argument, with ties rounding to positive infinity.
# ```ballerina
# int roundedIntegerValue = math:round(6.4);
# ```
# 
# + val - A floating-point value to be rounded to an integer
# + return - Calculated value of the argument rounded to the nearest int value
public isolated function round(float val) returns int = @java:Method {
    name: "round",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;

# Calculates a × (2 to the power of b) rounded as if performed by a single correctly rounded floating-point
# multiply to a member of the float value set.
# ```ballerina
# float scalbValue = math:scalb(6.4, 2);
# ```
# 
# + a - Number to be scaled by a power of two
# + b - Power of 2 used to scale a
# + return - Calculated result
public isolated function scalb(float a, int b) returns float = @java:Method {
    name: "scalb",
    'class: "org.ballerinalang.stdlib.math.nativeimpl.ExternMethods"
} external;

# Calculates the signum function of the argument.
# ```ballerina
# float signumValue = math:signum(6.4);
# ```
# 
# + val - floating-point value whose signum is to be returned
# + return - Calculated signum function of the argument
public isolated function signum(float val) returns float = @java:Method {
    name: "signum",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;

# Calculates the trigonometric sine of an angle.
# ```ballerina
# float sineValue = math:sin(0.96);
# ```
# 
# + val - An angle, in radians
# + return - Calculated sine of the argument
public isolated function sin(float val) returns float = @java:Method {
    name: "sin",
    'class: "java.lang.Math"
} external;

# Calculates the hyperbolic sine of a float value.
# ```ballerina
# float hyperbolicSineValue = math:sinh(0.96);
# ```
# 
# + val - Number whose hyperbolic sine is to be returned
# + return - Calculated hyperbolic sine of a given float
public isolated function sinh(float val) returns float = @java:Method {
    name: "sinh",
    'class: "java.lang.Math"
} external;

# Calculates the trigonometric tangent of an angle.
# ```ballerina
# float tanValue = math:tan(0.96);
# ```
# 
# + val - An angle, in radians
# + return - Calculated tangent of the argument
public isolated function tan(float val) returns float = @java:Method {
    name: "tan",
    'class: "java.lang.Math"
} external;

# Calculates the hyperbolic tangent of a double value.
# ```ballerina
# float hyperbolicTanValue = math:tanh(0.96);
# ```
# 
# + val - Number whose hyperbolic tangent is to be returned
# + return - Calculated hyperbolic tangent of x
public isolated function tanh(float val) returns float = @java:Method {
    name: "tanh",
    'class: "java.lang.Math"
} external;

# Converts an angle measured in radians to an approximately equivalent angle measured in degrees.
# ```ballerina
# float angleValueInDegrees = math:toDegrees(0.96);
# ```
# 
# + val - An angle, in radians
# + return - Measurement of the angle angrad in degrees
public isolated function toDegrees(float val) returns float = @java:Method {
    name: "toDegrees",
    'class: "java.lang.Math"
} external;

# Converts an angle measured in degrees to an approximately equivalent angle measured in radians.
# ```ballerina
# float angleValueInRadians = math:toRadians(0.96);
# ```
# 
# + val - An angle, in degrees
# + return - Measurement of the angle angdeg in radians
public isolated function toRadians(float val) returns float = @java:Method {
    name: "toRadians",
    'class: "java.lang.Math"
} external;

# Returns the size of an ulp of the argument.
# ```ballerina
# float ulpValue = math:ulp(0.96);
# ```
# 
# + val - Floating-point value whose ulp is to be returned
# + return - Size of an ulp of the argument
public isolated function ulp(float val) returns float = @java:Method {
    name: "ulp",
    'class: "java.lang.Math",
    paramTypes: ["double"]
} external;
