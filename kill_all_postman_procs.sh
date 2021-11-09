#!/bin/bash

OUTPUT=$(killall Postman 2>&1)

while [ "$OUTPUT" != "Postman: no process found" ]; do
    OUTPUT=$(killall Postman 2>&1)
done

OUTPUT=$(killall _Postman 2>&1)

while [ "$OUTPUT" != "_Postman: no process found" ]; do
    OUTPUT=$(killall _Postman 2>&1)
done

