#!/bin/bash



# Quoting is used to remove the special meaning of certain characters or words to the shell.
# Quoting can be used to disable special treatment for special characters, to prevent reserved
# words from being recognized as such, and to prevent parameter expansion. 

# Escape character

# A non-quoted backslash ‘\’ is the Bash escape character. It preserves the literal
# value of the next character that follows, removing any special meaning it has,
# with the exception of newline. If a \newline pair appears, and the backslash
# itself is not quoted, the \newline is treated as a line continuation
# (that is, it is removed from the input stream and effectively ignored). 

echo "ESCAPE CHARACTER"
# echo ( # ERROR
echo \( # Ok
# echo ) # error
echo \) # Ok
echo \"
echo \'

# Single quotes

# Enclosing characters in single quotes (‘'’) preserves the literal value of each character within the quotes.
# A single quote may not occur between single quotes, even when preceded by a backslash. 

echo "SINGLE QUOTES"

echo '\t\t\t\t\t\n'
echo '\\$\()))))(())[[[]]]'
# echo ''' # Wrong!
# echo '\'' # Still wrong!
echo ''\''' # An ugly workaround
# Double Quotes

# Enclosing characters in double quotes "" preserves the literal value of all characters withing the quotes,
# with the exception of $ ` \ and when history expansion is enabled !. When the shell is in POSIX mode, the !
# has no special meaning withing the double quotes, even when history expansion is enabled. The characters $ and `
# retain their special meaning within double quotes (Shell Expansions) the backslash retains its special meaning only
# when followed by one of the following characters $ ` " \ or newline. Withing double quotes, backslashed that are
# followed by one of these characters are removed. Backslashes preceding characters without a special meaning are left unmodified.

# A double quote may be quoted within double quotes by preceeding it with a backslash. If enabled, history expansion
# will be performed unless an ! appearing in double quotes is escaped using a backslash. The backslash preceding the !
# is not removed

# Special parameters * and @ have special meaning when in double quotes

echo "DOUBLE QUOTES"
echo "Hello Bash!"
echo "\""
echo "$(ls)"
echo "`ls`"
echo "\a\b\c\d"
echo "\$ \` \" \\" 

# ANSI-C Quoting

# Character sequences of the form $'string' are treated as a special kind of single quotes.
# The sequence expands to string, with backlash-escaped characters in string replaced as specified by the
# ANSI C standard. Backslash escape sequences, if present are decoded as follows:

echo "ANSI-C Quoting"
echo $'\a alert'
echo $'\b backspace'
echo $'\e \E An escape character (not in ANSI C)'
echo $'\f form feed'
echo $'\n newline'
echo $'\r carriage return'
echo $'\t horizontal tab'
echo $'\v vertical tab'
echo $'\\ \' \" \? display characters'
echo $'\101\102\103 - eight bit character whose value is the octal value nnn'
echo $'\x41\x42\x43 - eight bit character whose value is the hexadecimal value HH'
echo $'\u1f60 - the unicode ISO/IEC 10646 character whose value is the hex value HHHH'
echo $'\U30C4 - The Unicode (ISO/IEC 10646) character whose value is the hexadecimal value HHHHHHHH (one to eight hex digits).'
echo $'\cx - a control-x character'