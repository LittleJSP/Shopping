package mybean. datai
import com. sun rowset. * i
public class DataByPage
//�洢����ȫ����¼���м�����
CachedRowSetImpl rowSet nulli
//ÿҳ��ʾ�ļ�¼��
Int pageSize=1
//��ҳ�����ҳ��
int totalPages=1;
//��ǰ��ʾҳ
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
