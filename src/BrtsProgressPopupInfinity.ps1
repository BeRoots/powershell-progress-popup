Add-Type -assembly System.Windows.Forms

# Create the form
$Frm = New-Object System.Windows.Forms.Form
$Frm.Text = "text here"
$Frm.Height = 150
$Frm.Width = 300
$Frm.BackColor = "White"

$Frm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Frm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

$Lbl = New-Object System.Windows.Forms.Label
$Lbl.Text = "Label text"
$Lbl.Height = 30
$Lbl.Width = 280
$Lbl.Top = 10
$Lbl.Left = 10
#"Tahoma"
$Lbl.Font = [System.Windows.Forms.Label]::DefaultFont
$Lbl.TextAlign = [System.Windows.ContentAlignment]::Center

$Frm.Controls.Add($Lbl)

$Pb = New-Object System.Windows.Forms.ProgressBar
$Pb.Name = "PowershellProgressBar"
$Pb.Style = [System.Windows.Forms.ProgressBarStyle]::Marquee
$Pb.MarqueeAnimationSpeed = 30

$Ds = New-Object System.Drawing.Size
$Ds.Width = 280
$Ds.Height = 20

$Pb.Size = $Ds
$Pb.Top = 50
$Pb.Left = 10

$Frm.Controls.Add($Pb)


$Frm.Show() | Out-Null
$Frm.Focus() | Out-Null

Start-Sleep -Seconds 10

$Frm.Close()
