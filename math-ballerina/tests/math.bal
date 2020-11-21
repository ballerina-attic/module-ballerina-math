// Copyright (c) 2020 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
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

import ballerina/test;

@test:Config {}
function expTest () {
    float result = exp(5.0);
    test:assertEquals(result, 148.4131591025766, msg = "expTest result incorrect");
}

@test:Config {}
function powTest () {
    float result = pow(5.0, 5.0);
    test:assertEquals(result, 3125.0, msg = "powTest result incorrect");
}

@test:Config {}
function randomTest () {
    float result = random();
    test:assertTrue(result > 0 && result < 1, msg = "randomTest result is not between 0 and 1");
}

@test:Config {}
function sqrtTest () {
    float result = sqrt(25.0);
    test:assertEquals(result, 5.0, msg = "sqrtTest result incorrect");
}

@test:Config {}
function randomInRangeTest() {
    int|error result = randomInRange(5, 10);
    if (result is int) {
        test:assertTrue(result >= 5 && result < 10, msg = "randomInRangeTest result is not within 5 and 10");
    } else {
        test:assertFail("randomInRangeTest result is not int");
    }
}

@test:Config {}
function absFloatTest () {
    float result = absFloat(-152.2544);
    test:assertEquals(result, 152.2544, msg = "absFloatTest result incorrect");
}

@test:Config {}
function absIntTest () {
    int result = absInt(-152);
    test:assertEquals(result, 152, msg = "absIntTest result incorrect");
}

@test:Config {}
function acosTest () {
    float result = acos(0.027415567780803774);
    test:assertEquals(result, 1.5433773235341761, msg = "acosTest result incorrect");
}

@test:Config {}
function asinTest () {
    float result = asin(0.027415567780803774);
    test:assertEquals(result, 0.02741900326072046, msg = "asinTest result incorrect");
}

@test:Config {}
function atanTest () {
    float result = atan(0.027415567780803774);
    test:assertEquals(result, 0.0274087022410345, msg = "atanTest result incorrect");
}

@test:Config {}
function atan2Test () {
    float result = atan2(45.0, 30.0);
    test:assertEquals(result, 0.982793723247329, msg = "atan2Test result incorrect");
}

@test:Config {}
function cbrtTest () {
    float result = cbrt(-27);
    test:assertEquals(result, -3.0, msg = "cbrtTest result incorrect");
}

@test:Config {}
function ceilTest () {
    float result = ceil(-100.675);
    test:assertEquals(result, -100.0, msg = "ceilTest result incorrect");
}

@test:Config {}
function copySignTest () {
    float result = copySign(-0.4873, 125.9);
    test:assertEquals(result, 0.4873, msg = "copySignTest result incorrect");
}

@test:Config {}
function cosTest () {
    float result = cos(3.141592653589793);
    test:assertEquals(result, -1.0, msg = "copySignTest result incorrect");
}

@test:Config {}
function coshTest () {
    float result = cosh(3.141592653589793);
    test:assertEquals(result, 11.591953275521519, msg = "coshTest result incorrect");
}

@test:Config {}
function expm1Test () {
    float result = expm1(0.5);
    test:assertEquals(result, 0.6487212707001282, msg = "expm1Test result incorrect");
}

@test:Config {}
function floorTest () {
    float result = floor(-100.675);
    test:assertEquals(result, -101.0, msg = "floorTest result incorrect");
}

@test:Config {}
function floorDivTest() {
    int|error result = floorDiv(-4, 3);
    if (result is int) {
        test:assertEquals(result, -2, msg = "floorDivTest result incorrect");
    } else {
        test:assertFail("floorDivTest result is not int");
    }
}

@test:Config {}
function floorModTest () {
    int|error result = floorMod(-4, 3);
    if (result is int) {
        test:assertEquals(result, 2, msg = "floorModTest result incorrect");
    } else {
        test:assertFail("floorModTest result is not int");
    }
}

@test:Config {}
function getExponentTest () {
    int result = getExponent(60984.1);
    test:assertEquals(result, 15, msg = "getExponentTest result incorrect");
}

@test:Config {}
function hypotTest () {
    float result = hypot(60984.1, -497.99);
    test:assertEquals(result, 60986.133234122164, msg = "hypotTest result incorrect");
}

@test:Config {}
function remainderTest () {
    float result = remainder(60984.1, -497.99);
    test:assertEquals(result, 229.31999999999744, msg = "remainderTest result incorrect");
}

@test:Config {}
function logTest () {
    float result = log(60984.1);
    test:assertEquals(result, 11.018368453441132, msg = "logTest result incorrect");
}

@test:Config {}
function log10Test () {
    float result = log10(60984.1);
    test:assertEquals(result, 4.78521661890635, msg = "log10Test result incorrect");
}

@test:Config {}
function log1pTest () {
    float result = log1p(1000);
    test:assertEquals(result, 6.90875477931522, msg = "log1pTest result incorrect");
}

@test:Config {}
function negateExactTest () {
    int|error result = negateExact(-4);
    if (result is int) {
        test:assertEquals(result, 4, msg = "negateExactTest result incorrect");
    } else {
        test:assertFail("negateExactTest result is not int");
    }
}

@test:Config {}
function nextAfterTest () {
    float result = nextAfter(98759.765, 154.28764);
    test:assertEquals(result, 98759.76499999998, msg = "nextAfterTest result incorrect");
}

@test:Config {}
function nextDownTest () {
    float result = nextDown(60984.1);
    test:assertEquals(result, 60984.09999999999, msg = "nextDownTest result incorrect");
}

@test:Config {}
function nextUpTest () {
    float result = nextUp(-100.675);
    test:assertEquals(result, -100.67499999999998, msg = "nextUpTest result incorrect");
}

@test:Config {}
function rintTest () {
    float result = rint(2.50);
    test:assertEquals(result, 2.0, msg = "rintTest result incorrect");
}

@test:Config {}
function roundTest () {
    int result =round(2.50);
    test:assertEquals(result, 3, msg = "roundTest result incorrect");
}

@test:Config {}
function scalbTest () {
    float result = scalb(50.14, 4);
    test:assertEquals(result, 802.24, msg = "scalbTest result incorrect");
}

@test:Config {}
function signumTest () {
    float result = signum(50.14);
    test:assertEquals(result, 1.0, msg = "signumTest result incorrect");
}

@test:Config {}
function sinTest () {
    float result = sin(0.7853981633974483);
    test:assertEquals(result, 0.7071067811865475, msg = "sinTest result incorrect");
}

@test:Config {}
function sinhTest () {
    float result = sinh(-3.141592653589793);
    test:assertEquals(result, -11.548739357257748, msg = "sinhTest result incorrect");
}

@test:Config {}
function tanTest () {
    float result = tan(0.7853981633974483);
    test:assertEquals(result, 0.9999999999999999, msg = "tanTest result incorrect");
}

@test:Config {}
function tanhTest () {
    float result = tanh(-3.141592653589793);
    test:assertEquals(result, -0.99627207622075, msg = "tanhTest result incorrect");
}

@test:Config {}
function toDegreesTest () {
    float result = toDegrees(2578.3100780887044);
    test:assertEquals(result, 147726.28575052848, msg = "toDegreesTest result incorrect");
}

@test:Config {}
function toRadiansTest () {
    float result = toRadians(45.0);
    test:assertEquals(result, 0.7853981633974483, msg = "toRadiansTest result incorrect");
}

@test:Config {}
function ulpTest () {
    float result = ulp(956.294);
    test:assertEquals(result, 1.1368683772161603E-13, msg = "ulpTest result incorrect");
}
