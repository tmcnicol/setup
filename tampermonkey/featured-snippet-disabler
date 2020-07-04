// ==UserScript==
// @name         Featured Snippet Disabler
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Removes the noisy featured link highlighted text from google urls
// @author       tmcnicol
// @match        https://www.google.com/*
// ==/UserScript==

(function() {
    'use strict';
    const pattern = "#:~:text"
    const links = document.getElementsByTagName('a')
    for (const link of links) {
        if (link.href.includes(pattern)) {
            const url = link.href
            const i = url.indexOf(pattern)
            const newLink = url.slice(0, i)
            link.href = newLink
        }
    }
})();
