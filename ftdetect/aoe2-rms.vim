autocmd BufNewFile,BufRead *.rms setfiletype aoe2-rms
autocmd BufReadCmd ZR@*.rms call zip#Browse(expand("<amatch>"))
