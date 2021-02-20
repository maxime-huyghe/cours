# Detected object

Sorte : DO

Références : Float

## Signature

CreateDO : Float x Float --> DO

Lat : DO --> Float in [-90.0, 90.0]

Lng : DO --> Float in [-180.0, 180.0]

DistanceApprox : DO x Float x Float --> Float

## Axiomes

DistanceApprox(CreateDO(lat, lng), lt, lg) = sqrt(square(lat - lt) + square(lng - lg))

# Module Radar

Sorte : MR

Références : Float, Integer, DO

## Signature

Create : Float x Float --> MR

Add : MR x DO --> MR

Size : MR --> Integer

ONT : MR x Float --> MR

## Axiomes

ONT(Add(mr, do), n) =
    if DistanceApprox(do, LatMR(mr), LngMR(mr)) < n
    then Add(ONT(mr, n), do)
    else ONT(mr, n)

# La question c

ONT(Add({obj300, obj200}, obj800), 300) = ONT({obj300, obj200}, 300) car 800 >= 300
    = ONT(Add({obj300}, obj200), 300) = Add(ONT({obj300}, obj200)) car 200 < 300
        = Add(ONT(Add({}, obj300), 300), obj200) = Add(ONT({}, 300), obj200) car 300 >= 300
            = Add({}, obj200)

