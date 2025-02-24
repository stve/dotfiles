if test -x /usr/libexec/java_home
  set -gx JAVA_HOME (/usr/libexec/java_home > /dev/null 2>&1)
end
