SamacSys ECAD Model
453643/460052/2.49/15/4/Connector

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c195_h130"
		(holeDiam 1.3)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.950) (shapeHeight 1.950))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.950) (shapeHeight 1.950))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "1988930" (originalName "1988930")
		(multiLayer
			(pad (padNum 1) (padStyleRef c195_h130) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c195_h130) (pt 5.000, 0.000) (rotation 90))
			(pad (padNum 3) (padStyleRef c195_h130) (pt 10.000, 0.000) (rotation 90))
			(pad (padNum 4) (padStyleRef c195_h130) (pt 15.000, 0.000) (rotation 90))
			(pad (padNum 5) (padStyleRef c195_h130) (pt 20.000, 0.000) (rotation 90))
			(pad (padNum 6) (padStyleRef c195_h130) (pt 25.000, 0.000) (rotation 90))
			(pad (padNum 7) (padStyleRef c195_h130) (pt 30.000, 0.000) (rotation 90))
			(pad (padNum 8) (padStyleRef c195_h130) (pt 35.000, 0.000) (rotation 90))
			(pad (padNum 9) (padStyleRef c195_h130) (pt 40.000, 0.000) (rotation 90))
			(pad (padNum 10) (padStyleRef c195_h130) (pt 45.000, 0.000) (rotation 90))
			(pad (padNum 11) (padStyleRef c195_h130) (pt 50.000, 0.000) (rotation 90))
			(pad (padNum 12) (padStyleRef c195_h130) (pt 55.000, 0.000) (rotation 90))
			(pad (padNum 13) (padStyleRef c195_h130) (pt 60.000, 0.000) (rotation 90))
			(pad (padNum 14) (padStyleRef c195_h130) (pt 65.000, 0.000) (rotation 90))
			(pad (padNum 15) (padStyleRef c195_h130) (pt 70.000, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 34.600, 3.700) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.5 -2.7) (pt 72.5 -2.7) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 72.5 -2.7) (pt 72.5 10.1) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 72.5 10.1) (pt -2.5 10.1) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.5 10.1) (pt -2.5 -2.7) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.5 10.1) (pt 72.5 10.1) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 72.5 10.1) (pt 72.5 -2.7) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 72.5 -2.7) (pt -2.5 -2.7) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.5 -2.7) (pt -2.5 10.1) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.3 11.1) (pt 73.5 11.1) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 73.5 11.1) (pt 73.5 -3.7) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 73.5 -3.7) (pt -4.3 -3.7) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.3 -3.7) (pt -4.3 11.1) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.3 0) (pt -3.3 0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.25, 0) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.2 0) (pt -3.2 0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.25, 0) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.3 0) (pt -3.3 0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.25, 0) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
	)
	(symbolDef "1988930" (originalName "1988930")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -625 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 8) (pt 0 mils -700 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -725 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 9) (pt 0 mils -800 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -825 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 10) (pt 0 mils -900 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -925 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 11) (pt 0 mils -1000 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1025 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 12) (pt 0 mils -1100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 13) (pt 0 mils -1200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 14) (pt 0 mils -1300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 15) (pt 0 mils -1400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1425 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 600 mils 100 mils) (width 6 mils))
		(line (pt 600 mils 100 mils) (pt 600 mils -1500 mils) (width 6 mils))
		(line (pt 600 mils -1500 mils) (pt 200 mils -1500 mils) (width 6 mils))
		(line (pt 200 mils -1500 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 650 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "1988930" (originalName "1988930") (compHeader (numPins 15) (numParts 1) (refDesPrefix J)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "3") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "4") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "5") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "6") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "7" (pinName "7") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "8") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "9" (pinName "9") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "10" (pinName "10") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "11" (pinName "11") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "12" (pinName "12") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "13" (pinName "13") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "14" (pinName "14") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "15" (pinName "15") (partNum 1) (symPinNum 15) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "1988930"))
		(attachedPattern (patternNum 1) (patternName "1988930")
			(numPads 15)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
				(padNum 15) (compPinRef "15")
			)
		)
		(attr "Mouser Part Number" "651-1988930")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Phoenix-Contact/1988930?qs=eiqBpq341KUF0DIPygZiFg%3D%3D")
		(attr "Manufacturer_Name" "Phoenix Contact")
		(attr "Manufacturer_Part_Number" "1988930")
		(attr "Description" "PCB Terminal Block 1988930")
		(attr "Datasheet Link" "https://www.mouser.it/datasheet/2/324/ItemDetail_1988930-923961.pdf")
		(attr "Height" "12.05 mm")
	)

)
