echo '"*":
  "atom-beautify":
    c:
      default_beautifier: "clang-format"
    cpp: {}
    html:
      end_with_newline: true
    python:
      max_line_length: 120
  "atom-latex":
    build_after_save: false
    clean_after_build: true
    file_ext_to_clean: "*.aux, *.bbl, *.blg, *.idx, *.ind, *.lof, *.lot, *.out, *.toc, *.acn, *.acr, *.alg, *.glg, *.glo, *.gls, *.ist, *.fls, *.log, *.fdb_latexmk, *synctex.gz"
    focus_viewer: true
    hide_log_if_success: true
    preview_after_build: "View in PDF viewer tab"
  build:
    statusBarPriority: 1000
  core:
    disabledPackages: [
      "latex"
      "minimap"
      "language-latex"
      "latex-autocomplete"
      "latextools"
    ]
    editor:
      multiCursorOnClick: true
    packagesWithKeymapsDisabled: [
      "atom-beautify"
    ]
    telemetryConsent: "no"
    themes: [
      "one-dark-ui"
      "spacegray-atom-dark-syntax"
    ]
  editor:
    fontSize: 15
    invisibles: {}
    scrollPastEnd: true
    showIndentGuide: true
    showInvisibles: true
    tabType: "soft"
  "exception-reporting":
    userId: "619d5f9f-4a1c-45ed-a5ce-5f44d6746657"
  "file-icons":
    onChanges: true
  "git-blame":
    columnWidth: 287
  latex:
    opener: "preview"
    useDicy: true
  latextools:
    darwin: {}
    linux: {}
    win32:
      distro: "texlive"
  "linter-ui-default":
    panelHeight: 300
  "pdf-view": {}
  pigments:
    groupPaletteColors: "by file"
    markerType: "native-dot"
    sortPaletteColors: "by color"
  "tree-view": {}
".bibtex.text":
  editor:
    showInvisibles: true
    softWrap: false
    softWrapAtPreferredLineLength: false
"spell-check":
  excludedScopes: [
    "support.function.tex"
    "meta.preamble.latex"
    "support.type.function.latex"
    "comment.line.percentage.tex"
    "storage.type.function.latex"
    "support.function.latex"
    "string.other.math.tex"
    "string.other.math.block.environment.latex"
    "variable.parameter.function.latex"
    "constant.other.reference.latex"
  ]
' > ~/.atom/config.cson;

