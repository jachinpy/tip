#!/bin/sh


function pyvim () {                                                                                                                                                                  1 
    vim $(find . -name "*.py" | percol)
}
