echo "Installing PC Soundsets"

echo off

for /r soundsets %%X in (*.ogg) do (copy "%%X" "..\sounds\")

"oggdec.exe" "..\sounds\f_*.ogg"
"oggdec.exe" "..\sounds\m_*.ogg"

del "..\sounds\f_*.ogg"
del "..\sounds\m_*.ogg"