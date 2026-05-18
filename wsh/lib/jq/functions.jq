# Attempts to tidy those ridiculously long ARNs into something more concise
def arnchomp(n; sep):
  walk(
    if type == "string" and startswith("arn:")
    then [split(sep)[] | select(. != "")] | .[-n:] | join(sep)
    else .
    end
  );

def arnchomp(n): arnchomp(n; ":");

def arnchomp:    arnchomp(2; ":");

# jq 'count_by(.license.key)' data.json
def count_by(key):
    group_by(key)
    | map({
        key: first|key,
        value: length
      })
;

