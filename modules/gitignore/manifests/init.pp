# A Chassis extension to set local .git/info/exclude ignore rules, on top
# of the default Chassis .gitignore file. This is not terribly useful.
class gitignore (
	$config,
) {
	if $config['gitignore'] {
		$config[ 'gitignore' ].each |String $ignore_line| {
			file_line { "git_ignore_${$ignore_line}":
				path => '/vagrant/.git/info/exclude',
				line => $ignore_line,
			}
		}
	}
}
