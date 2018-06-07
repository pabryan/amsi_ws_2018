(require 'ox-html)

(defvar note-section-id)

(org-export-define-derived-backend 'pa-lecture-notes-html 'html
  :translate-alist '((headline . pa-lecture-notes-headline)))

(defun pa-lecture-notes-headline (headline contents info)
  "Format org-mode headlines to my specs"
  (setq note-section-id (or (or (org-element-property :ID headline) (org-element-property :CUSTOM_ID headline)) (org-export-get-reference headline info)))
  (concat
   "<div class=\"panel panel-default notes-panel\">\n<div class=\"panel-heading\">\n"
   (format "<a href=\"#notes-section-%s\" data-toggle=\"collapse\" class=\"notes-toggle\">" note-section-id)
   "<h3>"
   (org-element-property :raw-value headline)
   "</h3>\n"
   "</a>\n"
   "</div>\n"
   (format "<div class=\"panel-body\" class=\"collapse\" id=\"notes-section-%s\">" note-section-id)
   contents
   "\n</div>\n</div>\n"
   ))

(provide 'pa-lecture-notes)


(defun pa-lecture-notes-export-to-html
  (&optional async subtreep visible-only body-only ext-plist)
  (interactive)
  (let ((outfile (org-export-output-file-name ".html" subtreep)))
    (org-export-to-file 'pa-lecture-notes-html outfile
      async subtreep visible-only body-only ext-plist)))

(defun pa-lecture-notes-publish-to-html (plist filename pub-dir)
  (org-publish-org-to 'pa-lecture-notes-export-to-html filename ".html" plist pub-dir))
