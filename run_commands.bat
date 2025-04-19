@echo off
python -m venv .venv
.venv\Scripts\activate
python -m pip install --upgrade pip
python -m pip install -r eifb_requirements.txt