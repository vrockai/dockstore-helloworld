class: CommandLineTool
doc: "Test"
id: "HelloWorld"
label: "Hello world dockstore container"
cwlVersion: v1.0

dct:creator:
  foaf:name: Viliam Rockai

requirements:
  - class: DockerRequirement
    dockerPull: "vrockai/dockstore-helloworld"

inputs:
  pwd:
    type: string
    default: /
    doc: "Path to be listed"
    inputBinding:
      position: 1

outputs:
  ls_report:
    type: File
    format: "http://edamontology.org/format_2330"
    outputBinding:
      glob: listing.txt
    doc: "A txt file with specified folder listing."

baseCommand: ["bash", "/usr/bin/dockstore_ls"]

$namespaces:
  dct: http://purl.org/dc/terms/
  foaf: http://xmlns.com/foaf/0.1/