baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: bamsubsample
inputs:
  nameBam:
    doc: ''
    inputBinding:
      position: 1
      prefix: --nameBam
    type: File
  nameBamSubsampled:
    doc: ''
    inputBinding:
      position: 2
      prefix: --nameBamSubsampled
    type: string
  x:
    doc: ''
    inputBinding:
      position: 3
      prefix: --x
    type: double
label: BAM Subsample
outputs:
  nameReturn:
    doc: ''
    outputBinding:
      glob: nameReturn/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/bamsubsample:1
s:author:
  class: s:Person
  s:name: Bahram Kermani
