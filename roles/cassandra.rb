name "cassandra"
description "Simple Cassandra node"
run_list(
  "recipe[java]",
  "recipe[simple_cassandra]"
)
default_attributes({
  "java" => {
    "install_flavor" => "oracle",
    "jdk_version" => "6",
    "jdk" => {
      "6" => {
        "x86_64" => {
          "url" => "http://chef/d/jdk-6u35-linux-x64.bin",
          "checksum" => "01dd8c70866ffd6351987bf7cb2331f077539f84d24a9c4581f230be5422a6bb",
        }
      }
    }
  },
})
