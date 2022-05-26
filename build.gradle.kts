import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
import org.gradle.kotlin.dsl.*
plugins {
    application
    kotlin("jvm") version "1.6.21"
}

group = "me.copartment"
version = "1.0-SNAPSHOT"
application.mainClassName = "com.ewanfox.banana.MainKt"
repositories {
    mavenCentral()
    maven(url = "https://jitpack.io")
    maven {
        url = uri("https://jitpack.io/")
    }
}

dependencies {
    implementation("org.apache.openwebbeans:openwebbeans-gradle:2.0.26")
    testImplementation(kotlin("test"))
    implementation("com.github.Minestom:Minestom:7b8445d0e2")
}
tasks.withType<Jar> {
    // Otherwise you'll get a "No main manifest attribute" error
    duplicatesStrategy = DuplicatesStrategy.EXCLUDE
    manifest {
        attributes["Main-Class"] = "com.ewanfox.banana.MainKt"
    }

    // To add all of the dependencies otherwise a "NoClassDefFoundError" error
    from(sourceSets.main.get().output)

    dependsOn(configurations.runtimeClasspath)
    from({
        configurations.runtimeClasspath.get().filter { it.name.endsWith("jar") }.map { zipTree(it) }
    })
}
tasks.test {
    useJUnit()
}

tasks.withType<KotlinCompile>() {
    kotlinOptions.jvmTarget = "17"
}
