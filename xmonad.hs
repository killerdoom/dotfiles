import XMonad
import XMonad.Layout
import XMonad.Config
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Layout.Spacing
import XMonad.Hooks.EwmhDesktops hiding (fullscreenEventHook)
import XMonad.Hooks.ManageDocks
import XMonad.Util.Cursor
import XMonad.Actions.TiledWindowDragging
import XMonad.Layout.DraggingVisualizer
import XMonad.Layout.ToggleLayouts
import XMonad.Layout.Fullscreen
import XMonad.Layout.Spiral
import qualified XMonad.StackSet as W
import qualified Data.Map as M

myLayoutHook = avoidStruts
 $ draggingVisualizer
  $ spacingWithEdge 10
  $	Tall 1 (3/100) (0.55)
	||| Mirror (Tall 1 (3/100) (0.55))
	||| Full

myWorkspaces = ["I","II","III","IV","V","VI","VII","VIII","IX"]

myKeys = [
	("M-t", spawn "alacritty"),
	("M-x", spawn "flameshot gui"),
	("M-S-e", spawn "rofi -show filebrowser"),
	("M-r", spawn "rofi -show drun"),
	("M-w", spawn "rofi -show window"),
	("M-S-r", spawn "rofi -show run"),
--	("M-S-p", spawn "xmonad --recompile && xmonad --restart"),
	("M-S-v", withFocused toggleFloat),
	("M-Button1",withFocused dragWindow),
	("M-q", kill) ]

		where
				toggleFloat w = windows (\s -> if M.member w (W.floating s)
				then W.sink w s
				else (W.float w (W.RationalRect (1/3) (1/4) (1/2) (4/5)) s))


main = xmonad $ fullscreenSupport $ docks $ ewmhFullscreen $ ewmh $ def {
	modMask = mod4Mask,
	terminal = "alacritty",
	borderWidth = 2,
	normalBorderColor = "#141414",
	focusedBorderColor = "#323232",
	handleEventHook = fullscreenEventHook,
	manageHook = fullscreenManageHook,
	layoutHook = fullscreenFull myLayoutHook,
	workspaces = myWorkspaces
}
 `additionalKeysP` myKeys
