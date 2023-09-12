<?php
    $config['type'] = "mysql";
    $config['key'] = "aM6ouGqESmrhhBoKWmZ0qim5ssCaWxyd";
    $config['method'] 	= "fping";
    $config['pingpath'] = "/usr/bin/fping";
    $config['nonthreaded'] = false;
    $config['threads']  = 32;
    $config['api']['key'] = "";
    $config['sendmail'] = false;
    $config['reset_autodiscover_addresses'] = false;
    $config['remove_inactive_dhcp']         = false;

    $config['db']['host'] = "127.0.0.1";
    $config['db']['user'] = "root";
    $config['db']['pass'] = "root";
    $config['db']['name'] = "phpipam";
    $config['db']['port'] = 3306;
    
    $config['db']['ssl']        = false;                          
    $config['db']['ssl_key']    = '/path/to/cert.key';            
    $config['db']['ssl_cert']   = '/path/to/cert.crt';            
    $config['db']['ssl_ca']     = '/path/to/ca.crt';              
    $config['db']['ssl_capath'] = '/path/to/ca_certs';            
    $config['db']['ssl_cipher'] = 'DHE-RSA-AES256-SHA:AES128-SHA';
    $config['db']['ssl_verify'] = true;                           
