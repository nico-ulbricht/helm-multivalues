# Helm Multivalues Plugin
While `kubectl` has the option to supply folders for its values `helm` currently does not.  
This plugin attempts to solve this for this by splitting a provided folder into the individual `.yaml` files in that folder.  

## Installation
`$ helm plugin install https://github.com/nico-ulbricht/helm-multivalues`

## Usage
`$ helm multivalues [ORIGINAL_COMMAND] -f [VALUES_FOLDER_PATH] [ORIGINAL_ARGS]`
