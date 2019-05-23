def select_books_titles_and_years_in_first_series_order_by_year
  sql = <<~SQL
    SELECT books.title, books.year
    FROM books
    JOIN series ON series.id = books.series_id
    WHERE books.series_id = 1
    ORDER BY year;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  sql = <<~SQL
    SELECT name, motto
    FROM characters
    ORDER BY LENGTH(motto) DESC
    LIMIT 1;
  SQL
end


def select_value_and_count_of_most_prolific_species
  sql = <<~SQL
    SELECT species, COUNT(species)
    FROM characters
    GROUP BY species 
    ORDER BY COUNT(species) DESC
    LIMIT 1
  SQL
end

def select_name_and_series_subgenres_of_authors
  sql = <<~SQL
    SELECT authors.name, subgenres.name
    FROM series
    JOIN authors ON authors.id = series.author_id
    JOIN subgenres ON subgenres.id = series.subgenre_id
  SQL
end

def select_series_title_with_most_human_characters
  sql = <<~SQL
    SELECT series.title
    FROM series
    JOIN characters ON characters.series_id = series.id
    WHERE characters.species = "human"
    GROUP BY series.title
    ORDER BY COUNT(characters.species) DESC
    LIMIT 1;
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  sql = <<~SQL
    SELECT characters.name, COUNT(character_books.book_id)
    FROM characters
    JOIN character_books ON character_books.character_id = characters.id
    GROUP BY characters.name
    ORDER BY COUNT(character_books.book_id) DESC;
  SQL
end
