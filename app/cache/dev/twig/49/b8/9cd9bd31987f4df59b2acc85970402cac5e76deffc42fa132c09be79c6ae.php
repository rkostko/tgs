<?php

/* SonataDoctrineORMAdminBundle:CRUD:show_orm_many_to_many.html.twig */
class __TwigTemplate_49b89cd9bd31987f4df59b2acc85970402cac5e76deffc42fa132c09be79c6ae extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("SonataAdminBundle:CRUD:base_show_field.html.twig");

        $this->blocks = array(
            'field' => array($this, 'block_field'),
        );

        $this->macros = array(
        );
    }

    protected function doGetParent(array $context)
    {
        return "SonataAdminBundle:CRUD:base_show_field.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 14
    public function block_field($context, array $blocks = array())
    {
        // line 15
        echo "    <ul class=\"sonata-ba-show-many-to-many\">
    ";
        // line 16
        if ((($this->getAttribute($this->getContext($context, "field_description"), "hasassociationadmin") && $this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "associationadmin"), "hasRoute", array(0 => "edit"), "method")) && $this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "associationadmin"), "isGranted", array(0 => "edit"), "method"))) {
            // line 17
            echo "        ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getContext($context, "value"));
            foreach ($context['_seq'] as $context["_key"] => $context["element"]) {
                // line 18
                echo "            <li>
                <a href=\"";
                // line 19
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "associationadmin"), "generateObjectUrl", array(0 => $this->getAttribute($this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "options"), "route"), "name"), 1 => $this->getContext($context, "element"), 2 => $this->getAttribute($this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "options"), "route"), "parameters")), "method"), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->env->getExtension('sonata_admin')->renderRelationElement($this->getContext($context, "element"), $this->getContext($context, "field_description")), "html", null, true);
                echo "</a>
            </li>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['element'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 22
            echo "    ";
        } else {
            // line 23
            echo "        ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getContext($context, "value"));
            foreach ($context['_seq'] as $context["_key"] => $context["element"]) {
                // line 24
                echo "            <li>
                ";
                // line 25
                echo twig_escape_filter($this->env, $this->env->getExtension('sonata_admin')->renderRelationElement($this->getContext($context, "element"), $this->getContext($context, "field_description")), "html", null, true);
                echo "
            </li>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['element'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 28
            echo "    ";
        }
        // line 29
        echo "    </ul>
";
    }

    public function getTemplateName()
    {
        return "SonataDoctrineORMAdminBundle:CRUD:show_orm_many_to_many.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  402 => 158,  399 => 157,  390 => 152,  386 => 150,  369 => 142,  362 => 140,  348 => 135,  328 => 125,  297 => 111,  235 => 83,  217 => 75,  702 => 415,  693 => 409,  687 => 403,  677 => 400,  667 => 396,  663 => 394,  652 => 386,  646 => 383,  626 => 372,  618 => 367,  608 => 360,  594 => 352,  588 => 347,  570 => 336,  563 => 332,  555 => 327,  551 => 325,  527 => 312,  522 => 310,  517 => 308,  442 => 262,  437 => 261,  433 => 256,  412 => 244,  370 => 211,  329 => 185,  256 => 148,  240 => 85,  234 => 135,  229 => 133,  215 => 125,  210 => 123,  205 => 73,  158 => 55,  151 => 53,  672 => 398,  669 => 220,  664 => 215,  657 => 211,  651 => 208,  647 => 206,  642 => 382,  636 => 379,  634 => 201,  631 => 200,  625 => 198,  623 => 197,  620 => 196,  614 => 194,  612 => 193,  609 => 192,  603 => 190,  590 => 350,  586 => 346,  580 => 343,  571 => 140,  566 => 139,  558 => 137,  553 => 136,  550 => 135,  537 => 123,  515 => 117,  508 => 115,  492 => 110,  489 => 109,  483 => 108,  477 => 126,  471 => 109,  465 => 278,  441 => 98,  435 => 257,  431 => 61,  419 => 58,  410 => 55,  405 => 53,  401 => 52,  377 => 43,  374 => 144,  364 => 38,  358 => 35,  345 => 133,  340 => 29,  337 => 28,  334 => 187,  321 => 220,  273 => 100,  270 => 98,  247 => 163,  228 => 156,  197 => 150,  175 => 76,  170 => 73,  137 => 80,  706 => 207,  700 => 204,  697 => 203,  695 => 202,  689 => 407,  679 => 198,  674 => 196,  662 => 194,  659 => 193,  656 => 387,  648 => 187,  645 => 205,  628 => 184,  611 => 183,  606 => 181,  601 => 356,  598 => 188,  595 => 187,  589 => 174,  585 => 172,  583 => 171,  578 => 170,  561 => 138,  540 => 124,  535 => 165,  532 => 164,  529 => 120,  526 => 162,  523 => 119,  521 => 160,  518 => 159,  509 => 154,  505 => 301,  500 => 112,  498 => 149,  495 => 111,  491 => 128,  485 => 126,  460 => 141,  458 => 273,  455 => 101,  449 => 100,  446 => 135,  444 => 99,  439 => 132,  428 => 254,  423 => 122,  403 => 115,  398 => 113,  384 => 111,  380 => 147,  371 => 109,  365 => 141,  352 => 100,  349 => 32,  336 => 95,  314 => 187,  310 => 186,  300 => 84,  294 => 169,  292 => 109,  289 => 80,  275 => 158,  266 => 71,  253 => 165,  250 => 66,  239 => 63,  236 => 158,  231 => 59,  203 => 55,  194 => 69,  178 => 130,  149 => 89,  347 => 97,  341 => 96,  338 => 129,  324 => 124,  315 => 177,  288 => 175,  285 => 79,  267 => 166,  262 => 70,  255 => 68,  223 => 154,  218 => 54,  193 => 50,  187 => 145,  184 => 47,  181 => 106,  164 => 70,  93 => 34,  117 => 23,  567 => 178,  556 => 176,  552 => 175,  544 => 318,  539 => 316,  533 => 168,  531 => 313,  525 => 163,  516 => 160,  512 => 116,  506 => 158,  503 => 113,  499 => 298,  494 => 296,  479 => 286,  476 => 123,  473 => 122,  469 => 279,  462 => 105,  459 => 131,  456 => 268,  452 => 267,  445 => 121,  429 => 102,  425 => 59,  418 => 247,  414 => 121,  409 => 118,  391 => 48,  385 => 94,  379 => 82,  376 => 81,  366 => 130,  356 => 124,  332 => 126,  306 => 114,  301 => 173,  295 => 87,  287 => 107,  284 => 80,  279 => 102,  245 => 68,  225 => 66,  213 => 60,  204 => 58,  200 => 54,  173 => 61,  168 => 99,  156 => 67,  129 => 75,  87 => 33,  113 => 25,  363 => 96,  360 => 139,  355 => 138,  351 => 136,  346 => 117,  343 => 97,  333 => 94,  330 => 93,  323 => 227,  316 => 217,  313 => 81,  305 => 78,  299 => 112,  290 => 176,  286 => 106,  283 => 172,  280 => 78,  274 => 76,  268 => 74,  263 => 94,  252 => 89,  244 => 139,  226 => 155,  219 => 64,  188 => 83,  183 => 100,  177 => 60,  140 => 60,  12 => 34,  163 => 70,  155 => 67,  153 => 66,  127 => 23,  116 => 70,  107 => 74,  132 => 24,  130 => 45,  121 => 52,  100 => 39,  79 => 20,  73 => 29,  68 => 30,  56 => 23,  80 => 58,  37 => 16,  26 => 18,  103 => 22,  84 => 71,  61 => 23,  23 => 11,  493 => 171,  487 => 291,  482 => 167,  474 => 125,  470 => 162,  466 => 143,  457 => 158,  453 => 157,  450 => 156,  448 => 265,  443 => 153,  440 => 104,  436 => 151,  426 => 143,  422 => 141,  420 => 140,  415 => 57,  411 => 138,  406 => 94,  400 => 235,  397 => 156,  394 => 112,  392 => 128,  387 => 225,  381 => 45,  378 => 120,  375 => 119,  373 => 80,  368 => 39,  354 => 34,  350 => 197,  335 => 88,  327 => 108,  325 => 107,  322 => 90,  318 => 90,  311 => 118,  307 => 174,  298 => 181,  296 => 180,  291 => 85,  281 => 79,  277 => 77,  271 => 73,  265 => 63,  260 => 149,  254 => 86,  248 => 88,  242 => 86,  237 => 84,  221 => 77,  195 => 23,  191 => 68,  180 => 78,  172 => 58,  143 => 28,  135 => 57,  131 => 55,  110 => 75,  64 => 18,  41 => 32,  276 => 101,  272 => 75,  257 => 91,  246 => 65,  243 => 86,  241 => 64,  238 => 83,  233 => 79,  230 => 80,  227 => 78,  224 => 78,  222 => 65,  220 => 153,  211 => 74,  207 => 59,  182 => 69,  162 => 48,  146 => 29,  138 => 58,  122 => 42,  105 => 39,  74 => 29,  70 => 27,  66 => 24,  62 => 18,  97 => 21,  92 => 40,  88 => 30,  78 => 28,  71 => 49,  59 => 40,  90 => 59,  24 => 12,  29 => 14,  96 => 40,  91 => 33,  81 => 29,  49 => 35,  30 => 16,  47 => 19,  34 => 15,  31 => 14,  199 => 71,  186 => 82,  174 => 61,  169 => 73,  166 => 60,  161 => 96,  159 => 68,  154 => 66,  145 => 50,  141 => 83,  139 => 48,  124 => 53,  120 => 41,  108 => 26,  94 => 60,  65 => 29,  52 => 21,  27 => 13,  28 => 12,  22 => 11,  82 => 31,  75 => 192,  72 => 32,  50 => 19,  43 => 18,  40 => 18,  25 => 12,  249 => 54,  160 => 41,  148 => 63,  142 => 49,  134 => 80,  126 => 54,  123 => 53,  118 => 27,  114 => 45,  111 => 47,  104 => 71,  101 => 36,  99 => 43,  86 => 15,  77 => 34,  69 => 25,  58 => 22,  55 => 21,  53 => 17,  46 => 19,  44 => 18,  38 => 17,  35 => 16,  32 => 15,  212 => 24,  206 => 56,  202 => 152,  196 => 70,  192 => 148,  190 => 49,  185 => 64,  179 => 45,  176 => 76,  171 => 51,  167 => 67,  165 => 57,  157 => 58,  152 => 36,  150 => 64,  147 => 62,  144 => 61,  136 => 57,  133 => 56,  128 => 55,  125 => 43,  119 => 49,  115 => 49,  112 => 44,  109 => 40,  106 => 45,  102 => 44,  98 => 37,  95 => 67,  89 => 39,  85 => 10,  83 => 36,  76 => 19,  67 => 26,  63 => 25,  60 => 22,  57 => 14,  54 => 38,  51 => 40,  48 => 19,  45 => 18,  42 => 17,  39 => 17,  36 => 15,  33 => 15,);
    }
}
