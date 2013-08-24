<?php

/* WebProfilerBundle:Collector:exception.css.twig */
class __TwigTemplate_802367e8484891167722232594849dafb4005576c02ed57f452eace138ea6017 extends Twig_Template
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
        echo ".sf-reset .traces {
    padding-bottom: 14px;
}
.sf-reset .traces li {
    font-size: 12px;
    color: #868686;
    padding: 5px 4px;
    list-style-type: decimal;
    margin-left: 20px;
    white-space: break-word;
}
.sf-reset #logs .traces li.error {
    font-style: normal;
    color: #AA3333;
    background: #f9ecec;
}
.sf-reset #logs .traces li.warning {
    font-style: normal;
    background: #ffcc00;
}
/* fix for Opera not liking empty <li> */
.sf-reset .traces li:after {
    content: \"\\00A0\";
}
.sf-reset .trace {
    border: 1px solid #D3D3D3;
    padding: 10px;
    overflow: auto;
    margin: 10px 0 20px;
}
.sf-reset .block-exception {
    -moz-border-radius: 16px;
    -webkit-border-radius: 16px;
    border-radius: 16px;
    margin-bottom: 20px;
    background-color: #f6f6f6;
    border: 1px solid #dfdfdf;
    padding: 30px 28px;
    word-wrap: break-word;
    overflow: hidden;
}
.sf-reset .block-exception div {
    color: #313131;
    font-size: 10px;
}
.sf-reset .block-exception-detected .illustration-exception,
.sf-reset .block-exception-detected .text-exception {
    float: left;
}
.sf-reset .block-exception-detected .illustration-exception {
    width: 152px;
}
.sf-reset .block-exception-detected .text-exception {
    width: 670px;
    padding: 30px 44px 24px 46px;
    position: relative;
}
.sf-reset .text-exception .open-quote,
.sf-reset .text-exception .close-quote {
    position: absolute;
}
.sf-reset .open-quote {
    top: 0;
    left: 0;
}
.sf-reset .close-quote {
    bottom: 0;
    right: 50px;
}
.sf-reset .block-exception p {
    font-family: Arial, Helvetica, sans-serif;
}
.sf-reset .block-exception p a,
.sf-reset .block-exception p a:hover {
    color: #565656;
}
.sf-reset .logs h2 {
    float: left;
    width: 654px;
}
.sf-reset .error-count {
    float: right;
    width: 170px;
    text-align: right;
}
.sf-reset .error-count span {
    display: inline-block;
    background-color: #aacd4e;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    padding: 4px;
    color: white;
    margin-right: 2px;
    font-size: 11px;
    font-weight: bold;
}
.sf-reset .toggle {
    vertical-align: middle;
}
.sf-reset .linked ul,
.sf-reset .linked li {
    display: inline;
}
.sf-reset #output-content {
    color: #000;
    font-size: 12px;
}
";
    }

    public function getTemplateName()
    {
        return "WebProfilerBundle:Collector:exception.css.twig";
    }

    public function getDebugInfo()
    {
        return array (  372 => 165,  353 => 107,  293 => 89,  451 => 152,  417 => 140,  404 => 135,  389 => 176,  319 => 99,  278 => 93,  209 => 54,  308 => 125,  344 => 149,  326 => 97,  304 => 93,  511 => 100,  507 => 74,  504 => 73,  454 => 19,  430 => 14,  424 => 13,  357 => 126,  339 => 96,  312 => 91,  303 => 105,  258 => 78,  699 => 286,  696 => 285,  690 => 283,  683 => 278,  671 => 273,  665 => 270,  660 => 268,  655 => 265,  649 => 262,  644 => 261,  639 => 260,  637 => 259,  632 => 258,  627 => 255,  619 => 251,  610 => 246,  582 => 240,  579 => 239,  576 => 238,  573 => 237,  568 => 235,  565 => 234,  547 => 233,  545 => 232,  541 => 230,  538 => 229,  536 => 228,  519 => 221,  501 => 213,  497 => 211,  481 => 202,  468 => 197,  421 => 173,  416 => 171,  396 => 178,  383 => 145,  367 => 147,  317 => 94,  282 => 85,  198 => 71,  189 => 56,  408 => 101,  388 => 146,  361 => 128,  359 => 128,  342 => 97,  320 => 105,  309 => 95,  264 => 78,  261 => 84,  251 => 96,  214 => 56,  232 => 87,  201 => 55,  259 => 87,  208 => 53,  402 => 162,  399 => 179,  390 => 157,  386 => 150,  369 => 140,  362 => 140,  348 => 105,  328 => 103,  297 => 97,  235 => 69,  217 => 80,  702 => 415,  693 => 409,  687 => 403,  677 => 275,  667 => 396,  663 => 394,  652 => 386,  646 => 383,  626 => 372,  618 => 367,  608 => 360,  594 => 243,  588 => 242,  570 => 236,  563 => 332,  555 => 327,  551 => 325,  527 => 312,  522 => 310,  517 => 308,  442 => 149,  437 => 146,  433 => 144,  412 => 183,  370 => 148,  329 => 185,  256 => 99,  240 => 70,  234 => 74,  229 => 69,  215 => 62,  210 => 61,  205 => 75,  158 => 34,  151 => 29,  672 => 398,  669 => 220,  664 => 215,  657 => 211,  651 => 208,  647 => 206,  642 => 382,  636 => 379,  634 => 201,  631 => 200,  625 => 254,  623 => 197,  620 => 196,  614 => 194,  612 => 193,  609 => 192,  603 => 190,  590 => 350,  586 => 346,  580 => 343,  571 => 140,  566 => 139,  558 => 137,  553 => 136,  550 => 135,  537 => 123,  515 => 117,  508 => 115,  492 => 208,  489 => 109,  483 => 108,  477 => 126,  471 => 50,  465 => 278,  441 => 98,  435 => 182,  431 => 151,  419 => 2,  410 => 167,  405 => 53,  401 => 120,  377 => 143,  374 => 142,  364 => 129,  358 => 157,  345 => 121,  340 => 119,  337 => 145,  334 => 126,  321 => 100,  273 => 2,  270 => 88,  247 => 74,  228 => 95,  197 => 61,  175 => 62,  170 => 63,  137 => 47,  706 => 207,  700 => 204,  697 => 203,  695 => 202,  689 => 407,  679 => 276,  674 => 274,  662 => 194,  659 => 193,  656 => 387,  648 => 187,  645 => 205,  628 => 184,  611 => 183,  606 => 181,  601 => 356,  598 => 188,  595 => 187,  589 => 174,  585 => 241,  583 => 171,  578 => 170,  561 => 138,  540 => 124,  535 => 165,  532 => 227,  529 => 120,  526 => 225,  523 => 119,  521 => 222,  518 => 159,  509 => 154,  505 => 301,  500 => 112,  498 => 149,  495 => 111,  491 => 128,  485 => 204,  460 => 21,  458 => 273,  455 => 191,  449 => 100,  446 => 187,  444 => 99,  439 => 156,  428 => 143,  423 => 142,  403 => 180,  398 => 140,  384 => 115,  380 => 144,  371 => 141,  365 => 161,  352 => 124,  349 => 122,  336 => 117,  314 => 97,  310 => 186,  300 => 137,  294 => 101,  292 => 100,  289 => 80,  275 => 2,  266 => 79,  253 => 78,  250 => 97,  239 => 93,  236 => 76,  231 => 70,  203 => 51,  194 => 69,  178 => 45,  149 => 58,  347 => 122,  341 => 96,  338 => 116,  324 => 117,  315 => 129,  288 => 115,  285 => 82,  267 => 80,  262 => 103,  255 => 77,  223 => 68,  218 => 66,  193 => 50,  187 => 66,  184 => 65,  181 => 64,  164 => 40,  93 => 27,  117 => 23,  567 => 178,  556 => 176,  552 => 175,  544 => 318,  539 => 316,  533 => 168,  531 => 313,  525 => 163,  516 => 101,  512 => 218,  506 => 215,  503 => 113,  499 => 66,  494 => 296,  479 => 201,  476 => 54,  473 => 122,  469 => 279,  462 => 105,  459 => 131,  456 => 268,  452 => 267,  445 => 121,  429 => 102,  425 => 4,  418 => 12,  414 => 121,  409 => 148,  391 => 177,  385 => 154,  379 => 169,  376 => 81,  366 => 130,  356 => 140,  332 => 126,  306 => 106,  301 => 121,  295 => 87,  287 => 97,  284 => 86,  279 => 113,  245 => 73,  225 => 62,  213 => 79,  204 => 58,  200 => 67,  173 => 59,  168 => 60,  156 => 56,  129 => 27,  87 => 24,  113 => 21,  363 => 130,  360 => 97,  355 => 125,  351 => 153,  346 => 127,  343 => 97,  333 => 121,  330 => 141,  323 => 96,  316 => 98,  313 => 101,  305 => 78,  299 => 90,  290 => 104,  286 => 131,  283 => 95,  280 => 94,  274 => 111,  268 => 90,  263 => 85,  252 => 97,  244 => 74,  226 => 66,  219 => 59,  188 => 67,  183 => 50,  177 => 45,  140 => 26,  12 => 34,  163 => 60,  155 => 34,  153 => 55,  127 => 49,  116 => 38,  107 => 26,  132 => 28,  130 => 50,  121 => 25,  100 => 25,  79 => 27,  73 => 23,  68 => 8,  56 => 12,  80 => 10,  37 => 3,  26 => 2,  103 => 15,  84 => 23,  61 => 19,  23 => 11,  493 => 56,  487 => 205,  482 => 55,  474 => 198,  470 => 162,  466 => 34,  457 => 158,  453 => 190,  450 => 156,  448 => 151,  443 => 158,  440 => 184,  436 => 16,  426 => 150,  422 => 141,  420 => 141,  415 => 126,  411 => 138,  406 => 123,  400 => 235,  397 => 118,  394 => 96,  392 => 117,  387 => 116,  381 => 170,  378 => 97,  375 => 112,  373 => 80,  368 => 109,  354 => 34,  350 => 123,  335 => 114,  327 => 114,  325 => 102,  322 => 121,  318 => 104,  311 => 96,  307 => 106,  298 => 102,  296 => 118,  291 => 116,  281 => 4,  277 => 3,  271 => 73,  265 => 104,  260 => 149,  254 => 97,  248 => 88,  242 => 71,  237 => 72,  221 => 64,  195 => 60,  191 => 68,  180 => 64,  172 => 41,  143 => 54,  135 => 26,  131 => 22,  110 => 20,  64 => 16,  41 => 5,  276 => 112,  272 => 83,  257 => 86,  246 => 93,  243 => 92,  241 => 64,  238 => 89,  233 => 75,  230 => 67,  227 => 63,  224 => 85,  222 => 84,  220 => 67,  211 => 68,  207 => 53,  182 => 45,  162 => 41,  146 => 35,  138 => 28,  122 => 48,  105 => 37,  74 => 9,  70 => 18,  66 => 11,  62 => 14,  97 => 19,  92 => 33,  88 => 17,  78 => 17,  71 => 11,  59 => 18,  90 => 20,  24 => 2,  29 => 5,  96 => 34,  91 => 17,  81 => 18,  49 => 9,  30 => 6,  47 => 8,  34 => 5,  31 => 7,  199 => 49,  186 => 56,  174 => 51,  169 => 42,  166 => 38,  161 => 34,  159 => 58,  154 => 39,  145 => 28,  141 => 29,  139 => 33,  124 => 34,  120 => 47,  108 => 34,  94 => 18,  65 => 13,  52 => 12,  27 => 3,  28 => 5,  22 => 1,  82 => 15,  75 => 25,  72 => 15,  50 => 4,  43 => 11,  40 => 6,  25 => 2,  249 => 74,  160 => 59,  148 => 30,  142 => 33,  134 => 51,  126 => 42,  123 => 33,  118 => 19,  114 => 29,  111 => 40,  104 => 27,  101 => 24,  99 => 30,  86 => 12,  77 => 7,  69 => 15,  58 => 14,  55 => 13,  53 => 10,  46 => 9,  44 => 6,  38 => 5,  35 => 4,  32 => 6,  212 => 79,  206 => 75,  202 => 56,  196 => 48,  192 => 59,  190 => 46,  185 => 63,  179 => 42,  176 => 39,  171 => 61,  167 => 62,  165 => 59,  157 => 35,  152 => 36,  150 => 54,  147 => 29,  144 => 51,  136 => 28,  133 => 46,  128 => 21,  125 => 20,  119 => 39,  115 => 18,  112 => 18,  109 => 39,  106 => 17,  102 => 31,  98 => 14,  95 => 23,  89 => 32,  85 => 31,  83 => 15,  76 => 24,  67 => 17,  63 => 13,  60 => 12,  57 => 11,  54 => 10,  51 => 9,  48 => 10,  45 => 7,  42 => 8,  39 => 2,  36 => 3,  33 => 3,);
    }
}
