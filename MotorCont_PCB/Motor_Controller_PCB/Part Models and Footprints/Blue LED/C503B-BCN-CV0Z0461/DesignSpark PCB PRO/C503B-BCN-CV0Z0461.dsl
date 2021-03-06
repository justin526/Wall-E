SamacSys ECAD Model
665226/460052/2.49/2/4/LED

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c160_h105"
		(holeDiam 1.05)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.6) (shapeHeight 1.6))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.6) (shapeHeight 1.6))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "C503B-BCN" (originalName "C503B-BCN")
		(multiLayer
			(pad (padNum 1) (padStyleRef c160_h105) (pt 1.27, 0) (rotation 90))
			(pad (padNum 2) (padStyleRef c160_h105) (pt -1.27, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -0.389, 0.06) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 0, 0) (radius 2.9) (startAngle 30.5) (sweepAngle 299.1) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 0, 0) (radius 2.9) (startAngle 30.5) (sweepAngle 299.1) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.5 -1.46969) (pt 2.5 1.46969) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2.5 1.46969) (pt 2.5 -1.46969) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 2.949, 0.013) (radius 0.027) (startAngle 0.0) (sweepAngle 0.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 2.949, 0.013) (radius 0.027) (startAngle 180.0) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "C503B-BCN-CV0Z0461" (originalName "C503B-BCN-CV0Z0461")

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
	(compDef "C503B-BCN-CV0Z0461" (originalName "C503B-BCN-CV0Z0461") (compHeader (numPins 2) (numParts 1) (refDesPrefix LED)
		)
		(compPin "1" (pinName "K") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "A") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "C503B-BCN-CV0Z0461"))
		(attachedPattern (patternNum 1) (patternName "C503B-BCN")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "941-C503BBCNCV0Z0461")
		(attr "Mouser Price/Stock" "https://www.mouser.com/Search/Refine.aspx?Keyword=941-C503BBCNCV0Z0461")
		(attr "Manufacturer_Name" "Cree, Inc.")
		(attr "Manufacturer_Part_Number" "C503B-BCN-CV0Z0461")
		(attr "Description" "Cree,LED,C503B-BCN-CV0Z0461")
		(attr "Datasheet Link" "https://componentsearchengine.com/Datasheets/1/C503B-BCN-CV0Z0461.pdf")
	)

)
