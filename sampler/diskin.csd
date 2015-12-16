<CsoundSynthesizer>
<CsInstruments>
instr 2
ksl chnget "slider"
aout diskin2 "London.wav", ksl, 0, 1, 0, 32
out aout
endin

instr 1
ksl chnget "slider"
aout2 diskin2 "india.wav", ksl, 0, 1, 0, 32
out aout2
endin

instr 99
turnoff2 p4, 2, 0
endin


</CsInstruments>
<CsScore>

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
