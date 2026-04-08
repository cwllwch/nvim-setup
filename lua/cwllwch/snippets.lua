local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("heex", {
    s("flow", {
        t('<div class="flow">'), i(1), t("</div>"),
        t({"", " "}), i(0),
    }),
    s("box", {
        t('<div class="box">'), i(1), t("</div>"),
        t({"", " "}), i(0),
    }),
    s("cluster", {
        t('<div class="cluster">'), i(1), t("</div>"),
        t({"", " "}), i(0),
    }),
    s("reel", {
        t('<div class="reel">'), i(1), t("</div>"),
        t({"", " "}), i(0),
    }),
    s("btn", {
        t('<div class="btn" data-variant="primary">'), i(1), t("</div>"),
        t({"", " "}), i(0),
    }),
    s("btnp", {
        t('<div class="btn" data-variant="primary">'), i(1), t("</div>"),
        t({"", " "}), i(0),
    }),
    s("hxg", {
			t('hx-get={~p"/'), i(1), t('"}')
    }),
    s("hxt", {
			t('hx-trigger="'), i(1), t('"')
    }),
    s("hxs", {
			t('hx-swap="'), i(1), t('"')
    }),
    s("hxa", {
			t('hx-target="'), i(1), t('"')
    }),
})

ls.add_snippets("ex", {
    s("~H", {
			t('~H"""'), i(1), 
			t(""), i(1),
			t('"""'), i(1)
    }),
})
