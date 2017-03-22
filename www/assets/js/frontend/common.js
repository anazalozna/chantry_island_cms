/**
 * Created by nasia on 02/02/17.
 */

'use strict';

(function(){
    //make menu mobile friendly
    window.addEventListener("load", () => {
        var nav_links_with_sub = document.querySelectorAll('li.parent_menu > a'); //all links with submenu in header nav

        //disable parent links when clicking
        nav_links_with_sub.forEach(
            link => link.addEventListener("click", e => e.preventDefault(), false)
        );
    }, false);
})();