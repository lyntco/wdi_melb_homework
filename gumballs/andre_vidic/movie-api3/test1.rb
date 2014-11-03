results = {"Search"=>
  [{"Title"=>"Jaws", "Year"=>"1975", "imdbID"=>"tt0073195", "Type"=>"movie"},
   {"Title"=>"Jaws 2", "Year"=>"1978", "imdbID"=>"tt0077766", "Type"=>"movie"},
   {"Title"=>"Jaws: The Revenge",
    "Year"=>"1987",
    "imdbID"=>"tt0093300",
    "Type"=>"movie"},
   {"Title"=>"Jaws 3-D", "Year"=>"1983", "imdbID"=>"tt0085750", "Type"=>"movie"},
   {"Title"=>"Jaws Wired Shut",
    "Year"=>"2002",
    "imdbID"=>"tt0701141",
    "Type"=>"episode"},
   {"Title"=>"Jaws Special", "Year"=>"2005", "imdbID"=>"tt0469002", "Type"=>"episode"},
   {"Title"=>"Jaws Special", "Year"=>"2005", "imdbID"=>"tt0469002", "Type"=>"episode"},
   {"Title"=>"The Making of Steven Spielberg's 'Jaws'",
    "Year"=>"1995",
    "imdbID"=>"tt0251821",
    "Type"=>"movie"},
   {"Title"=>"Mako: The Jaws of Death",
    "Year"=>"1976",
    "imdbID"=>"tt0074845",
    "Type"=>"movie"},
   {"Title"=>"Cruel Jaws", "Year"=>"1995", "imdbID"=>"tt0112747", "Type"=>"movie"}]}

@movies = results["Search"]
@movie_titles = []

<% @movie_titles.each do |x| %>
    <a href= <%="#{'/results/@movie_titles'}"%>><p><%=@movie_titles %></p></a>
    <% end %>

<div class="container">

    <!--Iterates through the @movie["Search"] hash-array to print out each individual movie title -->
    <% @movies["Search"].each do |each_movie| %>
      <a href= <%="#{'/results/@movies["Search"][each_movie]["imdbID"]'}"%>><p><%= @movies["Search"][each_movie]["Title"] %></p></a>
    <% end %>

  </div>
<% end %>

<form action="/results" method="get">
    <div class="input-group">
      <label for="start_station">Start Sation:</label>
      <select name="station" id="start_station">
        <% @movieSearch.each do |each_movie| %>
        <a href="/results/<%= each_movie["imdbID"] %>">
        <p><%= each_movie["Title"] %></p></a>
        <% end %>
        <option value="ts">N-Line: Time Square</option>
      </select>
    </div>
</form>