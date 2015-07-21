name             'keboola-syrup-es-proxy'
maintainer       'Keboola'
maintainer_email 'martin@keboola.com'
license          'All rights reserved'
description      'Installs/Configures keboola-generic-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'


depends 'aws', '~> 2.4.0'
depends 'keboola-php56'
depends 'keboola-common'
depends 'keboola-apache2'
