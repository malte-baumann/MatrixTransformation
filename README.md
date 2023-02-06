# Matrix Transformation for Ruby Interactive Shell

## Usage

1. Download File or Clone Repository
2. Start Ruby Shell: 
```Bash
irb -r ./transformation.rb
```

## Documentation

### Global Methods

**T(x,y,z)** generates a Translation Matrix.\
**S(x,y,z)** generates a Scale Matrix.\
**R(angle: , axis: )** generates a Rotation Matrix.
```ruby
T(1, 1, 1)
S(2, 2, 2)
R(angle: 90, axis: 'x')
```

__angle__ specifies the angle in degrees.\
__axis__ specifies the Axis. Can be either ('x', 'y', 'z').

In addition to these, there is one Method for Points.\
**P(x,y,z)** generates a 4x1 Matrix. The fourth Value will be by default 1 but can be specified.

### Internal Methods

There are some 'internal' Methods which are for internal use but may be used like any other Method.

__Integer to_r__
The class Integer has a Method to_r which will assume the number is in degrees and coverts it into radians.

__Matrix to_s__
Defines the Look of the standard Ouput of a Matrix. Does not work yet.
