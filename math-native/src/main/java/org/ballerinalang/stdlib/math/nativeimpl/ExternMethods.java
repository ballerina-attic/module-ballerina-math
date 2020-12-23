/*
 * Copyright (c) 2019, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package org.ballerinalang.stdlib.math.nativeimpl;

import io.ballerina.runtime.api.creators.ErrorCreator;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BError;

import java.util.concurrent.ThreadLocalRandom;

import static org.ballerinalang.stdlib.math.nativeimpl.Constant.DIVIDE_BY_ZERO_ERROR_MSG;
import static org.ballerinalang.stdlib.math.nativeimpl.Constant.ILLEGAL_ARGUMENT_ERROR_MSG;
import static org.ballerinalang.stdlib.math.nativeimpl.Constant.MATH_ERROR;
import static org.ballerinalang.stdlib.math.nativeimpl.Constant.OVERFLOW_ERROR_MSG;
import static org.ballerinalang.stdlib.math.utils.MathUtils.getMathPackage;

/**
 * External functions for ballerina/math library.
 *
 * @since 1.0.5
 */
public class ExternMethods {

    private ExternMethods() {}

    public static Object floorDiv(long a, long b) {
        try {
            return Math.floorDiv(a, b);
        } catch (ArithmeticException ex) {
            return createMathError(DIVIDE_BY_ZERO_ERROR_MSG);
        }
    }

    public static Object floorMod(long a, long b) {
        try {
            return Math.floorMod(a, b);
        } catch (ArithmeticException ex) {
            return createMathError(DIVIDE_BY_ZERO_ERROR_MSG);
        }
    }

    public static Object negateExact(long value) {
        try {
            return Math.negateExact(value);
        } catch (ArithmeticException ex) {
            return createMathError(OVERFLOW_ERROR_MSG);
        }
    }

    public static Object randomInRange(long start, long end) {
        try {
            return ThreadLocalRandom.current().nextLong(start, end);
        } catch (IllegalArgumentException ex) {
            return createMathError(ILLEGAL_ARGUMENT_ERROR_MSG);
        }
    }

    public static double scalb(double a, long b) {
        int intVal = ((Long) b).intValue();
        return Math.scalb(a, intVal);
    }

    private static BError createMathError(String errMsg) {
        return ErrorCreator.createDistinctError(MATH_ERROR, getMathPackage(), StringUtils.fromString(errMsg));
    }
}
