# Quick Troubleshooting Guide

## High CPU
Windows:
tasklist | sort
taskkill /PID <PID> /F

Linux:
top
kill -9 <PID>

## Low priority background task
nice -n 10 comando

## Critical process needs priority
sudo renice -n -5 -p <PID>
