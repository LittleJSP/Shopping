package mybean. datai
import com. sun rowset. * i
public class DataByPage
//存储表中全部记录的行集对象
CachedRowSetImpl rowSet nulli
//每页显示的记录数
Int pageSize=1
//分页后的总页数
int totalPages=1;
//当前显示页
Int currentPage =1;
public void setRowSet( CachedRowSetImpl set)f
rowSet= set
public CachedRowSetImpl getRowSet()
return rowSet



public void setPageSize(int size
pageSize= size
public int getPageSize()
return pagesize;
public int getTotalPages
(){
return totalPages
public void setTotalPages(int n)(
totalPages=n
public void setCurrentPage(int n)
currentPage =n
public int getCurrentPage(
return currentPage i
