## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$call_Rscript = function(version) {
#  	qq("module load gcc/7.2.0; module load java/1.8.0_131; module load R/@{version}; Rscript")
#  }

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$call_Rscript = function(version) {
#      qq("conda activate R_@{version}; Rscript")
#  }

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$submission_node = ...

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$login_node = "server A"
#  bsub_opt$submission_node = NULL

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$user = ...

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$ssh_envir = c("source /etc/profile",
#                         "export LSF_ENVDIR=/opt/lsf/conf",
#                         "export LSF_SERVERDIR=/opt/lsf/10.1/linux3.10-glibc2.17-x86_64/etc")

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$bsub_template = function(name, hour, memory, core, output, ...) {
#  	glue::glue("bsub -J '{name}' -W '{hour}:00' -n {core} -R 'rusage[mem={memory}GB]' -o '{output}'")
#  }

## ---- eval = FALSE------------------------------------------------------------
#  bsub_opt$parse_time = function(x) {
#      as.POSIXlt(x, format = "%b %d %H:%M:%S %Y")
#  }

