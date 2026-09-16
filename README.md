# Village Fences

## Problem

A village is represented by a line of cells. `H` denotes a house and `.` denotes an empty cell. Fences, represented by `B`, may be placed only on empty cells. A person must not be able to reach another person's house, and every person must be able to reach the same number of cells. Among valid solutions, the one with the greatest number of fences should be printed.

## Key Observation

If two houses are adjacent, the substring `HH` occurs. There is no empty cell between them, so no fence can separate the two houses. Consequently, one person can reach the other person's house, making the arrangement invalid.

If there is no `HH`, every empty cell can be replaced with a fence. Each house is then isolated, so every person can reach exactly one cell: their own house. Replacing every empty cell also maximizes the number of fences.

## Algorithm

1. Check whether the village string contains `HH`.
2. If it does, print `NO`.
3. Otherwise, replace every `.` with `B` and print `YES` followed by the resulting string.

## Correctness

When `HH` exists, the adjacent houses cannot be separated by a fence, so the required condition cannot be satisfied. When `HH` does not exist, placing fences on every empty cell separates every house from all others. Each person reaches exactly one cell, and no other valid solution can contain more fences because every available empty cell has already been used.

## Complexity

Let `N` be the number of cells.

| Measure | Complexity |
|---|---:|
| Time | `O(N)` |
| Extra space | `O(N)` |

## Implementation

The solution is implemented in GNU Bash 5.0.17 in [`solution.sh`](solution.sh).

## Example

For `H...H`, no houses are adjacent. Replacing every empty cell with a fence gives `HBBBH`, which is a valid maximum-fence arrangement.
