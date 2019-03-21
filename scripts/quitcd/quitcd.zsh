export NNN_TMPFILE="/tmp/nnn"

n()
{
        # hack for avoiding -F in $LESS; really should be its own env var for nnn
        LESS=-cRX nnn "$@"

        if [ -f $NNN_TMPFILE ]; then
                . $NNN_TMPFILE
                rm $NNN_TMPFILE
        fi
}
