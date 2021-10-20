PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//12928107/460052/2.49/2/2/Resistor

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r70_60"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.6) (shapeHeight 0.7))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "RESC1005X37N" (originalName "RESC1005X37N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r70_60) (pt -0.55, 0) (rotation 90))
			(pad (padNum 2) (padStyleRef r70_60) (pt 0.55, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.15 0.55) (pt 1.15 0.55) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.15 0.55) (pt 1.15 -0.55) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.15 -0.55) (pt -1.15 -0.55) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.15 -0.55) (pt -1.15 0.55) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.5 0.25) (pt 0.5 0.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.5 0.25) (pt 0.5 -0.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.5 -0.25) (pt -0.5 -0.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.5 -0.25) (pt -0.5 0.25) (width 0.025))
		)
	)
	(symbolDef "MCS04020D4701BE000" (originalName "MCS04020D4701BE000")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 700 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 700 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 50 mils) (pt 500 mils 50 mils) (width 6 mils))
		(line (pt 500 mils 50 mils) (pt 500 mils -50 mils) (width 6 mils))
		(line (pt 500 mils -50 mils) (pt 200 mils -50 mils) (width 6 mils))
		(line (pt 200 mils -50 mils) (pt 200 mils 50 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 550 mils 250 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 550 mils 150 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "MCS04020D4701BE000" (originalName "MCS04020D4701BE000") (compHeader (numPins 2) (numParts 1) (refDesPrefix R)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "MCS04020D4701BE000"))
		(attachedPattern (patternNum 1) (patternName "RESC1005X37N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "594-MCS04020D4701BE0")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Vishay-Beyschlag/MCS04020D4701BE000?qs=ft9OtscSA3%252BR0DpF5QqL2Q%3D%3D")
		(attr "Manufacturer_Name" "Vishay")
		(attr "Manufacturer_Part_Number" "MCS04020D4701BE000")
		(attr "Description" "Vishay Resistor Chip 0402")
		(attr "<Hyperlink>" "http://www.vishay.com/docs/28705/mcx0x0xpro.pdf")
		(attr "<Component Height>" "0.37")
		(attr "<STEP Filename>" "MCS04020D4701BE000.stp")
		(attr "<STEP Offsets>" "X=0.5;Y=-0.25;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
