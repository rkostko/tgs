<?php

/* SonataMediaBundle:Media:view.html.twig */
class __TwigTemplate_56efdaf7a4f77dd3dd0a99f09113867c525541148fd6982223ffb2272418db41 extends Twig_Template
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
        // line 11
        echo "
<h1>";
        // line 12
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "name"), "html", null, true);
        echo "</h1>

<div>
    ";
        // line 15
        echo $this->env->getExtension('sonata_media')->media($this->getContext($context, "media"), $this->getContext($context, "format"), array());
        // line 16
        echo "</div>

<h2>Information</h2>
<ul>
    <li>Size : ";
        // line 20
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "size"), "html", null, true);
        echo "</li>
    <li>Width : ";
        // line 21
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "width"), "html", null, true);
        echo "</li>
    <li>Height : ";
        // line 22
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "height"), "html", null, true);
        echo "</li>
    <li>Content Type : ";
        // line 23
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "contenttype"), "html", null, true);
        echo "</li>
    <li>Copyright : ";
        // line 24
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "copyright"), "html", null, true);
        echo "</li>
    <li>Author name : ";
        // line 25
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "authorname"), "html", null, true);
        echo "</li>
    <li>CDN : ";
        // line 26
        if ($this->getAttribute($this->getContext($context, "media"), "cdnisflushable")) {
            echo "to be flushed";
        } else {
            echo " last flush at ";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "cdnflushat")), "html", null, true);
            echo " ";
        }
        echo "</li>
</ul>

<h2>Formats</h2>
<ul>
    <li><a href=\"";
        // line 31
        echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("sonata_media_view", array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")), "format" => "reference")), "html", null, true);
        echo "\">reference</a></li>

    ";
        // line 33
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getContext($context, "formats"));
        foreach ($context['_seq'] as $context["name"] => $context["format"]) {
            // line 34
            echo "        <li><a href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getUrl("sonata_media_view", array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")), "format" => $this->getContext($context, "name"))), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getContext($context, "name"), "html", null, true);
            echo "</a></li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['name'], $context['format'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 36
        echo "</ul>
";
    }

    public function getTemplateName()
    {
        return "SonataMediaBundle:Media:view.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  259 => 122,  208 => 95,  402 => 158,  399 => 157,  390 => 152,  386 => 150,  369 => 142,  362 => 140,  348 => 135,  328 => 125,  297 => 136,  235 => 83,  217 => 75,  702 => 415,  693 => 409,  687 => 403,  677 => 400,  667 => 396,  663 => 394,  652 => 386,  646 => 383,  626 => 372,  618 => 367,  608 => 360,  594 => 352,  588 => 347,  570 => 336,  563 => 332,  555 => 327,  551 => 325,  527 => 312,  522 => 310,  517 => 308,  442 => 262,  437 => 261,  433 => 256,  412 => 244,  370 => 211,  329 => 185,  256 => 148,  240 => 85,  234 => 135,  229 => 133,  215 => 125,  210 => 96,  205 => 73,  158 => 55,  151 => 53,  672 => 398,  669 => 220,  664 => 215,  657 => 211,  651 => 208,  647 => 206,  642 => 382,  636 => 379,  634 => 201,  631 => 200,  625 => 198,  623 => 197,  620 => 196,  614 => 194,  612 => 193,  609 => 192,  603 => 190,  590 => 350,  586 => 346,  580 => 343,  571 => 140,  566 => 139,  558 => 137,  553 => 136,  550 => 135,  537 => 123,  515 => 117,  508 => 115,  492 => 110,  489 => 109,  483 => 108,  477 => 126,  471 => 109,  465 => 278,  441 => 98,  435 => 257,  431 => 61,  419 => 58,  410 => 55,  405 => 53,  401 => 52,  377 => 43,  374 => 144,  364 => 38,  358 => 35,  345 => 133,  340 => 29,  337 => 28,  334 => 187,  321 => 220,  273 => 100,  270 => 98,  247 => 163,  228 => 156,  197 => 89,  175 => 76,  170 => 78,  137 => 80,  706 => 207,  700 => 204,  697 => 203,  695 => 202,  689 => 407,  679 => 198,  674 => 196,  662 => 194,  659 => 193,  656 => 387,  648 => 187,  645 => 205,  628 => 184,  611 => 183,  606 => 181,  601 => 356,  598 => 188,  595 => 187,  589 => 174,  585 => 172,  583 => 171,  578 => 170,  561 => 138,  540 => 124,  535 => 165,  532 => 164,  529 => 120,  526 => 162,  523 => 119,  521 => 160,  518 => 159,  509 => 154,  505 => 301,  500 => 112,  498 => 149,  495 => 111,  491 => 128,  485 => 126,  460 => 141,  458 => 273,  455 => 101,  449 => 100,  446 => 135,  444 => 99,  439 => 132,  428 => 254,  423 => 122,  403 => 115,  398 => 113,  384 => 111,  380 => 147,  371 => 109,  365 => 141,  352 => 100,  349 => 32,  336 => 95,  314 => 187,  310 => 186,  300 => 137,  294 => 135,  292 => 109,  289 => 80,  275 => 158,  266 => 71,  253 => 165,  250 => 117,  239 => 63,  236 => 109,  231 => 59,  203 => 92,  194 => 69,  178 => 130,  149 => 64,  347 => 97,  341 => 96,  338 => 129,  324 => 124,  315 => 177,  288 => 175,  285 => 79,  267 => 166,  262 => 123,  255 => 68,  223 => 154,  218 => 99,  193 => 50,  187 => 145,  184 => 47,  181 => 83,  164 => 75,  93 => 34,  117 => 102,  567 => 178,  556 => 176,  552 => 175,  544 => 318,  539 => 316,  533 => 168,  531 => 313,  525 => 163,  516 => 160,  512 => 116,  506 => 158,  503 => 113,  499 => 298,  494 => 296,  479 => 286,  476 => 123,  473 => 122,  469 => 279,  462 => 105,  459 => 131,  456 => 268,  452 => 267,  445 => 121,  429 => 102,  425 => 59,  418 => 247,  414 => 121,  409 => 118,  391 => 48,  385 => 94,  379 => 82,  376 => 81,  366 => 130,  356 => 124,  332 => 126,  306 => 139,  301 => 173,  295 => 87,  287 => 107,  284 => 80,  279 => 102,  245 => 68,  225 => 66,  213 => 97,  204 => 58,  200 => 54,  173 => 22,  168 => 99,  156 => 67,  129 => 56,  87 => 35,  113 => 41,  363 => 96,  360 => 139,  355 => 138,  351 => 136,  346 => 117,  343 => 97,  333 => 94,  330 => 93,  323 => 227,  316 => 217,  313 => 81,  305 => 78,  299 => 112,  290 => 176,  286 => 131,  283 => 172,  280 => 129,  274 => 127,  268 => 125,  263 => 94,  252 => 89,  244 => 139,  226 => 155,  219 => 64,  188 => 83,  183 => 100,  177 => 23,  140 => 46,  12 => 34,  163 => 18,  155 => 67,  153 => 66,  127 => 23,  116 => 70,  107 => 49,  132 => 24,  130 => 45,  121 => 103,  100 => 39,  79 => 36,  73 => 33,  68 => 39,  56 => 23,  80 => 28,  37 => 15,  26 => 13,  103 => 94,  84 => 71,  61 => 23,  23 => 11,  493 => 171,  487 => 291,  482 => 167,  474 => 125,  470 => 162,  466 => 143,  457 => 158,  453 => 157,  450 => 156,  448 => 265,  443 => 153,  440 => 104,  436 => 151,  426 => 143,  422 => 141,  420 => 140,  415 => 57,  411 => 138,  406 => 94,  400 => 235,  397 => 156,  394 => 112,  392 => 128,  387 => 225,  381 => 45,  378 => 120,  375 => 119,  373 => 80,  368 => 39,  354 => 34,  350 => 197,  335 => 88,  327 => 108,  325 => 107,  322 => 90,  318 => 90,  311 => 118,  307 => 174,  298 => 181,  296 => 180,  291 => 85,  281 => 79,  277 => 77,  271 => 73,  265 => 63,  260 => 149,  254 => 120,  248 => 88,  242 => 112,  237 => 84,  221 => 77,  195 => 23,  191 => 86,  180 => 78,  172 => 58,  143 => 28,  135 => 108,  131 => 107,  110 => 75,  64 => 18,  41 => 16,  276 => 101,  272 => 75,  257 => 121,  246 => 65,  243 => 86,  241 => 64,  238 => 83,  233 => 79,  230 => 105,  227 => 78,  224 => 102,  222 => 65,  220 => 153,  211 => 74,  207 => 59,  182 => 69,  162 => 48,  146 => 29,  138 => 58,  122 => 42,  105 => 39,  74 => 26,  70 => 30,  66 => 28,  62 => 28,  97 => 36,  92 => 40,  88 => 30,  78 => 39,  71 => 25,  59 => 25,  90 => 59,  24 => 2,  29 => 13,  96 => 40,  91 => 32,  81 => 40,  49 => 20,  30 => 14,  47 => 22,  34 => 15,  31 => 15,  199 => 71,  186 => 84,  174 => 61,  169 => 73,  166 => 60,  161 => 96,  159 => 73,  154 => 72,  145 => 63,  141 => 61,  139 => 109,  124 => 53,  120 => 41,  108 => 26,  94 => 60,  65 => 24,  52 => 22,  27 => 14,  28 => 4,  22 => 11,  82 => 33,  75 => 35,  72 => 24,  50 => 21,  43 => 21,  40 => 16,  25 => 12,  249 => 54,  160 => 17,  148 => 63,  142 => 49,  134 => 45,  126 => 44,  123 => 56,  118 => 43,  114 => 45,  111 => 99,  104 => 71,  101 => 47,  99 => 44,  86 => 34,  77 => 31,  69 => 24,  58 => 24,  55 => 24,  53 => 22,  46 => 19,  44 => 19,  38 => 17,  35 => 16,  32 => 25,  212 => 24,  206 => 56,  202 => 152,  196 => 70,  192 => 148,  190 => 49,  185 => 64,  179 => 82,  176 => 81,  171 => 51,  167 => 19,  165 => 57,  157 => 16,  152 => 71,  150 => 64,  147 => 68,  144 => 67,  136 => 57,  133 => 56,  128 => 55,  125 => 104,  119 => 52,  115 => 51,  112 => 44,  109 => 40,  106 => 45,  102 => 44,  98 => 37,  95 => 43,  89 => 31,  85 => 39,  83 => 29,  76 => 19,  67 => 26,  63 => 26,  60 => 23,  57 => 22,  54 => 23,  51 => 23,  48 => 9,  45 => 19,  42 => 18,  39 => 20,  36 => 15,  33 => 16,);
    }
}
