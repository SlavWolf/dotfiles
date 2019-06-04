backup:
		cp -au ~/.config/polybar/config ./polybar.conf && \
		cp -au ~/.config/i3/config ./i3.conf && \
		cp -au ~/.config/dunst/dunstrc ./dunst.conf && \
		cp -au ~/.vimrc ./vimrc && \
		cp -au ~/.tmux.conf ./tmux.conf && \
		cp -au ~/.zshrc ./zshrc
restore:
		mkdir -p ~/.config/{i3,polybar,dunst} && \
		cp -au ./polybar.conf ~/.config/polybar/config && \
		cp -au ./i3.conf ~/.config/i3/config && \
		cp -au ./dunst.conf ~/.config/dunst/dunstrc && \
		cp -au ./vimrc ~/.vimrc && \
		cp -au ./tmux.conf ~/.tmux.conf && \
		cp -au ./zshrc ~/.zshrc