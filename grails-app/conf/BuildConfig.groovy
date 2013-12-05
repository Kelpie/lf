grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.work.dir = "target/work"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"
 
 /*
grails.project.fork = [
    test: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, daemon:true],
    run: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
    war: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
    console: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256]
]
*/

grails.project.dependency.resolver = "maven" // or ivy
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        mavenLocal()
        grailsCentral()
        mavenCentral()
        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
        mavenRepo "http://repo.spring.io/milestone/"
    }

    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.
        // runtime 'mysql:mysql-connector-java:5.1.24'
        test "org.gebish:geb-spock:0.9.2"
        test( "com.github.detro.ghostdriver:phantomjsdriver:1.0.4" ) {
           transitive = false
        }        
    }

    plugins {
        build ":tomcat:7.0.42"

        compile ":spring-security-core:2.0-RC2"
        compile ":spring-security-facebook:0.15.2-CORE2"
        //compile ":spring-security-twitter:0.5.4" no es compatible con la version 2.0-RC2 de ssc

        //dependencias de SSUI
        compile ":mail:1.0.1"
        compile ":jquery:1.10.2.2"
        compile ":jquery-ui:1.10.3"
        compile ":famfamfam:1.0.1"
        //----
        compile ":spring-security-ui:1.0-RC1"

        compile ":scaffolding:2.0.1"
        compile ':cache:1.1.1'
        compile ':hibernate:3.6.10.3'
        compile ":asset-pipeline:1.0.1"

        test("org.grails.plugins:geb:0.9.2")
    }
}