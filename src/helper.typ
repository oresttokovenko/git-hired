// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  // these will be empty if it's a multi role entry
  // since these are already defined in the top row
  if top-left == none and top-right == none {
    [#bottom-left #h(1fr) #bottom-right]
  } else {
    [
      #top-left #h(1fr) #top-right \
      #bottom-left #h(1fr) #bottom-right
    ]
  }
}

// Format-aware two by two component that swaps fields based on format
// When swap-primary is false, primary always stays top-left (bold) and secondary bottom-left
#let format-two-by-two(
  format: "",
  primary: "",
  secondary: "",
  dates: "",
  location: "",
  swap-primary: true,
) = {
  if format == "company-primary" {
    generic-two-by-two(
      top-left: if primary != "" { strong(primary) },
      top-right: if location != "" { emph(location) },
      bottom-left: secondary,
      bottom-right: dates,
    )
  } else {
    generic-two-by-two(
      top-left: if swap-primary {
        if secondary != "" { strong(secondary) }
      } else {
        if primary != "" { strong(primary) }
      },
      top-right: dates,
      bottom-left: if swap-primary { primary } else { secondary },
      bottom-right: if location != "" { emph(location) },
    )
  }
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash$ + " " + end-date
}
