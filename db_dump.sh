#!/bin/bash

pg_dump -Fc --schema=public -h localhost -U thingsboard > /tmp/thingsboard.sql
