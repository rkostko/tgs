<?php

/* DoctrineBundle:Collector:explain.html.twig */
class __TwigTemplate_61233f3f847ce6272812ecda72b3dcc6fe0358308613d45a19624fced6a41be3 extends Twig_Template
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
        echo "<strong>Explanation:</strong>

<table style=\"margin: 5px 0;\">
    <thead>
        <tr>
            ";
        // line 6
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_array_keys_filter($this->getAttribute($this->getContext($context, "data"), 0, array(), "array")));
        foreach ($context['_seq'] as $context["_key"] => $context["label"]) {
            // line 7
            echo "                <th>";
            echo twig_escape_filter($this->env, $this->getContext($context, "label"), "html", null, true);
            echo "</th>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['label'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 9
        echo "        </tr>
    </thead>
    <tbody>
        ";
        // line 12
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getContext($context, "data"));
        foreach ($context['_seq'] as $context["_key"] => $context["row"]) {
            // line 13
            echo "        <tr>
            ";
            // line 14
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getContext($context, "row"));
            foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
                // line 15
                echo "                <td>";
                echo twig_escape_filter($this->env, $this->getContext($context, "item"), "html", null, true);
                echo "</td>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 17
            echo "        </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['row'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 19
        echo "    </tbody>
</table>";
    }

    public function getTemplateName()
    {
        return "DoctrineBundle:Collector:explain.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  493 => 171,  487 => 170,  482 => 167,  474 => 164,  470 => 162,  466 => 160,  457 => 158,  453 => 157,  450 => 156,  448 => 155,  443 => 153,  440 => 152,  436 => 151,  426 => 143,  422 => 141,  420 => 140,  415 => 139,  411 => 138,  406 => 135,  400 => 131,  397 => 130,  394 => 129,  392 => 128,  387 => 125,  381 => 121,  378 => 120,  375 => 119,  373 => 118,  368 => 115,  354 => 114,  350 => 112,  335 => 110,  327 => 108,  325 => 107,  322 => 106,  318 => 104,  311 => 100,  307 => 99,  298 => 98,  296 => 97,  291 => 95,  281 => 94,  277 => 93,  271 => 90,  265 => 89,  260 => 87,  254 => 86,  248 => 83,  242 => 82,  237 => 80,  221 => 77,  195 => 75,  191 => 74,  180 => 65,  172 => 60,  143 => 55,  135 => 51,  131 => 49,  110 => 36,  64 => 13,  41 => 6,  276 => 96,  272 => 94,  257 => 92,  246 => 88,  243 => 86,  241 => 85,  238 => 83,  233 => 79,  230 => 81,  227 => 78,  224 => 77,  222 => 76,  220 => 75,  211 => 73,  207 => 72,  182 => 69,  162 => 61,  146 => 56,  138 => 53,  122 => 42,  105 => 32,  74 => 19,  70 => 15,  66 => 15,  62 => 14,  97 => 28,  92 => 20,  88 => 25,  78 => 17,  71 => 14,  59 => 9,  90 => 25,  24 => 2,  29 => 6,  96 => 28,  91 => 6,  81 => 21,  49 => 7,  30 => 4,  47 => 12,  34 => 5,  31 => 3,  199 => 90,  186 => 82,  174 => 61,  169 => 71,  166 => 62,  161 => 67,  159 => 66,  154 => 63,  145 => 59,  141 => 54,  139 => 56,  124 => 46,  120 => 44,  108 => 40,  94 => 27,  65 => 23,  52 => 19,  27 => 3,  28 => 3,  22 => 1,  82 => 18,  75 => 16,  72 => 25,  50 => 9,  43 => 8,  40 => 10,  25 => 2,  249 => 90,  160 => 56,  148 => 46,  142 => 45,  134 => 52,  126 => 47,  123 => 40,  118 => 43,  114 => 37,  111 => 36,  104 => 32,  101 => 31,  99 => 31,  86 => 25,  77 => 14,  69 => 15,  58 => 15,  55 => 21,  53 => 10,  46 => 8,  44 => 7,  38 => 5,  35 => 4,  32 => 3,  212 => 76,  206 => 78,  202 => 71,  196 => 73,  192 => 71,  190 => 84,  185 => 70,  179 => 64,  176 => 65,  171 => 72,  167 => 59,  165 => 57,  157 => 58,  152 => 51,  150 => 58,  147 => 49,  144 => 48,  136 => 55,  133 => 41,  128 => 44,  125 => 43,  119 => 41,  115 => 42,  112 => 34,  109 => 36,  106 => 32,  102 => 31,  98 => 28,  95 => 21,  89 => 28,  85 => 22,  83 => 19,  76 => 19,  67 => 17,  63 => 6,  60 => 11,  57 => 10,  54 => 14,  51 => 13,  48 => 17,  45 => 7,  42 => 9,  39 => 5,  36 => 4,  33 => 7,);
    }
}
