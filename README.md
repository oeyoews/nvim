[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![pipeline status](https://gitlab.com/oeyoews/nvim/badges/nvim/pipeline.svg)](https://gitlab.com/oeyoews/nvim/-/commits/nvim)
[![Latest Release](https://gitlab.com/oeyoews/nvim/-/badges/release.svg)](https://gitlab.com/oeyoews/nvim/-/releases)

<img src="img/2022-06-17-01-20-01.png" width=512/>

# Introd

```tree
├── CHANGELOG.md
├── _config.yml
├── img
├── init.lua
├── install.sh
├── lua
├── Makefile
├── package.json
├── plugin
├── README.md
├── Ultisnips
└── yarn.lock
```

`nvim-version` 0.7
## Dependencies

<details>
<summary>INFO</summary>

* fzf
* python-pynvim(neovim)
* python(ultisnips)
* npm(for lsp-installer)
* shellcheck, codespell
* make(for install)
* ranger(file manager)
* need install noto-font-emoji or nerd font

</details>

## Install

`nvim`

## TODO

<details>
<summary>INFO</summary>

* [ ] cursor shake for null-ls
* [x] vim-plug or packer.nvim index probleb
* [x] config setting conflict
* [ ] integrate husky and (prettier)
* [x] highlight paraness
* [ ] learn lightspeed
* [x] learn use visual-line multi curline
* [?] json add double how effect config
* [ ] add format stylua by ci/cd
* [x] insert mode to hide cursorline
* [x] automatically install filetype server when first open
* [ ] bug: treesitter multi download
* [x] config opt(load)
* [x] learn packer, test packer automatically
* [x] format lua(include vim), this treesitter
* [x] learn lua: doom-nvim, nvchad to deeply look
* [x] add highlight symbols under cursor functions(terminal gnome support)
* [x] use packer.nvim to replace vim-plug
* [x] tidy vanilla.txt, maybe can write vanilla.markdown, last to txt
* [x] config tab space show in different filetype
* [x] move plugins/*.lua to lua folder, and to pure lua config
* [ ] add window number switch number(mousenum)
* [x] solve gitsign utf8
* [x] how to add templates in nvim
* [x] config norg table
* [x] config format
* [x] some sitution will cause error line repeat(maybe emoji or refresh time error)
  * [x] snowflake:  this emoji will cause this bug in kitty(only)

* [x] config new theme for material, like tilde,
* add shortkeys in vim to open browser html
* [?] fix the zh bug(maybe also is terminal)
* [x] add random banner and random color startup
  * <https://github.com/goolord/alpha-nvim/discussions/16#discussioncomment-2386902>
* first install automatically install
* [x] config dashboard
* [x] this emjoi shadow bug, maybe is kitty terminal(switch to wezterm compare)
* [x] some error tip from feline(active)
* [x] https://github.com/AstroNvim/AstroNvim, learn it option setting and lsp multi separate setting: fix lua global vim setting

</details>


## symbols

<details>
<summary>TOC</summary>
-- @ref: https://vim-jp.org/vimdoc-en/digraph.html
-- ­ • ¶ l ĸ j ─ g ﬀ ض  ß å q w e r t y u і z x c │ b n m ‥ » « µ Q ∥  ¿ © ª ® Æ × ẍ ₤ ⇒ ⇐ ↑ ↓ ⇔ ← → ⊚ ⌂ ∞ 9 ⊙
-- ▬ ▭ ▲ △ ▶ ▷ ▼ ▽ ◀ ◁ ◆ ◇ ◊ ○ ◎ ● ◐ ◑ ◘ ◙ ◢ ◣ ★ ☆ ☜ ☞ ☺ ☻ ☼ ♀ ♂ ♠ ♡ ♢ ♣ ♩ ♪
-- ^@ ^A ^B ^C ^D ^E ^F ^G ^H ^I ^@ ^K ^L ^M ^N ^O ^P ^Q ^R ^S ^T ^U ^V ^W ^X ^Y ^Z ^[ ^\ ^] ^^ ^_ # $ @ [ \ ] ^ ` { | } ~ ^? ~@ ~A ~B ~C ~D ~E ~F ~G ~H ~I ~J ~K ~L ~M ~N ~O ~P ~Q ~R ~S ~T ~U ~V ~W ~X ~Y ~Z ~[ ~\ ~] ~^ ~_ | ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ¬ ­ ® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿ À Á Â Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ñ Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß à á â ã ä å æ ç è é ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú û ü ý þ ÿ  If ad ch Ā ā Ă ă Ą ą Ć ć Ĉ ĉ Ċ ċ Č č Ď ď Đ đ Ē ē Ĕ ĕ Ė ė Ę ę Ě ě Ĝ ĝ Ğ ğ Ġ ġ Ģ ģ Ĥ ĥ Ħ ħ Ĩ ĩ Ī ī Ĭ ĭ Į į İ ı Ĳ ĳ Ĵ ĵ Ķ ķ ĸ Ĺ ĺ Ļ ļ Ľ ľ Ŀ ŀ Ł ł Ń ń Ņ ņ Ň ň ŉ Ŋ ŋ Ō ō Ŏ ŏ Ő ő Œ œ Ŕ ŕ Ŗ ŗ Ř ř Ś ś Ŝ ŝ Ş ş Š š Ţ ţ Ť ť Ŧ ŧ Ũ ũ Ū ū Ŭ ŭ Ů ů Ű ű Ų ų Ŵ ŵ Ŷ ŷ Ÿ Ź ź Ż ż Ž ž Ơ ơ Ƣ ƣ Ʀ Ư ư Ƶ ƶ Ʒ Ǎ ǎ Ǐ ǐ Ǒ ǒ Ǔ ǔ Ǟ ǟ Ǡ ǡ Ǣ ǣ Ǥ ǥ Ǧ ǧ Ǩ ǩ Ǫ ǫ Ǭ ǭ Ǯ ǯ ǰ Ǵ ǵ ʿ ˇ ˘ ˙ ˚ ˛ ˝ Ά Έ Ή Ί Ό Ύ Ώ ΐ Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω Ϊ Ϋ ά έ ή ί ΰ α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω ϊ ϋ ό ύ ώ Ϙ ϙ Ϛ ϛ Ϝ ϝ Ϟ ϟ Ϡ ϡ ϴ ϵ Ё Ђ Ѓ Є Ѕ І Ї Ј Љ Њ Ћ Ќ Ў Џ А Б В Г Д Е Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я ё ђ ѓ є ѕ і ї ј љ њ ћ ќ ў џ Ѣ ѣ Ѫ ѫ Ѳ ѳ Ѵ ѵ Ҁ ҁ Ґ ґ א ב ג ד ה ו ז ח ט י ך כ ל ם מ ן נ ס ע ף פ ץ צ ק ר ש ת ، ؛ ؟ ء آ أ ؤ إ ئ ا ب ة ت ث ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ـ ف ق ك ل م ن ه و ى ي ً ٌ ٍ َ ُ ِ ّ ْ ٰ پ ڤ گ ۰ ۱ ۲ ۳ ۴ ۵ ۶ ۷ ۸ ۹ Ḃ ḃ Ḇ ḇ Ḋ ḋ Ḏ ḏ Ḑ ḑ Ḟ ḟ Ḡ ḡ Ḣ ḣ Ḧ ḧ Ḩ ḩ Ḱ ḱ Ḵ ḵ Ḻ ḻ Ḿ ḿ Ṁ ṁ Ṅ ṅ Ṉ ṉ Ṕ ṕ Ṗ ṗ Ṙ ṙ Ṟ ṟ Ṡ ṡ Ṫ ṫ Ṯ ṯ Ṽ ṽ Ẁ ẁ Ẃ ẃ Ẅ ẅ Ẇ ẇ Ẋ ẋ Ẍ ẍ Ẏ ẏ Ẑ ẑ Ẕ ẕ ẖ ẗ ẘ ẙ Ả ả Ẻ ẻ Ẽ ẽ Ỉ ỉ Ỏ ỏ Ủ ủ Ỳ ỳ Ỷ ỷ Ỹ ỹ ἀ ἁ ἂ ἃ ἄ ἅ ἆ ἇ               ‐ – — ― ‖ ‗ ‘ ’ ‚ ‛ “ ” „ ‟ † ‡ • ‥ … ‰ ′ ″ ‴ ‵ ‶ ‷ ‸ ‹ › ※ ‾ ⁄ ⁰ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁺ ⁻ ⁼ ⁽ ⁾ ⁿ ₀ ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₊ ₋ ₌ ₍ ₎ ₤ ₧ ₩ € ₽ ₽ ℃ ℅ ℉ № ℗ ℞ ℠ ™ Ω Å ⅓ ⅔ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞ Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ Ⅺ Ⅻ ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ ⅺ ⅻ ← ↑ → ↓ ↔ ↕ ⇐ ⇒ ⇔ ∀ ∂ ∃ ∅ ∆ ∇ ∈ ∋ ∏ ∑ − ∓ ∗ ∘ ∙ √ ∝ ∞ ∟ ∠ ∥ ∧ ∨ ∩ ∪ ∫ ∬ ∮ ∴ ∵ ∶ ∷ ∼ ∾ ≃ ≅ ≈ ≌ ≓ ≠ ≡ ≤ ≥ ≪ ≫ ≮ ≯ ⊂ ⊃ ⊆ ⊇ ⊙ ⊚ ⊥ ⋅ ⋮ ⋯ ⌂ ⌈ ⌉ ⌊ ⌋ ⌐ ⌒ ⌕ ⌠ ⌡ 〈 〉 ␣ ⑀ ⑁ ⑂ ⑃ ⑆ ⑇ ⑈ ⑉ ⒈ ⒉ ⒊ ⒋ ⒌ ⒍ ⒎ ⒏ ⒐ ─ ━ │ ┃ ┄ ┅ ┆ ┇ ┈ ┉ ┊ ┋ ┌ ┍ ┎ ┏ ┐ ┑ ┒ ┓ └ ┕ ┖ ┗ ┘ ┙ ┚ ┛ ├ ┝ ┠ ┣ ┤ ┥ ┨ ┫ ┬ ┯ ┰ ┳ ┴ ┷ ┸ ┻ ┼ ┿ ╂ ╋ ╱ ╲ ▀ ▄ █ ▌ ▐ ░ ▒ ▓ ■ □ ▢ ▣ ▤ ▥ ▦ ▧ ▨ ▩ ▪ ▬ ▭ ▲ △ ▶ ▷ ▼ ▽ ◀ ◁ ◆ ◇ ◊ ○ ◎ ● ◐ ◑ ◘ ◙ ◢ ◣ ★ ☆ ☜ ☞ ☺ ☻ ☼ ♀ ♂ ♠ ♡ ♢ ♣ ♩ ♪ ♫ ♭ ♮ ♯ ✓ ✗ ✠ 　 、 。 〃 〄 々 〆 〇 《 》 「 」 『 』 【 】 〒 〓 〔 〕 〖 〗 〜 ぁ あ ぃ い ぅ う ぇ え ぉ お か が き ぎ く ぐ け げ こ ご さ ざ し じ す ず せ ぜ そ ぞ た だ ち ぢ っ つ づ て で と ど な に ぬ ね の は ば ぱ ひ び ぴ ふ ぶ ぷ へ べ ぺ ほ ぼ ぽ ま み む め も ゃ や ゅ ゆ ょ よ ら り る れ ろ ゎ わ ゐ ゑ を ん ゔ ゛ ゜ ゝ ゞ ァ ア ィ イ ゥ ウ ェ エ ォ オ カ ガ キ ギ ク グ ケ ゲ コ ゴ サ ザ シ ジ ス ズ セ ゼ ソ ゾ タ ダ チ ヂ ッ ツ ヅ テ デ ト ド ナ ニ ヌ ネ ノ ハ バ パ ヒ ビ ピ フ ブ プ ヘ ベ ペ ホ ボ ポ マ ミ ム メ モ ャ ヤ ュ ユ ョ ヨ ラ リ ル レ ロ ヮ ワ ヰ ヱ ヲ ン ヴ ヵ ヶ ヷ ヸ ヹ ヺ ・ ー ヽ ヾ ㄅ ㄆ ㄇ ㄈ ㄉ ㄊ ㄋ ㄌ ㄍ ㄎ ㄏ ㄐ ㄑ ㄒ ㄓ ㄔ ㄕ ㄖ ㄗ ㄘ ㄙ ㄚ ㄛ ㄜ ㄞ ㄟ ㄠ ㄡ ㄢ ㄣ ㄤ ㄥ ㄦ ㄧ ㄨ ㄩ ㄪ ㄫ ㄬ ㈠ ㈡ ㈢ ㈣ ㈤ ㈥ ㈦ ㈧ ㈨ ﬀ ﬁ ﬂ ﬅ ﬆ
</details>
