// Format-aware two-by-two component for work/education entries.
// Swaps bold/emphasis positions based on format (company-primary vs job-title-primary).
// When top-left and top-right are both empty, renders only the bottom row
// (used for multiple roles at the same company).
#let format-two-by-two(
  format: "",
  primary: "",
  secondary: "",
  dates: "",
  location: "",
  swap-primary: true,
) = {
  let (top-left, top-right, bottom-left, bottom-right) = if format == "company-primary" {
    (
      if primary != "" { strong(primary) },
      if location != "" { emph(location) },
      secondary,
      dates,
    )
  } else {
    (
      if swap-primary {
        if secondary != "" { strong(secondary) }
      } else {
        if primary != "" { strong(primary) }
      },
      dates,
      if swap-primary { primary } else { secondary },
      if location != "" { emph(location) },
    )
  }

  if top-left == none and top-right == none {
    [#bottom-left #h(1fr) #bottom-right]
  } else {
    [
      #top-left #h(1fr) #top-right \
      #bottom-left #h(1fr) #bottom-right
    ]
  }
}

// Cannot just use normal --- ligature because ligatures are disabled for good reasons
#let date-range(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash$ + " " + end-date
}
