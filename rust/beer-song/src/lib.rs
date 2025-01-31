pub fn verse(n: u32) -> String {
    if n == 0 {
        return String::from("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.");
    }
    if n == 1 {
        return String::from("1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.");
    }
    format!(
        "{n} {n_unit_name} of beer on the wall, {n} {n_unit_name} of beer.\nTake one down and pass it around, {n_minus} {n_minus_unit_name} of beer on the wall.",
        n=n,
        n_minus=n-1,
        n_unit_name=if n > 1 {"bottles" } else {"bottle"},
        n_minus_unit_name=if n-1>1 {"bottles" } else {"bottle"}
    )
}

pub fn sing(start: u32, end: u32) -> String {
    let mut song = vec![];
    for i in (end..=start).rev() {
        song.push(verse(i));
    }
    song.join("\n\n")
}
