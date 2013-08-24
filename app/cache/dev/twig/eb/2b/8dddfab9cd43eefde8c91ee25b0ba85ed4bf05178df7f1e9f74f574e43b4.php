<?php

/* :examples:google_map_example.html.twig */
class __TwigTemplate_eb2b8dddfab9cd43eefde8c91ee25b0ba85ed4bf05178df7f1e9f74f574e43b4 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );

        $this->macros = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<aside>
    <div id=\"map_canvas\">
        
    </div>
</aside>

<script src=\"https://maps.googleapis.com/maps/api/js?sensor=false\"></script>

<script>
  function initialize() {
    var myLatlng = new google.maps.LatLng(51.524338,-0.112859);
    var mapOptions = {
      zoom: 12,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    var map = new google.maps.Map(document.getElementById(\"map_canvas\"), mapOptions);

    var contentString = '<div id=\"content\">'+
        '<div id=\"siteNotice\">'+
        '</div>'+
        '<h3 id=\"firstHeading\" class=\"firstHeading\">Maynard Malone</h3>'+
        '<div id=\"bodyContent\">'+
        '<p>Creative Digital Agency in London ' +
        'sandstone rock formation in the southern part of the '+
        'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
        'Heritage Site.</p>'+
        '<p>Attribution: Maynard Malone, <a href=\"http://www.maynardmalone.com\">'+
        'visit us</a> '+
        '</p>'+
        '</div>'+
        '</div>';

    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });

    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'Maynard Malone'
    });
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map,marker);
    });
    
    var center;
    
    function calculateCenter() {
        center = map.getCenter();
    }
    
    google.maps.event.addDomListener(map, 'idle', function() {
        calculateCenter();
    });
    
    google.maps.event.addDomListener(window, 'resize', function() {
        map.setCenter(center);
    });

  }

</script>";
    }

    public function getTemplateName()
    {
        return ":examples:google_map_example.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  1191 => 330,  1185 => 329,  1179 => 328,  1173 => 327,  1167 => 326,  1161 => 325,  1155 => 324,  1149 => 323,  1143 => 322,  1127 => 316,  1120 => 315,  1118 => 314,  1115 => 313,  1092 => 309,  1067 => 308,  1065 => 307,  1062 => 306,  1050 => 301,  1045 => 300,  1043 => 299,  1040 => 298,  1031 => 292,  1025 => 290,  1022 => 289,  1017 => 288,  1015 => 287,  1012 => 286,  1005 => 281,  996 => 279,  992 => 278,  989 => 277,  986 => 276,  984 => 275,  981 => 274,  973 => 270,  971 => 269,  968 => 268,  961 => 263,  958 => 262,  950 => 257,  946 => 256,  942 => 255,  939 => 254,  937 => 253,  934 => 252,  926 => 248,  924 => 244,  922 => 243,  919 => 242,  897 => 235,  894 => 234,  891 => 233,  888 => 232,  885 => 231,  882 => 230,  879 => 229,  876 => 228,  873 => 227,  870 => 226,  867 => 225,  865 => 224,  862 => 223,  854 => 217,  851 => 216,  849 => 215,  846 => 214,  838 => 210,  835 => 209,  833 => 208,  830 => 207,  822 => 203,  819 => 202,  806 => 196,  801 => 194,  798 => 193,  790 => 189,  787 => 188,  785 => 187,  774 => 182,  771 => 181,  769 => 180,  766 => 179,  758 => 175,  745 => 169,  742 => 168,  740 => 167,  737 => 166,  729 => 162,  726 => 161,  724 => 160,  722 => 159,  719 => 158,  712 => 153,  694 => 150,  688 => 148,  685 => 147,  680 => 145,  670 => 138,  668 => 136,  653 => 131,  635 => 122,  622 => 119,  616 => 117,  592 => 110,  587 => 108,  569 => 103,  549 => 98,  530 => 93,  528 => 92,  520 => 90,  502 => 89,  488 => 82,  463 => 74,  438 => 68,  432 => 64,  382 => 47,  216 => 274,  302 => 278,  817 => 201,  814 => 200,  803 => 195,  799 => 469,  795 => 467,  782 => 186,  756 => 174,  753 => 173,  734 => 458,  717 => 457,  713 => 455,  709 => 454,  705 => 453,  701 => 452,  686 => 448,  684 => 447,  641 => 440,  629 => 436,  613 => 116,  331 => 112,  372 => 43,  353 => 35,  293 => 14,  451 => 71,  417 => 140,  404 => 135,  389 => 176,  319 => 22,  278 => 93,  209 => 77,  308 => 129,  344 => 147,  326 => 24,  304 => 93,  511 => 100,  507 => 74,  504 => 73,  454 => 19,  430 => 14,  424 => 62,  357 => 151,  339 => 145,  312 => 91,  303 => 105,  258 => 103,  699 => 286,  696 => 285,  690 => 283,  683 => 146,  671 => 273,  665 => 270,  660 => 268,  655 => 265,  649 => 262,  644 => 261,  639 => 123,  637 => 259,  632 => 437,  627 => 120,  619 => 251,  610 => 246,  582 => 240,  579 => 239,  576 => 399,  573 => 237,  568 => 235,  565 => 234,  547 => 233,  545 => 232,  541 => 395,  538 => 394,  536 => 393,  519 => 221,  501 => 213,  497 => 87,  481 => 202,  468 => 197,  421 => 173,  416 => 171,  396 => 52,  383 => 145,  367 => 41,  317 => 21,  282 => 115,  198 => 252,  189 => 82,  408 => 58,  388 => 160,  361 => 120,  359 => 37,  342 => 146,  320 => 135,  309 => 95,  264 => 105,  261 => 329,  251 => 324,  214 => 90,  232 => 87,  201 => 55,  259 => 328,  208 => 267,  402 => 162,  399 => 179,  390 => 50,  386 => 150,  369 => 140,  362 => 153,  348 => 33,  328 => 111,  297 => 97,  235 => 69,  217 => 80,  702 => 152,  693 => 450,  687 => 403,  677 => 275,  667 => 135,  663 => 394,  652 => 386,  646 => 383,  626 => 372,  618 => 367,  608 => 114,  594 => 243,  588 => 242,  570 => 236,  563 => 332,  555 => 327,  551 => 325,  527 => 312,  522 => 310,  517 => 308,  442 => 149,  437 => 146,  433 => 144,  412 => 183,  370 => 42,  329 => 185,  256 => 99,  240 => 93,  234 => 306,  229 => 298,  215 => 79,  210 => 61,  205 => 265,  158 => 34,  151 => 46,  672 => 139,  669 => 137,  664 => 215,  657 => 211,  651 => 130,  647 => 206,  642 => 382,  636 => 438,  634 => 201,  631 => 121,  625 => 254,  623 => 197,  620 => 196,  614 => 194,  612 => 193,  609 => 192,  603 => 190,  590 => 109,  586 => 346,  580 => 343,  571 => 104,  566 => 102,  558 => 396,  553 => 136,  550 => 135,  537 => 96,  515 => 117,  508 => 115,  492 => 208,  489 => 109,  483 => 108,  477 => 126,  471 => 50,  465 => 278,  441 => 69,  435 => 182,  431 => 151,  419 => 61,  410 => 59,  405 => 57,  401 => 120,  377 => 157,  374 => 142,  364 => 129,  358 => 157,  345 => 32,  340 => 119,  337 => 27,  334 => 113,  321 => 100,  273 => 110,  270 => 4,  247 => 322,  228 => 87,  197 => 75,  175 => 62,  170 => 63,  137 => 158,  706 => 207,  700 => 204,  697 => 151,  695 => 202,  689 => 449,  679 => 276,  674 => 274,  662 => 134,  659 => 193,  656 => 132,  648 => 129,  645 => 205,  628 => 184,  611 => 115,  606 => 181,  601 => 356,  598 => 188,  595 => 187,  589 => 174,  585 => 241,  583 => 171,  578 => 170,  561 => 138,  540 => 124,  535 => 165,  532 => 227,  529 => 120,  526 => 389,  523 => 91,  521 => 222,  518 => 159,  509 => 154,  505 => 301,  500 => 88,  498 => 149,  495 => 111,  491 => 128,  485 => 81,  460 => 21,  458 => 273,  455 => 191,  449 => 100,  446 => 187,  444 => 99,  439 => 156,  428 => 143,  423 => 142,  403 => 180,  398 => 140,  384 => 115,  380 => 144,  371 => 141,  365 => 161,  352 => 149,  349 => 321,  336 => 117,  314 => 20,  310 => 105,  300 => 277,  294 => 101,  292 => 120,  289 => 119,  275 => 6,  266 => 79,  253 => 325,  250 => 97,  239 => 313,  236 => 312,  231 => 305,  203 => 262,  194 => 69,  178 => 45,  149 => 178,  347 => 122,  341 => 96,  338 => 116,  324 => 23,  315 => 129,  288 => 98,  285 => 82,  267 => 3,  262 => 103,  255 => 326,  223 => 295,  218 => 285,  193 => 242,  187 => 239,  184 => 80,  181 => 64,  164 => 199,  93 => 27,  117 => 108,  567 => 178,  556 => 176,  552 => 175,  544 => 318,  539 => 316,  533 => 168,  531 => 391,  525 => 163,  516 => 101,  512 => 218,  506 => 215,  503 => 113,  499 => 66,  494 => 296,  479 => 201,  476 => 78,  473 => 122,  469 => 76,  462 => 105,  459 => 131,  456 => 268,  452 => 267,  445 => 121,  429 => 102,  425 => 4,  418 => 12,  414 => 121,  409 => 148,  391 => 177,  385 => 48,  379 => 158,  376 => 81,  366 => 155,  356 => 36,  332 => 26,  306 => 128,  301 => 125,  295 => 15,  287 => 118,  284 => 97,  279 => 113,  245 => 96,  225 => 93,  213 => 273,  204 => 58,  200 => 261,  173 => 75,  168 => 60,  156 => 56,  129 => 144,  87 => 41,  113 => 38,  363 => 332,  360 => 152,  355 => 125,  351 => 322,  346 => 320,  343 => 97,  333 => 141,  330 => 140,  323 => 96,  316 => 107,  313 => 106,  305 => 78,  299 => 90,  290 => 13,  286 => 131,  283 => 95,  280 => 114,  274 => 111,  268 => 107,  263 => 330,  252 => 100,  244 => 321,  226 => 297,  219 => 59,  188 => 66,  183 => 63,  177 => 214,  140 => 26,  12 => 34,  163 => 60,  155 => 52,  153 => 51,  127 => 129,  116 => 40,  107 => 87,  132 => 145,  130 => 50,  121 => 25,  100 => 23,  79 => 31,  73 => 19,  68 => 17,  56 => 11,  80 => 25,  37 => 4,  26 => 3,  103 => 36,  84 => 30,  61 => 14,  23 => 1,  493 => 56,  487 => 205,  482 => 80,  474 => 77,  470 => 162,  466 => 75,  457 => 158,  453 => 72,  450 => 156,  448 => 151,  443 => 70,  440 => 184,  436 => 16,  426 => 150,  422 => 141,  420 => 141,  415 => 60,  411 => 138,  406 => 123,  400 => 235,  397 => 118,  394 => 96,  392 => 117,  387 => 49,  381 => 170,  378 => 97,  375 => 112,  373 => 126,  368 => 109,  354 => 150,  350 => 34,  335 => 114,  327 => 139,  325 => 138,  322 => 109,  318 => 104,  311 => 130,  307 => 104,  298 => 16,  296 => 118,  291 => 116,  281 => 8,  277 => 3,  271 => 73,  265 => 93,  260 => 149,  254 => 101,  248 => 88,  242 => 71,  237 => 72,  221 => 286,  195 => 251,  191 => 83,  180 => 64,  172 => 207,  143 => 42,  135 => 52,  131 => 22,  110 => 37,  64 => 2,  41 => 6,  276 => 112,  272 => 5,  257 => 327,  246 => 93,  243 => 92,  241 => 319,  238 => 89,  233 => 75,  230 => 67,  227 => 63,  224 => 85,  222 => 92,  220 => 67,  211 => 268,  207 => 76,  182 => 222,  162 => 193,  146 => 43,  138 => 28,  122 => 114,  105 => 30,  74 => 19,  70 => 16,  66 => 21,  62 => 17,  97 => 57,  92 => 35,  88 => 26,  78 => 22,  71 => 20,  59 => 12,  90 => 26,  24 => 2,  29 => 3,  96 => 28,  91 => 28,  81 => 24,  49 => 10,  30 => 7,  47 => 8,  34 => 5,  31 => 3,  199 => 85,  186 => 56,  174 => 213,  169 => 206,  166 => 62,  161 => 34,  159 => 192,  154 => 185,  145 => 28,  141 => 45,  139 => 165,  124 => 128,  120 => 47,  108 => 30,  94 => 56,  65 => 14,  52 => 12,  27 => 2,  28 => 5,  22 => 1,  82 => 32,  75 => 21,  72 => 21,  50 => 10,  43 => 11,  40 => 7,  25 => 2,  249 => 323,  160 => 59,  148 => 30,  142 => 166,  134 => 157,  126 => 35,  123 => 33,  118 => 40,  114 => 107,  111 => 33,  104 => 86,  101 => 29,  99 => 67,  86 => 30,  77 => 20,  69 => 12,  58 => 12,  55 => 13,  53 => 10,  46 => 9,  44 => 7,  38 => 5,  35 => 6,  32 => 4,  212 => 78,  206 => 75,  202 => 86,  196 => 84,  192 => 59,  190 => 241,  185 => 223,  179 => 220,  176 => 39,  171 => 74,  167 => 200,  165 => 54,  157 => 186,  152 => 179,  150 => 54,  147 => 173,  144 => 172,  136 => 28,  133 => 39,  128 => 21,  125 => 20,  119 => 113,  115 => 39,  112 => 102,  109 => 101,  106 => 25,  102 => 68,  98 => 39,  95 => 31,  89 => 46,  85 => 25,  83 => 24,  76 => 23,  67 => 19,  63 => 20,  60 => 19,  57 => 15,  54 => 37,  51 => 11,  48 => 9,  45 => 7,  42 => 10,  39 => 7,  36 => 4,  33 => 3,);
    }
}
