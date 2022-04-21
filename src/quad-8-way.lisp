(in-package #:grid-formation)

(defclass quad-grid/8-way (quad-grid) ())

(defmethod neighbor-directions ((grid quad-grid/8-way))
  (u:interleave (edge-directions grid)
                (corner-directions grid)))

(defmethod neighbor-offsets ((grid quad-grid/8-way))
  (vector (v2:vec 1f0 0f0)
          (v2:vec 1f0 -1f0)
          (v2:vec 0f0 -1f0)
          (v2:vec -1f0 -1f0)
          (v2:vec -1f0 0f0)
          (v2:vec -1f0 1f0)
          (v2:vec 0f0 1f0)
          (v2:vec 1f0 1f0)))

(defmethod distance ((grid quad-grid/8-way) cell1 cell2)
  (v2:with-components ((c (v2:abs (v2:- cell1 cell2))))
    (floor (max cx cy))))
