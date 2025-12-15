package entity;
/**
 *
 * @author Gokhan
 */
public class Product
{
    private int ID;
    private String ProductName;
    private String ProductDescription;
    private String ProductColor;
    private String ProductSize;
    private String ProductPrice;

    public Product(int ID, String ProductName, String ProductDescription, String ProductColor, String ProductSize, String ProductPrice)
    {
        this.ID = ID;
        this.ProductName = ProductName;
        this.ProductDescription = ProductDescription;
        this.ProductColor = ProductColor;
        this.ProductSize = ProductSize;
        this.ProductPrice = ProductPrice;
    }

    public Product()
    {

    }

    public int getID() {
        return ID;
    }

    public String getProductName() {
        return ProductName;
    }

    public String getProductDescription() {
        return ProductDescription;
    }

    public String getProductColor() {
        return ProductColor;
    }

    public String getProductSize() {
        return ProductSize;
    }

    public String getProductPrice() {
        return ProductPrice;
    }

    @Override
    public String toString() {
        return "Product{" + "ID=" + ID + ", ProductName=" + ProductName + ", ProductDescription=" + ProductDescription + ", ProductColor=" + ProductColor + ", ProductSize=" + ProductSize+ ", ProductPrice=" + ProductPrice +'}';
    }
    public void setID(int ID) {
        this.ID = ID;
    }
    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public void setProductDescription(String ProductDescription) {
        this.ProductDescription = ProductDescription;
    }

    public void setProductColor(String ProductColor) {
        this.ProductColor = ProductColor;
    }

    public void setProductSize(String ProductSize) {
        this.ProductSize = ProductSize;
    }

    public void setProductPrice(String ProductPrice) {
        this.ProductPrice = ProductPrice;
    }
}
