#!/bin/bash
echo "tests for shellshock, echoes 'busted' if vulnerable. 'stuff' if not."
env X="() { :;} ; echo busted" /bin/sh -c "echo stuff"
