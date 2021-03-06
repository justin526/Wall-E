SamacSys ECAD Model
1199045/460052/2.49/2/0/LED

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c141.6_h91"
		(holeDiam 0.91)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.416) (shapeHeight 1.416))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.416) (shapeHeight 1.416))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "LTL2T3TGK6" (originalName "LTL2T3TGK6")
		(multiLayer
			(pad (padNum 1) (padStyleRef c141.6_h91) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c141.6_h91) (pt 2.540, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 1.270, 0.000) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -2.63 3.9) (pt 5.17 3.9) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 5.17 3.9) (pt 5.17 -3.9) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 5.17 -3.9) (pt -2.63 -3.9) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -2.63 -3.9) (pt -2.63 3.9) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.63 0) (pt -1.63 0) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 1.27, 0) (radius 2.9) (startAngle 180) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 4.17 0) (pt 4.17 0) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 1.27, 0) (radius 2.9) (startAngle .0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.63 0) (pt -1.63 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 1.27, 0) (radius 2.9) (startAngle 180) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 4.17 0) (pt 4.17 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 1.27, 0) (radius 2.9) (startAngle .0) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "LTL2T3TGK6" (originalName "LTL2T3TGK6")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 10 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 600 mils 0 mils) (rotation 180) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 590 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 200 mils -100 mils) (width 6 mils))
		(line (pt 250 mils 100 mils) (pt 150 mils 200 mils) (width 6 mils))
		(line (pt 350 mils 100 mils) (pt 250 mils 200 mils) (width 6 mils))
		(line (pt 100 mils 0 mils) (pt 200 mils 0 mils) (width 6 mils))
		(line (pt 400 mils 0 mils) (pt 500 mils 0 mils) (width 6 mils))
		(poly (pt 200 mils 0 mils) (pt 400 mils 100 mils) (pt 400 mils -100 mils) (pt 200 mils 0 mils) (width 10  mils))
		(poly (pt 210 mils 170 mils) (pt 180 mils 140 mils) (pt 150 mils 200 mils) (pt 210 mils 170 mils) (width 10  mils))
		(poly (pt 310 mils 170 mils) (pt 280 mils 140 mils) (pt 250 mils 200 mils) (pt 310 mils 170 mils) (width 10  mils))
		(attr "RefDes" "RefDes" (pt 500 mils 350 mils) (justify LowerLeft) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "LTL2T3TGK6" (originalName "LTL2T3TGK6") (compHeader (numPins 2) (numParts 1) (refDesPrefix LED)
		)
		(compPin "1" (pinName "A") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "K") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "LTL2T3TGK6"))
		(attachedPattern (patternNum 1) (patternName "LTL2T3TGK6")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "859-LTL2T3TGK6")
		(attr "Mouser Price/Stock" "https://www.mouser.com/Search/Refine.aspx?Keyword=859-LTL2T3TGK6")
		(attr "Manufacturer_Name" "Lite-On")
		(attr "Manufacturer_Part_Number" "LTL2T3TGK6")
		(attr "Description" "Standard LEDs - Through Hole Green Clear 525nm")
		(attr "Datasheet Link" "https://componentsearchengine.com/Datasheets/1/LTL2T3TGK6.pdf")
		(attr "Height" "9.2 mm")
	)

)
