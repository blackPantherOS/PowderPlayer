﻿import React from 'react';
import _ from 'lodash';
import PureRenderMixin from 'react-addons-pure-render-mixin';
import {
    IconButton, Paper
}
from 'material-ui';
import PlayerStore from '../store';
import PlayerActions from '../actions';
import path from 'path';


export
default React.createClass({

    mixins: [PureRenderMixin],

    getInitialState() {
        return {
            open: false,
            playlist: PlayerStore.getState().wcjs.playlist || false
        }
    },
    componentWillMount() {
        PlayerStore.listen(this.update);
    },

    componentWillUnmount() {
        PlayerStore.unlisten(this.update);
    },
    update() {
        if (this.isMounted()) {
            this.setState({
                open: PlayerStore.getState().playlistOpen,
                playlist: PlayerStore.getState().wcjs.playlist || false
            });
        }
    },
    close() {
        PlayerActions.openPlaylist(false);
    },
    handleOpenPlaylist() {


    },
    getItems() {
        let items = []
        if (!this.state.playlist) return [];

        for (var i = 0; i < this.state.playlist.items.count; i++) {
            items.push(PlayerStore.getState().itemDesc(i));
        }
        return items;
    },
    render() {
        return (
            <div className={this.state.open ? 'playlist-container show' : 'playlist-container'}>
				<div className="playlist-controls" / >
                <div className="playlist-holder">
					<div ref="playlist-title" className="droid-sans playlist-title">Playlist</div>
					<div className="playlist-inner">
                    	{
							this.getItems().map((item, idx) => {
            					return (
            						<Paper className="item" key={idx} zDepth={1} style={{background: 'url('+ item.image ? item.image : '../images/video-placeholder.svg' +') no-repeat'}}>
            							<p className="title">{(path.isAbsolute(item.title)) ? path.normalize(path.parse(item.title).name) : item.title }</p>
            						</Paper>
									)
        					}, this)
                    	}
                    </div>
               	</div> 
            </div>
        );
    }
});