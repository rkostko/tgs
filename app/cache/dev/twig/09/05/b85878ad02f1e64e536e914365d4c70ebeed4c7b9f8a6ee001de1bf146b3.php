<?php

/* SonataMediaBundle:MediaAdmin:view.html.twig */
class __TwigTemplate_0905b85878ad02f1e64e536e914365d4c70ebeed4c7b9f8a6ee001de1bf146b3 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("SonataAdminBundle:CRUD:action.html.twig");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );

        $this->macros = array(
        );
    }

    protected function doGetParent(array $context)
    {
        return "SonataAdminBundle:CRUD:action.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 14
    public function block_title($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "name"), "html", null, true);
    }

    // line 16
    public function block_content($context, array $blocks = array())
    {
        // line 17
        echo "    <h2>";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "name"), "html", null, true);
        echo " (";
        echo twig_escape_filter($this->env, $this->getContext($context, "format"), "html", null, true);
        echo ")</h2>

    <h3>";
        // line 19
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("title.media_preview", array(), "SonataMediaBundle"), "html", null, true);
        echo "</h3>
    <div>
        ";
        // line 21
        echo $this->env->getExtension('sonata_media')->media($this->getContext($context, "media"), $this->getContext($context, "format"), array());
        // line 22
        echo "    </div>

    <h3>";
        // line 24
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("title.informations", array(), "SonataMediaBundle"), "html", null, true);
        echo "</h3>

    <table>
        ";
        // line 27
        if (($this->getContext($context, "pixlr") && $this->getAttribute($this->getContext($context, "pixlr"), "isEditable", array(0 => $this->getContext($context, "media")), "method"))) {
            // line 28
            echo "            <tr>
                <td></td>
                <td><a class=\"btn\" href=\"";
            // line 30
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("sonata_media_pixlr_open_editor", array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")))), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.edit_with_pixlr", array(), "SonataMediaBundle"), "html", null, true);
            echo "</a></td>
            </tr>
        ";
        }
        // line 33
        echo "        <tr>
            <td>";
        // line 34
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.size", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>";
        // line 35
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "size"), "html", null, true);
        echo "</td>
        <tr>
        <tr>
            <td>";
        // line 38
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.width", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>";
        // line 39
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "width"), "html", null, true);
        echo "</td>
        <tr>
        <tr>
            <td>";
        // line 42
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.height", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>";
        // line 43
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "height"), "html", null, true);
        echo "</td>
        <tr>
        <tr>
            <td>";
        // line 46
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.content_type", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>";
        // line 47
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "contenttype"), "html", null, true);
        echo "</td>
        <tr>
        <tr>
            <td>";
        // line 50
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.copyright", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>";
        // line 51
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "copyright"), "html", null, true);
        echo "</td>
        <tr>
        <tr>
            <td>";
        // line 54
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.author_name", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>";
        // line 55
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "authorname"), "html", null, true);
        echo "</td>
        <tr>
        <tr>
            <td>";
        // line 58
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.cdn", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>
                ";
        // line 60
        if ($this->getAttribute($this->getContext($context, "media"), "cdnisflushable")) {
            // line 61
            echo "                    ";
            echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.to_be_flushed", array(), "SonataMediaBundle"), "html", null, true);
            echo "
                ";
        } else {
            // line 63
            echo "                    ";
            echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.flushed_at", array(), "SonataMediaBundle"), "html", null, true);
            echo "
                    ";
            // line 64
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($this->getContext($context, "media"), "cdnflushat")), "html", null, true);
            echo "
                 ";
        }
        // line 66
        echo "            </td>
        <tr>
        <tr>
            <td>";
        // line 69
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.protected_download_url", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td>
                <input type=\"text\" value=\"";
        // line 71
        echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("sonata_media_download", array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")))), "html", null, true);
        echo "\" style=\"width:500px\"/>
                <a href=\"";
        // line 72
        echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("sonata_media_download", array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")))), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("link.test_protected_url", array(), "SonataMediaBundle"), "html", null, true);
        echo "</a>
                <br />
                <span class=\"label warning\">";
        // line 74
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.protected_download_url_notice", array(), "SonataMediaBundle"), "html", null, true);
        echo "</span> ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "security"), "description"), "html", null, true);
        echo "
            </td>
        <tr>

        <tr>
            <td>";
        // line 79
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("label.public_url", array(), "SonataMediaBundle"), "html", null, true);
        echo "</td>
            <td><input type=\"text\" value=\"";
        // line 80
        echo $this->env->getExtension('sonata_media')->path($this->getContext($context, "media"), $this->getContext($context, "format"));
        echo "\" style=\"width:500px\"/></td>
        <tr>
    </table>

    <h3>";
        // line 84
        echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("title.formats", array(), "SonataMediaBundle"), "html", null, true);
        echo "</h3>
    <table>
        <tr>
            <td>
                <a href=\"";
        // line 88
        echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "admin"), "generateUrl", array(0 => "view", 1 => array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")), "format" => "reference")), "method"), "html", null, true);
        echo "\">reference</a>
            </td>
            <td>
                <input type=\"text\" value=\"";
        // line 91
        echo $this->env->getExtension('sonata_media')->path($this->getContext($context, "media"), "reference");
        echo "\"  style=\"width:500px\" />
            </td>
        </tr>

        ";
        // line 95
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getContext($context, "formats"));
        foreach ($context['_seq'] as $context["name"] => $context["format"]) {
            // line 96
            echo "            <tr>
                <td>
                    <a href=\"";
            // line 98
            echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "admin"), "generateUrl", array(0 => "view", 1 => array("id" => $this->env->getExtension('sonata_admin')->getUrlsafeIdentifier($this->getContext($context, "media")), "format" => $this->getContext($context, "name"))), "method"), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getContext($context, "name"), "html", null, true);
            echo "</a>
                </td>
                <td>
                    <input type=\"text\" value=\"";
            // line 101
            echo $this->env->getExtension('sonata_media')->path($this->getContext($context, "media"), $this->getContext($context, "name"));
            echo "\"  style=\"width:500px\"/>
                </td>
            </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['name'], $context['format'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 105
        echo "    </table>
";
    }

    public function getTemplateName()
    {
        return "SonataMediaBundle:MediaAdmin:view.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  232 => 96,  201 => 80,  259 => 122,  208 => 84,  402 => 158,  399 => 157,  390 => 152,  386 => 150,  369 => 142,  362 => 140,  348 => 135,  328 => 125,  297 => 136,  235 => 83,  217 => 75,  702 => 415,  693 => 409,  687 => 403,  677 => 400,  667 => 396,  663 => 394,  652 => 386,  646 => 383,  626 => 372,  618 => 367,  608 => 360,  594 => 352,  588 => 347,  570 => 336,  563 => 332,  555 => 327,  551 => 325,  527 => 312,  522 => 310,  517 => 308,  442 => 262,  437 => 261,  433 => 256,  412 => 244,  370 => 211,  329 => 185,  256 => 148,  240 => 85,  234 => 135,  229 => 133,  215 => 88,  210 => 96,  205 => 73,  158 => 55,  151 => 53,  672 => 398,  669 => 220,  664 => 215,  657 => 211,  651 => 208,  647 => 206,  642 => 382,  636 => 379,  634 => 201,  631 => 200,  625 => 198,  623 => 197,  620 => 196,  614 => 194,  612 => 193,  609 => 192,  603 => 190,  590 => 350,  586 => 346,  580 => 343,  571 => 140,  566 => 139,  558 => 137,  553 => 136,  550 => 135,  537 => 123,  515 => 117,  508 => 115,  492 => 110,  489 => 109,  483 => 108,  477 => 126,  471 => 109,  465 => 278,  441 => 98,  435 => 257,  431 => 61,  419 => 58,  410 => 55,  405 => 53,  401 => 52,  377 => 43,  374 => 144,  364 => 38,  358 => 35,  345 => 133,  340 => 29,  337 => 28,  334 => 187,  321 => 220,  273 => 100,  270 => 98,  247 => 163,  228 => 95,  197 => 79,  175 => 76,  170 => 78,  137 => 55,  706 => 207,  700 => 204,  697 => 203,  695 => 202,  689 => 407,  679 => 198,  674 => 196,  662 => 194,  659 => 193,  656 => 387,  648 => 187,  645 => 205,  628 => 184,  611 => 183,  606 => 181,  601 => 356,  598 => 188,  595 => 187,  589 => 174,  585 => 172,  583 => 171,  578 => 170,  561 => 138,  540 => 124,  535 => 165,  532 => 164,  529 => 120,  526 => 162,  523 => 119,  521 => 160,  518 => 159,  509 => 154,  505 => 301,  500 => 112,  498 => 149,  495 => 111,  491 => 128,  485 => 126,  460 => 141,  458 => 273,  455 => 101,  449 => 100,  446 => 135,  444 => 99,  439 => 132,  428 => 254,  423 => 122,  403 => 115,  398 => 113,  384 => 111,  380 => 147,  371 => 109,  365 => 141,  352 => 100,  349 => 32,  336 => 95,  314 => 187,  310 => 186,  300 => 137,  294 => 135,  292 => 109,  289 => 80,  275 => 158,  266 => 71,  253 => 165,  250 => 117,  239 => 63,  236 => 98,  231 => 59,  203 => 92,  194 => 69,  178 => 130,  149 => 64,  347 => 97,  341 => 96,  338 => 129,  324 => 124,  315 => 177,  288 => 175,  285 => 79,  267 => 166,  262 => 123,  255 => 68,  223 => 154,  218 => 99,  193 => 50,  187 => 74,  184 => 47,  181 => 83,  164 => 75,  93 => 38,  117 => 47,  567 => 178,  556 => 176,  552 => 175,  544 => 318,  539 => 316,  533 => 168,  531 => 313,  525 => 163,  516 => 160,  512 => 116,  506 => 158,  503 => 113,  499 => 298,  494 => 296,  479 => 286,  476 => 123,  473 => 122,  469 => 279,  462 => 105,  459 => 131,  456 => 268,  452 => 267,  445 => 121,  429 => 102,  425 => 59,  418 => 247,  414 => 121,  409 => 118,  391 => 48,  385 => 94,  379 => 82,  376 => 81,  366 => 130,  356 => 124,  332 => 126,  306 => 139,  301 => 173,  295 => 87,  287 => 107,  284 => 80,  279 => 102,  245 => 68,  225 => 66,  213 => 97,  204 => 58,  200 => 54,  173 => 22,  168 => 99,  156 => 63,  129 => 45,  87 => 35,  113 => 46,  363 => 96,  360 => 139,  355 => 138,  351 => 136,  346 => 117,  343 => 97,  333 => 94,  330 => 93,  323 => 227,  316 => 217,  313 => 81,  305 => 78,  299 => 112,  290 => 176,  286 => 131,  283 => 172,  280 => 129,  274 => 127,  268 => 125,  263 => 94,  252 => 89,  244 => 101,  226 => 155,  219 => 64,  188 => 83,  183 => 100,  177 => 23,  140 => 48,  12 => 34,  163 => 18,  155 => 67,  153 => 66,  127 => 51,  116 => 70,  107 => 43,  132 => 46,  130 => 45,  121 => 103,  100 => 39,  79 => 36,  73 => 33,  68 => 28,  56 => 22,  80 => 33,  37 => 16,  26 => 13,  103 => 42,  84 => 71,  61 => 25,  23 => 11,  493 => 171,  487 => 291,  482 => 167,  474 => 125,  470 => 162,  466 => 143,  457 => 158,  453 => 157,  450 => 156,  448 => 265,  443 => 153,  440 => 104,  436 => 151,  426 => 143,  422 => 141,  420 => 140,  415 => 57,  411 => 138,  406 => 94,  400 => 235,  397 => 156,  394 => 112,  392 => 128,  387 => 225,  381 => 45,  378 => 120,  375 => 119,  373 => 80,  368 => 39,  354 => 34,  350 => 197,  335 => 88,  327 => 108,  325 => 107,  322 => 90,  318 => 90,  311 => 118,  307 => 174,  298 => 181,  296 => 180,  291 => 85,  281 => 79,  277 => 77,  271 => 73,  265 => 63,  260 => 149,  254 => 105,  248 => 88,  242 => 112,  237 => 84,  221 => 91,  195 => 23,  191 => 86,  180 => 72,  172 => 58,  143 => 58,  135 => 108,  131 => 107,  110 => 75,  64 => 26,  41 => 17,  276 => 101,  272 => 75,  257 => 121,  246 => 65,  243 => 86,  241 => 64,  238 => 83,  233 => 79,  230 => 105,  227 => 78,  224 => 102,  222 => 65,  220 => 153,  211 => 74,  207 => 59,  182 => 69,  162 => 48,  146 => 29,  138 => 58,  122 => 43,  105 => 39,  74 => 29,  70 => 30,  66 => 27,  62 => 28,  97 => 39,  92 => 40,  88 => 32,  78 => 39,  71 => 25,  59 => 21,  90 => 59,  24 => 2,  29 => 13,  96 => 35,  91 => 33,  81 => 40,  49 => 19,  30 => 14,  47 => 18,  34 => 15,  31 => 14,  199 => 71,  186 => 84,  174 => 61,  169 => 73,  166 => 66,  161 => 64,  159 => 73,  154 => 51,  145 => 63,  141 => 61,  139 => 109,  124 => 53,  120 => 41,  108 => 26,  94 => 60,  65 => 24,  52 => 22,  27 => 14,  28 => 4,  22 => 11,  82 => 31,  75 => 35,  72 => 30,  50 => 21,  43 => 17,  40 => 16,  25 => 12,  249 => 54,  160 => 17,  148 => 60,  142 => 49,  134 => 45,  126 => 44,  123 => 50,  118 => 43,  114 => 41,  111 => 99,  104 => 38,  101 => 47,  99 => 44,  86 => 34,  77 => 31,  69 => 24,  58 => 24,  55 => 23,  53 => 22,  46 => 20,  44 => 18,  38 => 16,  35 => 16,  32 => 14,  212 => 24,  206 => 56,  202 => 152,  196 => 70,  192 => 148,  190 => 49,  185 => 64,  179 => 82,  176 => 71,  171 => 69,  167 => 19,  165 => 57,  157 => 52,  152 => 71,  150 => 61,  147 => 68,  144 => 67,  136 => 57,  133 => 54,  128 => 55,  125 => 44,  119 => 52,  115 => 51,  112 => 44,  109 => 40,  106 => 39,  102 => 44,  98 => 36,  95 => 43,  89 => 31,  85 => 39,  83 => 34,  76 => 19,  67 => 26,  63 => 26,  60 => 24,  57 => 22,  54 => 21,  51 => 23,  48 => 9,  45 => 19,  42 => 19,  39 => 20,  36 => 15,  33 => 16,);
    }
}
