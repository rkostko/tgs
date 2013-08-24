<?php

/* SonataAdminBundle:CRUD:show_trans.html.twig */
class __TwigTemplate_952a9242f20b449d626825124144ed5251adf6fff96ad239d837c17ac4f71edf extends Twig_Template
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

    // line 13
    public function block_field($context, array $blocks = array())
    {
        // line 14
        echo "    ";
        if ((!$this->getAttribute($this->getAttribute($this->getContext($context, "field_description", true), "options", array(), "any", false, true), "catalogue", array(), "any", true, true))) {
            // line 15
            echo "        ";
            $context["value"] = $this->env->getExtension('translator')->trans($this->getContext($context, "value"));
            // line 16
            echo "    ";
        } else {
            // line 17
            echo "        ";
            $context["value"] = $this->env->getExtension('translator')->trans($this->getContext($context, "value"), array(), $this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "options"), "catalogue"));
            // line 18
            echo "    ";
        }
        // line 19
        echo "
    ";
        // line 20
        if ($this->getAttribute($this->getAttribute($this->getContext($context, "field_description"), "options"), "safe")) {
            // line 21
            echo "        ";
            echo $this->getContext($context, "value");
            echo "
    ";
        } else {
            // line 23
            echo "        ";
            echo twig_escape_filter($this->env, $this->getContext($context, "value"), "html", null, true);
            echo "
    ";
        }
    }

    public function getTemplateName()
    {
        return "SonataAdminBundle:CRUD:show_trans.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  93 => 39,  117 => 50,  567 => 178,  556 => 176,  552 => 175,  544 => 172,  539 => 170,  533 => 168,  531 => 167,  525 => 163,  516 => 160,  512 => 159,  506 => 158,  503 => 157,  499 => 156,  494 => 154,  479 => 150,  476 => 149,  473 => 148,  469 => 134,  462 => 132,  459 => 131,  456 => 130,  452 => 123,  445 => 121,  429 => 102,  425 => 101,  418 => 97,  414 => 96,  409 => 95,  391 => 82,  385 => 94,  379 => 82,  376 => 81,  366 => 130,  356 => 124,  332 => 116,  306 => 114,  301 => 113,  295 => 110,  287 => 107,  284 => 80,  279 => 78,  245 => 68,  225 => 66,  213 => 60,  204 => 58,  200 => 56,  173 => 52,  168 => 50,  156 => 46,  129 => 55,  87 => 36,  113 => 44,  363 => 96,  360 => 126,  355 => 93,  351 => 120,  346 => 117,  343 => 90,  333 => 87,  330 => 86,  323 => 115,  316 => 82,  313 => 81,  305 => 78,  299 => 112,  290 => 108,  286 => 70,  283 => 69,  280 => 68,  274 => 76,  268 => 74,  263 => 71,  252 => 55,  244 => 31,  226 => 27,  219 => 64,  188 => 20,  183 => 100,  177 => 60,  140 => 47,  12 => 34,  163 => 52,  155 => 63,  153 => 45,  127 => 43,  116 => 39,  107 => 143,  132 => 56,  130 => 54,  121 => 51,  100 => 43,  79 => 35,  73 => 29,  68 => 25,  56 => 24,  80 => 13,  37 => 15,  26 => 11,  103 => 42,  84 => 37,  61 => 18,  23 => 11,  493 => 171,  487 => 152,  482 => 167,  474 => 164,  470 => 162,  466 => 133,  457 => 158,  453 => 157,  450 => 156,  448 => 122,  443 => 153,  440 => 104,  436 => 151,  426 => 143,  422 => 141,  420 => 140,  415 => 139,  411 => 138,  406 => 94,  400 => 131,  397 => 130,  394 => 83,  392 => 128,  387 => 106,  381 => 92,  378 => 120,  375 => 119,  373 => 80,  368 => 135,  354 => 121,  350 => 112,  335 => 88,  327 => 108,  325 => 107,  322 => 106,  318 => 83,  311 => 100,  307 => 79,  298 => 98,  296 => 75,  291 => 95,  281 => 79,  277 => 93,  271 => 75,  265 => 63,  260 => 61,  254 => 86,  248 => 69,  242 => 67,  237 => 80,  221 => 77,  195 => 23,  191 => 54,  180 => 65,  172 => 58,  143 => 53,  135 => 57,  131 => 44,  110 => 48,  64 => 27,  41 => 18,  276 => 96,  272 => 94,  257 => 60,  246 => 88,  243 => 86,  241 => 85,  238 => 83,  233 => 79,  230 => 81,  227 => 78,  224 => 77,  222 => 65,  220 => 75,  211 => 73,  207 => 59,  182 => 69,  162 => 48,  146 => 48,  138 => 53,  122 => 32,  105 => 32,  74 => 30,  70 => 33,  66 => 31,  62 => 29,  97 => 40,  92 => 42,  88 => 37,  78 => 21,  71 => 31,  59 => 27,  90 => 39,  24 => 11,  29 => 14,  96 => 40,  91 => 32,  81 => 36,  49 => 19,  30 => 14,  47 => 21,  34 => 14,  31 => 13,  199 => 90,  186 => 82,  174 => 61,  169 => 57,  166 => 60,  161 => 67,  159 => 47,  154 => 63,  145 => 59,  141 => 41,  139 => 40,  124 => 52,  120 => 44,  108 => 26,  94 => 39,  65 => 30,  52 => 20,  27 => 13,  28 => 13,  22 => 11,  82 => 36,  75 => 31,  72 => 33,  50 => 19,  43 => 17,  40 => 16,  25 => 12,  249 => 54,  160 => 58,  148 => 56,  142 => 61,  134 => 45,  126 => 33,  123 => 48,  118 => 30,  114 => 30,  111 => 36,  104 => 46,  101 => 141,  99 => 44,  86 => 15,  77 => 34,  69 => 32,  58 => 21,  55 => 25,  53 => 23,  46 => 18,  44 => 20,  38 => 20,  35 => 14,  32 => 15,  212 => 24,  206 => 78,  202 => 71,  196 => 55,  192 => 71,  190 => 84,  185 => 53,  179 => 98,  176 => 65,  171 => 51,  167 => 54,  165 => 49,  157 => 58,  152 => 51,  150 => 44,  147 => 43,  144 => 42,  136 => 51,  133 => 41,  128 => 44,  125 => 43,  119 => 49,  115 => 29,  112 => 47,  109 => 36,  106 => 45,  102 => 45,  98 => 19,  95 => 43,  89 => 25,  85 => 38,  83 => 25,  76 => 34,  67 => 31,  63 => 16,  60 => 23,  57 => 26,  54 => 21,  51 => 15,  48 => 21,  45 => 20,  42 => 20,  39 => 18,  36 => 16,  33 => 15,);
    }
}
