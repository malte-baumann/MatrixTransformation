require "matrix"


class Integer
    def to_r
        self * (Math::PI / 180) 
    end
end

class Matrix
    def to_s
        s = ""
        self.to_a.each {|r| s+=r.inspect + "\n"}
        s
    end
end

def T(x, y, z)
    Matrix[
        [1, 0, 0, x],
        [0, 1, 0, y],
        [0, 0, 1, z],
        [0, 0, 0, 1]
    ]
end

def R(angle:, axis:)
    raise ArgumentError, "Invalid Angle!" unless angle.is_a? Numeric
    angle = angle.to_r
    case axis
    when "x"
        Matrix[
            [1, 0, 0 ,0],
            [0, Math.cos(angle).round, -Math.sin(angle).round, 0],
            [0, Math.sin(angle).round, Math.cos(angle).round, 0],
            [0, 0, 0, 1]
        ]
    when "y"
        Matrix[
            [Math.cos(angle).round, 0, Math.sin(angle).round, 0],
            [0, 1, 0, 0],
            [-Math.sin(angle).round, 0, Math.cos(angle).round, 0],
            [0, 0, 0, 1]
        ]
    when "z"
        Matrix[
            [Math.cos(angle).round, -Math.sin(angle).round, 0, 0],
            [Math.sin(angle).round, Math.cos(angle).round, 0, 0],
            [0, 0, 1, 0],
            [0, 0, 0, 1]
        ]
    else
        raise ArgumentError, "Wrong Axis!"
    end
end

def S(x, y, z)
    Matrix[
        [x, 0, 0, 0],
        [0, y, 0, 0],
        [0, 0, z, 0],
        [0, 0, 0, 1]
    ]
end

def P(x, y, z, d=1)
    Matrix[
        [x], 
        [y], 
        [z], 
        [d]
    ]
end

# start with irb -r ./transformation.rb
