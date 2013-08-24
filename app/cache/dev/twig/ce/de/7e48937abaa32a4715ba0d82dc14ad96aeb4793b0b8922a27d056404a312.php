<?php

/* PageBundle:Default:sitemap.xml.twig */
class __TwigTemplate_cede7e48937abaa32a4715ba0d82dc14ad96aeb4793b0b8922a27d056404a312 extends Twig_Template
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
        echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<?xml-stylesheet type=\"text/xsl\" href=\"";
        // line 2
        echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("PageBundle_sitemapxsl"), "html", null, true);
        echo "\"?>
<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"
  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"
  xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9
  http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\">
";
        // line 7
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getContext($context, "sitemapList"));
        foreach ($context['_seq'] as $context["_key"] => $context["sitemapItem"]) {
            if (($this->getAttribute($this->getContext($context, "sitemapItem"), "alias") != "404")) {
                // line 8
                echo "    <url>
        ";
                // line 9
                if (((($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "blog_article") || ($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "blog_cat_page")) || ($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "blog_filtered_list"))) {
                    // line 10
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("BlogBundle_page_normal", array("alias" => $this->getAttribute($this->getContext($context, "sitemapItem"), "alias"))), "html", null, true);
                    echo "</loc>               
        ";
                } elseif (($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "blog_home")) {
                    // line 12
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("BlogBundle_home"), "html", null, true);
                    echo "</loc>         
        ";
                } elseif (((($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "product_article") || ($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "product_cat_page")) || ($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "product_filtered_list"))) {
                    // line 14
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("ProductBundle_page_normal", array("alias" => $this->getAttribute($this->getContext($context, "sitemapItem"), "alias"))), "html", null, true);
                    echo "</loc>               
        ";
                } elseif (($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "product_home")) {
                    // line 16
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("ProductBundle_home"), "html", null, true);
                    echo "</loc>          
        ";
                } elseif (((($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "recipe_article") || ($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "recipe_cat_page")) || ($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "recipe_filtered_list"))) {
                    // line 18
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("RecipeBundle_page_normal", array("alias" => $this->getAttribute($this->getContext($context, "sitemapItem"), "alias"))), "html", null, true);
                    echo "</loc>               
        ";
                } elseif (($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "recipe_home")) {
                    // line 20
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("RecipeBundle_home"), "html", null, true);
                    echo "</loc>                
        ";
                } elseif (($this->getAttribute($this->getContext($context, "sitemapItem"), "pagetype") == "homepage")) {
                    // line 22
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("PageBundle_home"), "html", null, true);
                    echo "</loc>          
        ";
                } else {
                    // line 24
                    echo "        <loc>";
                    echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("PageBundle_page", array("alias" => $this->getAttribute($this->getContext($context, "sitemapItem"), "alias"))), "html", null, true);
                    echo "</loc>
        ";
                }
                // line 26
                echo "    </url>
";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sitemapItem'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 28
        echo "</urlset>";
    }

    public function getTemplateName()
    {
        return "PageBundle:Default:sitemap.xml.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  511 => 100,  507 => 74,  504 => 73,  454 => 19,  430 => 14,  424 => 13,  357 => 96,  339 => 96,  312 => 96,  303 => 96,  258 => 96,  699 => 286,  696 => 285,  690 => 283,  683 => 278,  671 => 273,  665 => 270,  660 => 268,  655 => 265,  649 => 262,  644 => 261,  639 => 260,  637 => 259,  632 => 258,  627 => 255,  619 => 251,  610 => 246,  582 => 240,  579 => 239,  576 => 238,  573 => 237,  568 => 235,  565 => 234,  547 => 233,  545 => 232,  541 => 230,  538 => 229,  536 => 228,  519 => 221,  501 => 213,  497 => 211,  481 => 202,  468 => 197,  421 => 173,  416 => 171,  396 => 159,  383 => 153,  367 => 147,  317 => 118,  282 => 99,  198 => 61,  189 => 56,  408 => 101,  388 => 138,  361 => 129,  359 => 128,  342 => 97,  320 => 105,  309 => 114,  264 => 90,  261 => 97,  251 => 83,  214 => 57,  232 => 73,  201 => 56,  259 => 87,  208 => 53,  402 => 162,  399 => 157,  390 => 157,  386 => 150,  369 => 97,  362 => 140,  348 => 96,  328 => 123,  297 => 97,  235 => 83,  217 => 72,  702 => 415,  693 => 409,  687 => 403,  677 => 275,  667 => 396,  663 => 394,  652 => 386,  646 => 383,  626 => 372,  618 => 367,  608 => 360,  594 => 243,  588 => 242,  570 => 236,  563 => 332,  555 => 327,  551 => 325,  527 => 312,  522 => 310,  517 => 308,  442 => 17,  437 => 261,  433 => 256,  412 => 244,  370 => 148,  329 => 185,  256 => 148,  240 => 96,  234 => 74,  229 => 133,  215 => 71,  210 => 61,  205 => 65,  158 => 34,  151 => 35,  672 => 398,  669 => 220,  664 => 215,  657 => 211,  651 => 208,  647 => 206,  642 => 382,  636 => 379,  634 => 201,  631 => 200,  625 => 254,  623 => 197,  620 => 196,  614 => 194,  612 => 193,  609 => 192,  603 => 190,  590 => 350,  586 => 346,  580 => 343,  571 => 140,  566 => 139,  558 => 137,  553 => 136,  550 => 135,  537 => 123,  515 => 117,  508 => 115,  492 => 208,  489 => 109,  483 => 108,  477 => 126,  471 => 50,  465 => 278,  441 => 98,  435 => 182,  431 => 180,  419 => 2,  410 => 167,  405 => 53,  401 => 52,  377 => 150,  374 => 136,  364 => 38,  358 => 141,  345 => 121,  340 => 130,  337 => 28,  334 => 126,  321 => 96,  273 => 2,  270 => 97,  247 => 78,  228 => 95,  197 => 79,  175 => 42,  170 => 39,  137 => 30,  706 => 207,  700 => 204,  697 => 203,  695 => 202,  689 => 407,  679 => 276,  674 => 274,  662 => 194,  659 => 193,  656 => 387,  648 => 187,  645 => 205,  628 => 184,  611 => 183,  606 => 181,  601 => 356,  598 => 188,  595 => 187,  589 => 174,  585 => 241,  583 => 171,  578 => 170,  561 => 138,  540 => 124,  535 => 165,  532 => 227,  529 => 120,  526 => 225,  523 => 119,  521 => 222,  518 => 159,  509 => 154,  505 => 301,  500 => 112,  498 => 149,  495 => 111,  491 => 128,  485 => 204,  460 => 21,  458 => 273,  455 => 191,  449 => 100,  446 => 187,  444 => 99,  439 => 132,  428 => 254,  423 => 3,  403 => 99,  398 => 140,  384 => 96,  380 => 147,  371 => 109,  365 => 131,  352 => 100,  349 => 122,  336 => 95,  314 => 187,  310 => 186,  300 => 137,  294 => 96,  292 => 105,  289 => 80,  275 => 2,  266 => 88,  253 => 84,  250 => 117,  239 => 73,  236 => 76,  231 => 73,  203 => 92,  194 => 59,  178 => 45,  149 => 31,  347 => 97,  341 => 96,  338 => 116,  324 => 97,  315 => 97,  288 => 97,  285 => 96,  267 => 96,  262 => 1,  255 => 68,  223 => 154,  218 => 66,  193 => 52,  187 => 74,  184 => 53,  181 => 51,  164 => 40,  93 => 23,  117 => 23,  567 => 178,  556 => 176,  552 => 175,  544 => 318,  539 => 316,  533 => 168,  531 => 313,  525 => 163,  516 => 101,  512 => 218,  506 => 215,  503 => 113,  499 => 66,  494 => 296,  479 => 201,  476 => 54,  473 => 122,  469 => 279,  462 => 105,  459 => 131,  456 => 268,  452 => 267,  445 => 121,  429 => 102,  425 => 4,  418 => 12,  414 => 121,  409 => 118,  391 => 48,  385 => 154,  379 => 151,  376 => 81,  366 => 96,  356 => 140,  332 => 126,  306 => 97,  301 => 112,  295 => 87,  287 => 107,  284 => 100,  279 => 97,  245 => 68,  225 => 70,  213 => 97,  204 => 58,  200 => 54,  173 => 22,  168 => 36,  156 => 40,  129 => 30,  87 => 10,  113 => 20,  363 => 130,  360 => 97,  355 => 125,  351 => 97,  346 => 117,  343 => 97,  333 => 97,  330 => 96,  323 => 227,  316 => 102,  313 => 101,  305 => 78,  299 => 112,  290 => 104,  286 => 131,  283 => 172,  280 => 129,  274 => 127,  268 => 90,  263 => 94,  252 => 97,  244 => 81,  226 => 69,  219 => 73,  188 => 83,  183 => 50,  177 => 43,  140 => 28,  12 => 34,  163 => 39,  155 => 34,  153 => 39,  127 => 33,  116 => 24,  107 => 24,  132 => 35,  130 => 34,  121 => 21,  100 => 14,  79 => 22,  73 => 20,  68 => 8,  56 => 5,  80 => 10,  37 => 4,  26 => 3,  103 => 21,  84 => 17,  61 => 16,  23 => 11,  493 => 56,  487 => 205,  482 => 55,  474 => 198,  470 => 162,  466 => 34,  457 => 158,  453 => 190,  450 => 156,  448 => 18,  443 => 153,  440 => 184,  436 => 16,  426 => 143,  422 => 141,  420 => 140,  415 => 57,  411 => 102,  406 => 100,  400 => 235,  397 => 97,  394 => 96,  392 => 128,  387 => 97,  381 => 45,  378 => 97,  375 => 96,  373 => 80,  368 => 39,  354 => 34,  350 => 197,  335 => 114,  327 => 108,  325 => 108,  322 => 121,  318 => 104,  311 => 115,  307 => 97,  298 => 181,  296 => 180,  291 => 85,  281 => 4,  277 => 3,  271 => 73,  265 => 63,  260 => 149,  254 => 83,  248 => 88,  242 => 81,  237 => 72,  221 => 74,  195 => 53,  191 => 57,  180 => 72,  172 => 42,  143 => 28,  135 => 36,  131 => 23,  110 => 75,  64 => 14,  41 => 9,  276 => 96,  272 => 75,  257 => 86,  246 => 65,  243 => 97,  241 => 64,  238 => 83,  233 => 75,  230 => 79,  227 => 71,  224 => 68,  222 => 62,  220 => 67,  211 => 68,  207 => 66,  182 => 45,  162 => 34,  146 => 28,  138 => 31,  122 => 21,  105 => 17,  74 => 18,  70 => 17,  66 => 16,  62 => 6,  97 => 26,  92 => 24,  88 => 23,  78 => 19,  71 => 5,  59 => 13,  90 => 11,  24 => 2,  29 => 2,  96 => 21,  91 => 26,  81 => 15,  49 => 12,  30 => 4,  47 => 5,  34 => 8,  31 => 2,  199 => 55,  186 => 54,  174 => 43,  169 => 44,  166 => 39,  161 => 39,  159 => 33,  154 => 36,  145 => 23,  141 => 26,  139 => 37,  124 => 28,  120 => 27,  108 => 16,  94 => 20,  65 => 11,  52 => 11,  27 => 3,  28 => 3,  22 => 1,  82 => 16,  75 => 35,  72 => 5,  50 => 4,  43 => 10,  40 => 1,  25 => 2,  249 => 96,  160 => 41,  148 => 60,  142 => 22,  134 => 24,  126 => 23,  123 => 22,  118 => 20,  114 => 22,  111 => 16,  104 => 16,  101 => 31,  99 => 28,  86 => 12,  77 => 7,  69 => 4,  58 => 13,  55 => 14,  53 => 12,  46 => 11,  44 => 3,  38 => 8,  35 => 3,  32 => 8,  212 => 62,  206 => 59,  202 => 56,  196 => 55,  192 => 148,  190 => 54,  185 => 51,  179 => 82,  176 => 44,  171 => 38,  167 => 36,  165 => 41,  157 => 52,  152 => 36,  150 => 30,  147 => 30,  144 => 27,  136 => 28,  133 => 24,  128 => 29,  125 => 29,  119 => 20,  115 => 25,  112 => 20,  109 => 18,  106 => 17,  102 => 27,  98 => 14,  95 => 13,  89 => 11,  85 => 24,  83 => 21,  76 => 8,  67 => 18,  63 => 26,  60 => 14,  57 => 13,  54 => 8,  51 => 10,  48 => 14,  45 => 4,  42 => 3,  39 => 2,  36 => 4,  33 => 7,);
    }
}
