if type "xrandr"; then
  for m in $(xrandr --query | grep "DisplayPort-1 connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload toph &
  done
else
  polybar --reload toph &
fi
