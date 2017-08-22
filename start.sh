#!/bin/bash
cd /demo
su -c 'php bin/console server:run 0.0.0.0:8000' phpapp
