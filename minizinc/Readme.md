# Minizinc Model
The minizinc model can be found in the file rolealloc-compact.mzn. Minizinc allows the model and the data to be stored seperatly. The data files for the different configurations have the file extension .dzn
## Run the model
To run the minizinc model you have to [install minizinc](https://www.minizinc.org/). After that simply type
```minizinc --solver Gecode rolealloc-compact.mzn configuration_x.dzn```

