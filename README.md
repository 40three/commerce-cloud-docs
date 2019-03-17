# Commerce Cloud User Documentation

This repository contains the public end user documentation for 40three commerce cloud app.

## Setup for Content Editors

### Install chocolatey package manager

Open PowerShell console as administrator and run

     Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString 'https://chocolatey.org/install.ps1'))

See https://chocolatey.org/install for details or non Windows OS.

### Install hugo tooling

Open PowerShell and run

     choco install hugo -confirm

See https://gohugo.io/getting-started/installing for details or non Windows OS.

## Editing Content

Use any editor that supports markdown files. A good option is visual studio code, you can download and install it from here https://code.visualstudio.com/

### Preview

Hugo has a development server that allows you to open the docs website with all your edits on your local pc. 

1. Open PowerShell
2. Navigate the folder containing this project
3. Start hugo development server: **hugo server**
4. Open your browser and navigate to **http://localhost:1313** (check output of hugo server command, it contains the url to use in your browser)