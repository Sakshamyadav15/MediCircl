plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    signingConfigs {
        create("release") {
            storeFile = file("key.jks")
            storePassword = "your-password"
            keyAlias = "key"
            keyPassword = "your-password"
        }
    }
    
    namespace = "com.example.medicircle"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.medicircle"
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Uncomment this line to use your release signing configuration
            // signingConfig = signingConfigs.getByName("release")
            
            // For now, using debug signing config so that `flutter run --release` works
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation(platform("com.google.firebase:firebase-bom:33.11.0"))
    // Add other Firebase dependencies you need here
    // For example:
    // implementation("com.google.firebase:firebase-auth")
}