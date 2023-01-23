# frozen_string_literal: true

module Moves
  ONE_VERTICAL_UP = [[1, 0]].freeze
  ONE_VERTICAL_DOWN = [[-1, 0]].freeze
  ONE_HORIZONTAL_RIGHT = [[0, 1]].freeze
  ONE_HORIZONTAL_LEFT = [[0, -1]].freeze
  ONE_DIAGONAL_UP_RIGHT = [[1, 1]].freeze
  ONE_DIAGONAL_DOWN_RIGHT = [[-1, 1]].freeze
  ONE_DIAGONAL_DOWN_LEFT = [[-1, -1]].freeze
  ONE_DIAGONAL_UP_LEFT = [[1, -1]].freeze

  TWO_VERTICAL_UP = [[2, 0]].freeze
  TWO_VERTICAL_DOWN = [[-2, 0]].freeze

  VERTICAL_UP = [[1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0]].freeze
  VERTICAL_DOWN = [[-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0]].freeze

  HORIZONTAL_RIGHT = [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7]].freeze
  HORIZONTAL_LEFT = [[0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7]].freeze

  DIAGONAL_UP_RIGHT = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7]].freeze
  DIAGONAL_DOWN_RIGHT = [[-1, 1], [-2, 2], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7]].freeze
  DIAGONAL_DOWN_LEFT = [[-1, -1], [-2, -2], [-3, -3], [-4, -4], [-5, -5], [-6, -6], [-7, -7]].freeze
  DIAGONAL_UP_LEFT = [[1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7]].freeze
end
