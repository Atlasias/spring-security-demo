package com.legacy.base.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * XPlatform 응답을 위한 Serialize시 제외할 멤버변수를 표현한다.
 */
@Retention(value = RetentionPolicy.RUNTIME)
@Target( { ElementType.TYPE, ElementType.FIELD })
public @interface SerializationExclude {

}