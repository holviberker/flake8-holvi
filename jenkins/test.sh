#!/bin/bash
#!/usr/bin/env bash

pushd ..

[ -d ".env" ] || virtualenv .env
.env/bin/pip install -r requirements.txt

.env/bin/python -m unittest discover -v .

# collect the result
result=$?

exit $result
