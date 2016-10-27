/*
 * Copyright (C) 2016, Pelagicore AB.
 *
 * Author: Jonatan Pålsson <jonatan.palsson@pelagicore.com>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQml 2.2

import org.qt 1.0

Item {
    property BluePlayer btPlayer

    function millisToDate(millis) {
        var date = new Date(millis);
        return Qt.formatDateTime(date, "m:ss")
    }

    Label {
        id: title
        text: btPlayer? "Title: " + btPlayer.title: ""
        anchors.top: parent.top
        anchors.left: parent.left
    }

    Label {
        id: album
        text: btPlayer ? "Album: " + btPlayer.album : ""
        anchors.top: title.bottom
        anchors.left: parent.left
    }

    Label {
        id: artist
        text: btPlayer? "Artist: " + btPlayer.artist : ""
        anchors.top: album.bottom
        anchors.left: parent.left
    }

    Label {
        id: duration
        text: btPlayer? "Duration: " + millisToDate(btPlayer.duration) : ""
        anchors.top: parent.top
        anchors.right: parent.right
    }

    Label {
        id: genre
        text: btPlayer? "Genre: " + btPlayer.genre : ""
        anchors.top: duration.bottom
        anchors.right: parent.right
    }
}