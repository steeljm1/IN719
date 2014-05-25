class users {
                user { 'steeljm1':
                        ensure                  => 'present',
                        managehome              => true,
                        password                => '$6$hpf9cHH8$PgXqxmqqetlqkV/AmrEWiXDiRMzmaSwkGZJz6.aBeEAFVnzeK4.RybizSPZInBWWeAYNSB8uNKTBLRpcujnHg/',
                        shell                   => '/bin/bash',
                }

                user { 'unverzp1':
                        ensure                  => 'present',
                        managehome              => true,
                        password                => '$6$HEwOR3OAw2$FOGmyKzbAmGPQTPkaYHlJ852eS3xXkCJKShgUq73XkoZVWxltfW5kC9YVoZdyMoHrUPXsfkD/TUhm15gKh6vF1',
                        shell                   => '/bin/bash',
                }
                
                
}

