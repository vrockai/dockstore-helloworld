class: CommandLineTool
id: "HelloWorld"
label: "Hello world dockstore container"
cwlVersion: v1.0 
description: |
    A simple Dockstore container printing out the "Hello World!" message.

dct:creator:
  foaf:name: Viliam Rockai
  foaf:mbox: "mailto:viliam.rockai@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/collaboratory/dockstore-tool-bamstats:1.25-6_1.0"

hints:
  - class: ResourceRequirement
    coresMin: 1
    ramMin: 4092
    outdirMin: 512000
    doc: "the process requires at least 4G of RAM"

inputs:
  pwd:
    type: string
    default: /
    doc: "Path to be listed"
    inputBinding:
      position: 1

outputs:
  bamstats_report:
    type: File
    format: "http://edamontology.org/format_2330"
    outputBinding:
      glob: listing.txt
    doc: "A txt file with specified folder listing."

baseCommand: ["bash", "/usr/bin/ls"]
