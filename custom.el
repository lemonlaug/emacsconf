(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ledger-reports
   (quote
    (("chase saphire regs" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger reg Chase\\ Saphire")
     ("amex regs" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger reg American\\ Express")
     ("investment holdings" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger bal Assets:Investments")
     ("balances" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger bal Assets Liabilities --exchange=USD --market")
     ("monthly cash flow" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger -p \"last 12 months\" reg --monthly --collapse ^income ^expense --invert --no-rounding")
     ("income reg" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger reg Income -p \"this year\"")
     ("monthly expenses" "ledger [[ledger-mode-flags]] -f /Users/isaac/ledger/isaac_personal.ledger -p \"last 3 months\" -M --period-sort \"(amount)\" reg ^expenses")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)"))))
 '(package-selected-packages
   (quote
    (ledger-mode yaml-mode w3m python-mode pyenv-mode poly-R material-theme magit flycheck exec-path-from-shell ess elpy ein better-shell auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
