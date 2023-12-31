# Bypass-403-forbidden
bypassing 403! forbidden, use this automated workflow to achive that.
## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)

## Introduction

Introduce your penetration testing tool, emphasizing ethical use and authorized access.

## Methdology 

1. **Changing X-Forwarded-For to 127.0.0.1:**
    - Spoofing the localhost in the HTTP headers
  
2. **Recursive Fuzzing to Endpoints:**
    - Performing recursive fuzzing to discover endpoints

3. **POST Method Usage:**
    - Change the request to POST method.

4. **Path Modification:**
    - Modifying paths in requests to test for security flaws and access control issues

5. **Changing HTTP Version to v1:**
    - Switching the HTTP to older version

## Installation

make sure that you have installed docker in your enviroment.

```bash
# clone the repository
git clone https://github.com/thisshehab/Bypass-403-forbidden.git
cd Bypass-403-forbidden
```

```bash
# build the image
sudo docker build -t bypass403 .
```
## Usage
replace the file yourinput.txt with yourfile that contains a list of 403 endpoints.

```bash
sudo docker run -v ./yourinput.txt:/app/input.txt -it bypass403
```

