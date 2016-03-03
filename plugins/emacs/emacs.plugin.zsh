#!/bin/sh


function emv () { 
    mv $1 $2 && sudo updatedb;
}
