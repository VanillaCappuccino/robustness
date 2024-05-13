#!/bin/bash

function runAllPerturbations(){
   arr=("$@")
   for i in "${arr[@]}";
      do
          python testplus.py -m resnet18 -p "$i" --ngpu 1 --num_workers 4
          #-cp sthsth
      done

}

array=('gaussian_noise' 'shot_noise' 'motion_blur' 'zoom_blur' 'spatter' 'brightness' 'translate'
'rotate' 'tilt' 'scale' 'speckle_noise' 'gaussian_blur' 'snow' 'shear')

runAllPerturbations "${array[@]}"