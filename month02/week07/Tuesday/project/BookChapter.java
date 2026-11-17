
/**
 * Write a description of class BookChapter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class BookChapter
{
    private String name;
    private int totalPages;
    private int pagesRead;  

    public BookChapter(String chapterTitle){
        name = chapterTitle;
        totalPages = 300;
        pagesRead = 50;
    }

    public void readPages(int count){
        pagesRead = pagesRead + count;
    }
    
    public void getPagesLeft(int unReadPages){
         unReadPages = totalPages - pagesRead;
        
        
    }
    public void estimateMinutesToFinish(double minutesPerPage, int pageRead) {
        if (minutesPerPage > 0) {
            int remainingPages = totalPages - pageRead;
            double totalMinutes = remainingPages * minutesPerPage;
            
            System.out.println("estimateMinutesToFinish " + totalMinutes + " minutesLeft.");
        } else {
            System.out.println("minutesPerPage > 0");
        }
    }

}
