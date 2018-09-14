# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# COMP3220 - 002 : Programming Languages
# Project_1

# Search controller class
class SearchController

    attr_accessor :searchSuggestionList

    def initialize(search_list = [])
        @searchSuggestionList = search_list
    end

    def showList()
        @searchSuggestionList
    end

    def updateList(movie_name)
        if @searchSuggestionList.include? movie_name
           @searchSuggestionList.delete_at(@searchSuggestionList.index(movie_name))
        end

        @searchSuggestionList.insert(0, movie_name)
    end


    def saveListToFile()
        f = File.new('data.txt', 'w')
        f.write("#{@searchSuggestionList}")
        f.close
    end

end
