<?php

/* PageBundle:Contents:homepage-item-six.html.twig */
class __TwigTemplate_95dea43cb4faaea69fb886a267e61e3b328836005e940f358af3bd4d7d6d9537 extends Twig_Template
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
        echo "    ";
        if ($this->getAttribute($this->getAttribute($this->getContext($context, "pageItem", true), "introvideo", array(), "any", false, true), "id", array(), "any", true, true)) {
            // line 2
            echo "    <div class=\"flex-video\">
        ";
            // line 3
            echo $this->env->getExtension('sonata_media')->media($this->getAttribute($this->getAttribute($this->getContext($context, "pageItem"), "introvideo"), "id"), "medium", array());
            // line 4
            echo "    </div>
    ";
        } elseif ($this->getAttribute($this->getAttribute($this->getContext($context, "pageItem", true), "introimage", array(), "any", false, true), "id", array(), "any", true, true)) {
            // line 6
            echo "        <a href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getContext($context, "app"), "request"), "getBaseURL", array(), "method"), "html", null, true);
            echo "/";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "vars"), "urlPart"), "html", null, true);
            echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "pageItem"), "alias"), "html", null, true);
            echo "\" title=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "pageItem"), "title"), "html", null, true);
            echo "\" class=\"readMoreImage\">
            ";
            // line 7
            echo $this->env->getExtension('sonata_media')->media($this->getAttribute($this->getAttribute($this->getContext($context, "pageItem"), "introimage"), "id"), "medium", array("alt" => $this->getAttribute($this->getContext($context, "pageItem"), "title"), "title" => ""));
            // line 8
            echo "        </a>
    ";
        }
        // line 9
        echo "  

    <div class=\"introItemTitle\">
        <h4><a href=\"";
        // line 12
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getContext($context, "app"), "request"), "getBaseURL", array(), "method"), "html", null, true);
        echo "/";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "vars"), "urlPart"), "html", null, true);
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "pageItem"), "alias"), "html", null, true);
        echo "\" title=\"";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "pageItem"), "title"), "html", null, true);
        echo "\" class=\"readMore\">";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "pageItem"), "title"), "html", null, true);
        echo "</a></h4>            
    </div>

    <div class=\"introItemText\">
        <a href=\"";
        // line 16
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getContext($context, "app"), "request"), "getBaseURL", array(), "method"), "html", null, true);
        echo "/";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "vars"), "urlPart"), "html", null, true);
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "pageItem"), "alias"), "html", null, true);
        echo "\" title=\"";
        echo twig_escape_filter($this->env, strip_tags($this->getAttribute($this->getContext($context, "pageItem"), "introtext")), "html", null, true);
        echo "\" class=\"readMore\">";
        echo twig_escape_filter($this->env, strip_tags($this->getAttribute($this->getContext($context, "pageItem"), "introtext")), "html", null, true);
        echo "</a>          
    </div>";
    }

    public function getTemplateName()
    {
        return "PageBundle:Contents:homepage-item-six.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  55 => 12,  30 => 4,  28 => 3,  37 => 4,  35 => 3,  136 => 28,  118 => 25,  116 => 24,  107 => 23,  103 => 21,  65 => 11,  47 => 5,  45 => 8,  42 => 3,  25 => 2,  168 => 36,  154 => 31,  151 => 30,  145 => 27,  142 => 26,  134 => 24,  131 => 23,  128 => 22,  119 => 20,  114 => 19,  100 => 14,  96 => 13,  87 => 10,  72 => 5,  43 => 3,  281 => 4,  275 => 2,  254 => 83,  244 => 81,  230 => 79,  221 => 74,  219 => 73,  217 => 72,  215 => 71,  211 => 68,  207 => 66,  205 => 65,  198 => 61,  194 => 59,  191 => 57,  189 => 56,  186 => 54,  184 => 53,  181 => 51,  169 => 44,  165 => 41,  163 => 34,  146 => 37,  129 => 36,  126 => 34,  124 => 33,  122 => 27,  120 => 30,  117 => 28,  104 => 22,  102 => 21,  99 => 20,  95 => 17,  93 => 16,  90 => 11,  81 => 8,  71 => 82,  69 => 16,  64 => 79,  59 => 12,  54 => 28,  51 => 27,  49 => 20,  46 => 8,  41 => 6,  39 => 9,  36 => 8,  34 => 6,  22 => 1,  516 => 101,  511 => 100,  507 => 74,  504 => 73,  499 => 66,  493 => 56,  482 => 55,  476 => 54,  471 => 50,  454 => 19,  448 => 18,  442 => 17,  436 => 16,  430 => 14,  424 => 13,  418 => 12,  411 => 102,  406 => 100,  403 => 99,  397 => 97,  394 => 96,  387 => 97,  384 => 96,  378 => 97,  375 => 96,  369 => 97,  366 => 96,  360 => 97,  357 => 96,  351 => 97,  339 => 96,  333 => 97,  330 => 96,  324 => 97,  321 => 96,  312 => 96,  306 => 97,  303 => 96,  297 => 97,  294 => 96,  288 => 97,  285 => 96,  279 => 3,  267 => 96,  261 => 97,  258 => 96,  252 => 97,  249 => 96,  240 => 96,  236 => 76,  233 => 75,  231 => 73,  227 => 71,  225 => 70,  220 => 67,  210 => 61,  202 => 56,  196 => 60,  190 => 54,  183 => 50,  174 => 47,  156 => 32,  139 => 37,  130 => 34,  127 => 33,  101 => 20,  97 => 26,  88 => 17,  83 => 11,  78 => 15,  70 => 4,  66 => 80,  61 => 78,  57 => 13,  53 => 7,  40 => 2,  699 => 286,  696 => 285,  690 => 283,  683 => 278,  679 => 276,  677 => 275,  674 => 274,  671 => 273,  665 => 270,  660 => 268,  655 => 265,  649 => 262,  644 => 261,  639 => 260,  637 => 259,  632 => 258,  627 => 255,  625 => 254,  619 => 251,  610 => 246,  594 => 243,  588 => 242,  585 => 241,  582 => 240,  579 => 239,  576 => 238,  573 => 237,  570 => 236,  568 => 235,  565 => 234,  547 => 233,  545 => 232,  541 => 230,  538 => 229,  536 => 228,  532 => 227,  526 => 225,  521 => 222,  519 => 221,  512 => 218,  506 => 215,  501 => 213,  497 => 211,  492 => 208,  487 => 205,  485 => 204,  481 => 202,  479 => 201,  474 => 198,  468 => 197,  466 => 34,  460 => 21,  455 => 191,  453 => 190,  446 => 187,  440 => 184,  435 => 182,  431 => 180,  421 => 173,  416 => 171,  410 => 167,  408 => 101,  402 => 162,  396 => 159,  390 => 157,  385 => 154,  383 => 153,  379 => 151,  377 => 150,  370 => 148,  367 => 147,  358 => 141,  356 => 140,  348 => 96,  342 => 97,  340 => 130,  334 => 126,  328 => 123,  322 => 121,  317 => 118,  315 => 97,  311 => 115,  309 => 114,  301 => 112,  292 => 105,  290 => 104,  284 => 100,  282 => 99,  276 => 96,  270 => 97,  264 => 1,  259 => 87,  257 => 86,  253 => 84,  251 => 83,  243 => 97,  234 => 74,  232 => 73,  226 => 69,  224 => 68,  218 => 66,  212 => 62,  206 => 59,  201 => 64,  199 => 55,  195 => 53,  193 => 52,  185 => 51,  178 => 49,  176 => 40,  172 => 38,  166 => 39,  160 => 33,  155 => 34,  153 => 39,  149 => 31,  147 => 28,  140 => 28,  135 => 36,  132 => 35,  113 => 20,  109 => 16,  106 => 17,  98 => 14,  92 => 19,  86 => 16,  80 => 10,  74 => 14,  68 => 12,  62 => 10,  56 => 8,  50 => 9,  44 => 7,);
    }
}
