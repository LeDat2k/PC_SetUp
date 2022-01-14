#!/bin/sh


# URL - http://www.google.com/search?q=[string]
# sensible-browser http://www.google.com/search?q=$search
sh -c 'sensible-browser "https://www.google.com/search?q=$(xclip -o)"'