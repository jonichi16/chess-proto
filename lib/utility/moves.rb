module Moves
  ONE_VERTICAL_UP = [[1, 0]]
  ONE_VERTICAL_DOWN = [[-1, 0]]
  ONE_HORIZONTAL_RIGHT = [[0, 1]]
  ONE_HORIZONTAL_LEFT = [[0, -1]]
  ONE_DIAGONAL_UP_RIGHT = [[1, 1]]
  ONE_DIAGONAL_DOWN_RIGHT = [[-1, 1]]
  ONE_DIAGONAL_DOWN_LEFT = [[-1, -1]]
  ONE_DIAGONAL_UP_LEFT = [[1, -1]]

  TWO_VERTICAL_UP = [[2, 0]]
  TWO_VERTICAL_DOWN = [[-2, 0]]

  VERTICAL_UP = [[1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0]]
  VERTICAL_DOWN = [[-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0]]

  HORIZONTAL_RIGHT = [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7]]
  HORIZONTAL_LEFT = [[0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7]]

  DIAGONAL_UP_RIGHT = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7]]
  DIAGONAL_DOWN_RIGHT = [[-1, 1], [-2, 2], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7]]
  DIAGONAL_DOWN_LEFT = [[-1, -1], [-2, -2], [-3, -3], [-4, -4], [-5, -5], [-6, -6], [-7, -7]]
  DIAGONAL_UP_LEFT = [[1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7]]
end