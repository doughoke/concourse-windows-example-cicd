# concourse-windows-example-cicd

Experiment to combine

https://gist.github.com/esauser/d8e937568e93dce902b0984abcab8690

and 

https://github.com/chrisumbel/DatDotNet

Credit goes to those respective authors.

##Purpose
Build a .NET application on a windows worker with docker installed to keep clean build machines.  This is due to the fact that no concourse resources are built as Windows Containers (which is fine and dandy).  
