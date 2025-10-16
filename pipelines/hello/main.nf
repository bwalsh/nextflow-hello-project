nextflow.enable.dsl=2

process HELLO {
  output:
    path 'hello.txt'
  """
  echo "hello from nextflow 🧬" > hello.txt
  """
}

workflow {
  HELLO()
}
