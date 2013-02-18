#awk print system ENVIRON
BEGIN {
	for (env in ENVIRON)
		print env "=" ENVIRON[env]
} 
