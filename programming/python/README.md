# Python

Install requirements globally:
`pip3 install black flake8`  
or  
`pip3 install -r requirements.txt`

## flake8
Linting configuration with `flake8`
`cp .flake8 ~/.flake8`

### Custom Rules
* ignore line break on binary operator because black breaks did it so can't complain with that 
* line length 88 to conform with `black` code formatting
* ignores folders containing **tests** or **env**

## black
Code formatting with black.  
black doesn't need configuration, just make sure it's installed.  
Remember to specify `--exclude` folders when running.  
If in doubt run with `--check` first so it doesn't change anything