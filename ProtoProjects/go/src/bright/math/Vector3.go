package math

type Vector3 struct {
	X float32
	Y float32
	Z float32
}

func NewVector3(x float32, y float32, z float32) Vector3 {
	return Vector3{X: x, Y: y, Z: z}
}
