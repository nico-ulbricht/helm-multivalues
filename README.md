# Helm Upgrade Folder Plugin
While `kubectl` has the option to supply folders for its values `helm` currently does not.  
This plugin attempts to solve this for the upgrade command by splitting a provided folder into the individual `.yaml` files in that folder.  
## Installation
`$ helm plugin install https://github.com/wahtye/helm-upgradef`

## Usage
`$ helm upgradef -f [VALUES_FOLDER_PATH] [RELEASE_NAME] [RELEASE_SOURCE]`