package model;

public class Category {
    protected int cid;
    protected String categoryName;

    public Category(int cid, String categoryName) {
        this.cid = cid;
        this.categoryName = categoryName;
    }

    public Category() {
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}