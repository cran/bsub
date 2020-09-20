## ---- eval = FALSE------------------------------------------------------------
#  config_foo =  function(user = NULL) {
#  	bsub_opt$login_node = "serverA"
#  	bsub_opt$submission_node = NULL  # so that you cannot submit jobs!
#  	
#  	if(!is.null(user)) bsub_opt$user = user
#  
#  	# You need to find out the value of `LSF_ENVDIR` and `LSF_SERVERDIR` on the submission node.
#  	# Check the "Bash environment" section in ./configure_bsub_package.html
#  	ssh_envir = "source /etc/profile; export LSF_ENVDIR=your_LSF_ENVDIR; export LSF_SERVERDIR=your_LSF_SERVERDIR"
#  
#  	# We create pseudo `bjobs`/`bparam`/`bkill` which actually call the real commands on server B
#  	bsub_opt$ssh_envir = c(
#  		"source /etc/profile",
#  		qq("alias bjobs=\"ssh -i your_ssh_key @{bsub_opt$user}@serverB '@{ssh_envir};bjobs'\""),
#  		qq("alias bparam=\"ssh -i your_ssh_key @{bsub_opt$user}@serverB '@{ssh_envir};bparam'\""),
#  		qq("alias bkill=\"ssh -i your_ssh_key @{bsub_opt$user}@serverB '@{ssh_envir};bkill'\"")
#  	)
#  	invisible(NULL)
#  }
#  config_foo("your-user-name")

