setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
setMode -bs
addDevice -p 3 -file "E:/31101008121220/lab28/PipelineCPU_VGA/mipspipelinecpu_vga.bit"
deleteDevice -position 4
Program -p 3 -defaultVersion 0 
saveProjectFile -file "E:/31101008121220/lab28/PipelineCPU_VGA/PipelineCPU_VGA.ipf"
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
