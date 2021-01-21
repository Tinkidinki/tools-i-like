# Wacom Tablet

I really enjoy working with the really cheap but very convenient medium sized Wacom One tablet. My paper usage has gone down to near 0 since I started using it. 

## Button configuration
The stylus has two buttons on the side. However, touching the tip of the stylus to the tablet is also considered a button press. Hence there are three "buttons"
- Button 1: The tip of the stylus. Touching the tablet with it is a button press.
- Button 2: The button on the side closer to the tip.
- Button 3: The button on the side farther from the tip. 

I use the Wacom tablet with the Xournalpp software, so I have configured Button 1 to act like the default (left mouse click), button 2 to go into pen mode (CTRL-SHIFT-P) in Xournalpp and button 3 to go into erase mode (CTRL-SHIFT-E) in Xournalpp. 

I write the following two lines and save them as a bash script (available in this repository)
Then I assign a shortcut (CTRL-SHIFT-W) to run this script. So, all I need to do is press that one shortcut everytime I insert my Wacom tablet:

```
xsetwacom --set "Wacom One by Wacom M Pen stylus" Button +3 "key ctrl" "key shift" "key e"
xsetwacom --set "Wacom One by Wacom M Pen stylus" Button +2 "key ctrl" "key shift" "key p"

```


