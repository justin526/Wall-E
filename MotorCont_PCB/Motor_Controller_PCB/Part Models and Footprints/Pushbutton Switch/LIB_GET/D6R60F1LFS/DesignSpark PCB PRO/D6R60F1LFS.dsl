SamacSys ECAD Model
1209068/460052/2.49/4/2/Switch

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c220_h110"
		(holeDiam 1.1)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 2.200) (shapeHeight 2.200))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 2.200) (shapeHeight 2.200))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "D6R40F1LFS" (originalName "D6R40F1LFS")
		(multiLayer
			(pad (padNum 1) (padStyleRef c220_h110) (pt 0.000, 0.020) (rotation 90))
			(pad (padNum 2) (padStyleRef c220_h110) (pt 5.000, 0.020) (rotation 90))
			(pad (padNum 3) (padStyleRef c220_h110) (pt 0.000, -4.980) (rotation 90))
			(pad (padNum 4) (padStyleRef c220_h110) (pt 5.000, -4.980) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 2.500, -2.480) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.5 4.52) (pt 9.5 4.52) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 9.5 4.52) (pt 9.5 -9.48) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 9.5 -9.48) (pt -4.5 -9.48) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.5 -9.48) (pt -4.5 4.52) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.5 -2.48) (pt -3.5 -2.48) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 2.5, -2.48) (radius 6) (startAngle 180) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 8.5 -2.48) (pt 8.5 -2.48) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 2.5, -2.48) (radius 6) (startAngle .0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.5 -2.48) (pt -3.5 -2.48) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 2.5, -2.48) (radius 6) (startAngle 180) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 8.5 -2.48) (pt 8.5 -2.48) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 2.5, -2.48) (radius 6) (startAngle .0) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.9 0.12) (pt -2.9 -5.08) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.9 0.12) (pt -2.9 -5.08) (width 0.1))
		)
	)
	(symbolDef "D6R60F1LFS" (originalName "D6R60F1LFS")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 1200 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 1200 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 1000 mils 100 mils) (width 6 mils))
		(line (pt 1000 mils 100 mils) (pt 1000 mils -200 mils) (width 6 mils))
		(line (pt 1000 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1050 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "D6R60F1LFS" (originalName "D6R60F1LFS") (compHeader (numPins 4) (numParts 1) (refDesPrefix S)
		)
		(compPin "1" (pinName "COM_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "COM_2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "NO_1") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "NO_2") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "D6R60F1LFS"))
		(attachedPattern (patternNum 1) (patternName "D6R40F1LFS")
			(numPads 4)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
			)
		)
		(attr "Mouser Part Number" "611-D6R60F1LFS")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/CK/D6R60F1LFS?qs=sb%252But3Lm4x0VR1WI58%252Bz2w%3D%3D")
		(attr "Manufacturer_Name" "C & K COMPONENTS")
		(attr "Manufacturer_Part_Number" "D6R60F1LFS")
		(attr "Description" "Pushbutton Switches Key Switch SPST NO 100 mA")
		(attr "Datasheet Link" "https://www.mouser.co.uk/datasheet/2/60/d6-1382571.pdf")
		(attr "Height" "14.3 mm")
	)

)