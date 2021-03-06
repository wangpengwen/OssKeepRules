# OkHttp Keep Rules
# Taken from: https://github.com/square/okhttp/blob/master/okhttp/src/main/resources/META-INF/proguard/okhttp3.pro
# and from: https://proguard-rules.blogspot.com/2017/05/okhttp-proguard-rules.html

# Date: 30-Sep-2019
#---------------------------------------------

# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*
# OkHttp platform used only on JVM and when Conscrypt dependency is available.
-dontwarn okhttp3.internal.platform.ConscryptPlatform

# From: https://proguard-rules.blogspot.com/2017/05/okhttp-proguard-rules.html
-dontwarn okio.**
# These two javax.annotation rules are redundent if there is a rule on javax.annotation.**
#-dontwarn javax.annotation.Nullable
#-dontwarn javax.annotation.ParametersAreNonnullByDefault