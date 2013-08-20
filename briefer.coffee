do ($ = jQuery) ->
  #Configuration here
  discourse_url = 'https://discourse.victorybriefs.com'
  category_name = 'promoted'
  
  #Don't touch under here
  formatErrorMessage = (jqXHR, exception) ->
    if jqXHR.status == 0
      return 'Not connected.\nPlease verify your network connection.'
    else if  jqXHR.status == 404
      return 'The requested page not found. [404]'
    else if jqXHR.status == 500
      return 'Internal Server Error [500].'
    else if exception == 'parsererror'
      return 'Requested JSON parse failed.'
    else if exception == 'timeout'
      return 'Time out error.'
    else if exception == 'abort'
      return 'Ajax request aborted.'
    else 
      return "Uncaught Error.\n#{jqXHR.responseText}" 
      
  category_url = "#{discourse_url}/category/#{category_name}.json"
  
  $.get(category_url)
    .done (data) ->
      console.log data
    .fail (xhr, err) ->
      console.log formatErrorMessage xhr, err
    
    
 #   function formatErrorMessage(jqXHR, exception) {

#     if (jqXHR.status === 0) {
#         return ('Not connected.\nPlease verify your network connection.');
#     } else if (jqXHR.status == 404) {
#         return ();
#     } else if (jqXHR.status == 500) {
#         return ();
#     } else if () {
#         return ('Requested JSON parse failed.');
#     } else if (exception === 'timeout') {
#         return ('Time out error.');
#     } else if (exception === 'abort') {
#         return ('Ajax request aborted.');
#     } else {
#         return ('Uncaught Error.\n' + jqXHR.responseText);
#     }
