package serialization

type Vector4 struct {
	X float32
	Y float32
	Z float32
	W float32
}

func NewVector4(x float32, y float32, z float32, w float32) Vector4 {
	return Vector4{X: x, Y: y, Z: z, W: w}
}
