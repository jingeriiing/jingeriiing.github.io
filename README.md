# Jing Guo — Academic website

A buildless, responsive website for GitHub Pages. Open `index.html` locally or serve this folder with a static HTTP server. No installation is needed.

## Pages
- `index.html`: biography, working paper, education.
- `research.html`: working paper, work in progress, research experience.
- `cv.html`: a single CV download link; `CV.pdf`: downloadable CV.
- `reading.html`: separate reading page with biographies grouped by field; real titles transcribed from supplied images.
- `style.css`: shared responsive styling source, embedded into each HTML page.
- `scripts/embed_styles.py`: refreshes embedded styles after editing style.css.

## 内容维护

学术内容依据本次提供的 CV 整理。研究方向简介根据现有项目概括，发布前可按本人偏好调整。排版参考 https://sites.google.com/view/lingyunzhou 的白底黑字、无衬线字体、顶部横向导航及单栏研究列表。主页保留个人简介和联系方式，未使用参考站的照片或校徽。

书单已按用户提供的图片录入：人物传记 28 项；已按用户要求移除历史书栏目及丘吉尔、李白条目。人物类包含自传、回忆录、人物访谈及学术随笔；跨体裁条目已标注。编辑 reading.html 可继续补充真实阅读感想。未推断阅读时间、个人评分或具体感想。书单识别记录见 reading-sources.md。

正文中没有论文下载按钮，因为尚未提供公开论文文件。获得可公开版本后，再为相应论文添加链接。

## Publication

Copy the four HTML files and CV.pdf to the GitHub Pages source branch root. Each HTML file includes its own styles, so opening a page locally or omitting a separate CSS upload will not remove the layout. Preserve other repository files. This draft has not been published to the live website.

For future styling changes, edit style.css and run `python scripts/embed_styles.py`, then upload the updated HTML files. Keep style.css and the script with the source for maintenance.

## CV 文件

CV.pdf 根据本次上传的 CV.tex 重新排版，已检查单页 PDF 显示。由于本地 LaTeX 依赖不可用，PDF 并非由该 TeX 直接编译。网页内部链接已检查；浏览器预览服务不可用，因此尚未完成浏览器视觉核验。

## English reading page

All visible reading-page text, book titles, author names, genre labels and volume notes are in English. The list contains 28 biography-related books. Biographies are grouped into seven fields with initially collapsed person entries. Lee Kuan Yew’s two books share one entry. There are no title-translation footnotes or asterisks on the page.
