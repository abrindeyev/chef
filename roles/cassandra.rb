name "cassandra"
description "Simple Cassandra node"
run_list(
  "recipe[java]"
)
default_attributes({
    "repository" => "http://chef",
    "java" => {
        "install_flavor" => "oracle",
        "jdk_version" => "7",
        "jdk" => { "7" => { "x86_64" => {
            "url" => "http://chef/d/jdk-7u7-linux-x64.tar.gz",
            "checksum" => "3d1c33c832ec278058fcba979b575debe20bb8a309bc39321795d26ee29d9f35"
        }}}},
})
