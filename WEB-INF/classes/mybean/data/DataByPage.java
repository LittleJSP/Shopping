package mybean.data;
import com.sun.rowset.*;
public class DataByPage{
CachedRowSetImpl rowSet=null;
int pageSize=1;
int totalPages=1;
int currentPage=1;
public void setRowSet(CachedRowSetImpl set){
rowSet=set;
}
public CachedRowSetImpl getRowSet(){
return rowSet;
}
public void setPageSize(int size){
pageSize=size;
}
public int getPageSize(){
return pageSize;
}
public int getTotalPages(){
return totalPages;
}
public void setTotalPages(int n){
totalPages=n;
}
public void setCurrentPage(int n){
currentPage=n;
}
public int getCurrentPage(){
return currentPage;
}
}
