node default { }

node 'puppet.bl.ch' {
include lamp
notify { 'Testausgabe von Puppet erfolgreich. :)':
}
}
node 'lp1.bl.ch' {
include update
notify { 'Testausgabe erfolgreich. :)':
}
}
node 'wp01.bl.ch' {
file { 'c:\\Temp\puppettestfile3.txt': # Resource type file
 ensure => 'present', # Stellt sich dass es existiert
 owner => 'Test', # Besitzer
 content => "Dies ist das Testdokument3 zur Übung mit Puppet. 01.02.2017 Michèle Merlo ZI"
}
}
