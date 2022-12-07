#!/bin/bash
# TODO: Explicar aquí qué hace el script

# ------------------------ CONSTANTS --------------------------

# Number of args that must be specified when invoking this script
NUM_ARGS=2  # TODO: Actualizar el número de argumentos del script
# TODO: Añadir aquí las constantes que use el script
CTE1="value"

# -------------------------------------------------------------

# ------------------------ FUNCTIONS --------------------------

storeScriptParameters() {  # TODO: Añadir aqui el nombre de los parámetros que recibe el script
    # Script parameters:
    # TODO: Explicar que hace este parámetro
    # 1. This param...
    todoRenameVariable1=$1
    # TODO: Explicar que hace este parámetro
    # 2. This param...
    todoRenameVariable2=$2
    # TODO: Añadir o eliminar parámetros
}

printHelp() {
    # TODO: Explicar aqui cómo se invoca al script e información de ayuda adicional
    echo "Use: $0 <todoRenameVariable1> <todoRenameVariable2>"
    echo "    message"
    echo "    message"
}

printLineSeparator() {
    # Prints a line separator using the "-" character.
    # It prints as many "-" characters as needed to fill the current terminal session screen width.
    cols=$(tput cols)
    for ((i=0; i<cols; i++)); do printf "-"; done; echo
}

printSection() {
    # Prints a section using line separators.
	#
    # Parameters:
	# 1. Section name
    printLineSeparator
    echo "$1"
    printLineSeparator
}

# ------------------------------------------------------------

# -------------------- ARGUMENTS CHECKING --------------------

# Check the number of arguments passed to the script
if [[ "$#" -eq 1 && "$1" == "--help" ]]; then
    printHelp
    exit 0
elif [[ "$#" -ne "$NUM_ARGS" ]]; then
    echo "[ERROR] Number of parameters must be $NUM_ARGS."
    printHelp
    exit 1
fi

# -------------------------------------------------------------

# TODO: Maybe this is not needed if no global-functions.sh script is created
#  global-functions.sh contains some global functions used by other scrips
# ------------------- LOAD GLOBAL FUNCTIONS -------------------

# Get the absolute path to the parent directory of the directory that contains this script
parentDirectory="$( dirname "$( dirname "$(realpath "$0" )" )" )"
# Add "/common/global-functions.sh" to the previous directory asbolute path # TODO: Modify this
globalFunctionsScriptAbsolutePath="$parentDirectory/common/global-functions.sh" # TODO: Modify this

# Load the global functions from the global-functions script
source "$globalFunctionsScriptAbsolutePath"

# -------------------------------------------------------------

# --------------------------- MAIN ----------------------------

# Store script parameters in variables with descriptive names
storeScriptParameters $*

# TODO: Añadir aquí el codigo main del script

# -------------------------------------------------------------
