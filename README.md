# Bypass-403-forbidden
bypassing 403!, use automated workflow to do that >
## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)

## Introduction

Introduce your penetration testing tool, emphasizing ethical use and authorized access.

## Features

1. **Changing X-Forwarded-For to 127.0.0.1:**
    - Spoofing the localhost in the HTTP headers
  
2. **Recursive Fuzzing to Endpoints:**
    - Performing recursive fuzzing to discover endpoints

3. **Special Character Fuzzing:**
    - Employing special character fuzzing to identify and test for input validation vulnerabilities

4. **POST Method Usage:**
    - Change the request to POST method.

5. **Path Modification:**
    - Modifying paths in requests to test for security flaws and access control issues

6. **Changing HTTP Version to v1:**
    - Switching the HTTP version so the response might change

## Installation

make sure that you have installed docker in you enviroment

```bash
# clone the repository
git clone https://github.com/thisshehab/Bypass-403-forbidden.git
cd Bypass-403-forbidden
```

```bash
# build the image
docker build -t bypass403 .
```
## Usage
replace the file yourinput.txt with yourfile that contains a list of 403 endpoints,

```bash
sudo docker run -v ./yourinput.txt:/app/input.txt -it bypass403
```

