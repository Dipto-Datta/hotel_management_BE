from pickle import TRUE

from django.db import models
from django.db.models.deletion import CASCADE
from django.db.models.deletion import SET_NULL
from authentication.models import User
# Create your models here.


class UserProfile(models.Model):
    user = models.ForeignKey(
        User, on_delete=models.CASCADE, null=True, blank=True)
    delegate_to = models.CharField(max_length=20, null=True, blank=True)


class RoomType(models.Model):
    type_name = models.CharField(primary_key=True, max_length=100)
    cost = models.DecimalField(max_digits=8, decimal_places=2)
    discount = models.DecimalField(max_digits=8, decimal_places=2)
    color = models.CharField(max_length=10, null=True, blank=True)
    services = models.CharField(max_length=100, null=True, blank=True)
    bed = models.CharField(max_length=50, null=True, blank=True)
    short = models.CharField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.type_name


class Room(models.Model):
    room_no = models.IntegerField(primary_key=True)
    room_type = models.ForeignKey(
        RoomType, on_delete=models.CASCADE, null=True, blank=True)
    extra_bed = models.BooleanField(default=False)
    adults = models.IntegerField(default=2, null=True, blank=True)
    child = models.IntegerField(null=True, blank=True)
    floor = models.IntegerField(null=True, blank=True)
    view = models.CharField(max_length=100, null=True, blank=True)
    status_fd = models.CharField(max_length=50, null=True, blank=True)
    status_hk = models.CharField(max_length=50, null=True, blank=True)
    features = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return str(self.room_no)


class Customer(models.Model):
    first_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=100, blank=True, null=True)
    nid = models.CharField(max_length=50, blank=True, null=True)
    dl = models.CharField(max_length=15, blank=True, null=True)
    email = models.CharField(max_length=100, null=True, blank=True)
    passport = models.CharField(max_length=9, blank=True, null=True)
    address = models.CharField(max_length=200, blank=True, null=True)
    phone = models.CharField(max_length=100)
    country = models.CharField(max_length=100, blank=True, null=True)
    nationality = models.CharField(max_length=100, blank=True, null=True)
    company = models.CharField(max_length=50, null=True, blank=True)
    occupation = models.CharField(max_length=50, null=True, blank=True)
    passport_exp = models.CharField(max_length=50, null=True, blank=True)
    gender = models.CharField(max_length=5, null=True, blank=True)
    visa_type = models.CharField(max_length=100, null=True, blank=True)
    visa_issue = models.DateField(null=True, blank=True)
    visa_expiry = models.DateField(null=True, blank=True)

    def __str__(self):
        return str(self.id)


class CustomerPicture(models.Model):
    cust_id = models.ForeignKey(Customer, on_delete=models.CASCADE, null=True)
    pic = models.ImageField(blank=True, null=True)

    def __str__(self):
        return str(self.id)


class Reservation(models.Model):
    cust_id = models.ForeignKey(Customer, on_delete=models.CASCADE)
    secondary_cus = models.CharField(max_length=200, null=True, blank=True)
    check_in_date = models.DateField(null=True, blank=True)
    check_in_time = models.CharField(max_length=100, null=True, blank=True)
    check_out_date = models.DateField(null=True, blank=True)
    check_out_time = models.CharField(max_length=100, null=True, blank=True)
    source = models.CharField(max_length=50, null=True, blank=True)
    status = models.CharField(max_length=50)
    advanceCredit = models.DecimalField(
        max_digits=8, decimal_places=2, blank=True, null=True)
    extra_breakfast = models.IntegerField(blank=True, null=True)
    room = models.ForeignKey(Room, on_delete=SET_NULL, null=True, blank=True)
    no_guest = models.IntegerField(blank=True, null=True)
    special_ins = models.CharField(max_length=200, null=True, blank=True)
    No_days = models.IntegerField(null=True, blank=True)
    adults = models.IntegerField(null=True, blank=True)
    childs = models.IntegerField(null=True, blank=True)
    total_credit = models.DecimalField(
        max_digits=10, decimal_places=2, blank=True, null=True)
    total_due = models.DecimalField(
        max_digits=10, decimal_places=2, blank=True, null=True)
    total_amount = models.DecimalField(
        max_digits=8, decimal_places=2, blank=True, null=True)
    bill_cleared = models.BooleanField(default=False)
    secondary_room = models.CharField(max_length=100, null=True, blank=True)
    is_primary_room = models.BooleanField(default=False)
    primary_room_no = models.CharField(max_length=100, null=True, blank=True)
    previous_discounts = models.CharField(
        max_length=100, null=True, blank=True)

    # def __str__(self):
    #     return str(self.id)


class CardNo(models.Model):
    card_no = models.IntegerField(primary_key=True)
    room_no = models.ForeignKey(
        Room, on_delete=SET_NULL, null=True, blank=True)
    cust_id = models.ForeignKey(
        Customer, on_delete=models.CASCADE, null=True, blank=True)
    rev_id = models.ForeignKey(
        Reservation, on_delete=models.CASCADE, null=True, blank=True)
    checked_in = models.BooleanField(default=False)
    secondary_room = models.CharField(max_length=150, null=True, blank=True)

    def __str__(self):
        return str(self.card_no)


class Complain(models.Model):
    card_no = models.CharField(max_length=50, null=True, blank=True)
    room_no = models.CharField(max_length=15, null=True, blank=True)
    issueDate = models.DateField(null=True, blank=True)
    issues = models.TextField(max_length=250, null=True, blank=True)
    subject = models.CharField(max_length=150, null=True, blank=True)
    particular = models.CharField(max_length=30, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class LostAndFound(models.Model):
    room_no = models.ForeignKey(Room, on_delete=SET_NULL, null=True)
    date = models.DateField(null=True, blank=True)
    time = models.TimeField(null=True, blank=True)
    item = models.CharField(max_length=100, null=True, blank=True)
    description = models.TextField(max_length=400, null=True, blank=True)
    found_by = models.TextField(max_length=100, null=True, blank=True)
    claimed = models.BooleanField(default=False)
    claimed_name = models.CharField(max_length=100, null=True, blank=True)
    claimed_date = models.DateField(null=True, blank=True)
    claimed_time = models.TimeField(null=True, blank=True)
    phone = models.CharField(max_length=100, null=True, blank=True)
    nid = models.IntegerField(null=True, blank=True)
    passport = models.CharField(max_length=13, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class Project(models.Model):
    name = models.CharField(max_length=30, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.id)


class CostCenter(models.Model):
    name = models.CharField(primary_key=True, max_length=25)

    def __str__(self):
        return str(self.name)


class InventoryType(models.Model):
    type_name = models.CharField(primary_key=True, max_length=50)

    def __str__(self):
        return self.type_name


class Item(models.Model):
    name = models.CharField(primary_key=True, max_length=100)
    item_type = models.ForeignKey(InventoryType, on_delete=SET_NULL, null=True)
    defaultQuantity = models.IntegerField(null=True, blank=True)
    price = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    is_vat = models.BooleanField(default=False, null=True, blank=True)
    vat = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    costingMethod = models.CharField(max_length=25, null=True, blank=True)
    line = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return self.name


class Budget(models.Model):
    item = models.ForeignKey(Item, on_delete=SET_NULL, null=True)
    month = models.CharField(max_length=25, null=True, blank=True)
    budget = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class LineType(models.Model):
    name = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class Status(models.Model):
    orderType = models.CharField(max_length=25, null=True, blank=True)
    statusCode = models.CharField(max_length=25, null=True, blank=True)
    statusName = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class Employee(models.Model):
    name = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class Supplier(models.Model):
    name = models.CharField(max_length=25, null=True, blank=True)
    address = models.CharField(max_length=50, null=True, blank=True)
    phone = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class PuchaseOrder(models.Model):
    orderNumber = models.CharField(max_length=25, null=True, blank=True)
    orderBy = models.CharField(max_length=25, null=True, blank=True)
    requestedBy = models.CharField(max_length=25, null=True, blank=True)
    date_requested = models.DateField(null=True, blank=True)
    date_expected = models.DateField(null=True, blank=True)
    urgency = models.CharField(max_length=25, null=True, blank=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    address_delivery = models.CharField(max_length=250, null=True, blank=True)
    address_billing = models.CharField(max_length=250, null=True, blank=True)
    status = models.ForeignKey(Status, on_delete=SET_NULL, null=True)
    statusC = models.CharField(max_length=25, null=True, blank=True)
    statusName = models.CharField(max_length=25, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class RequestedItem(models.Model):
    orderId = models.ForeignKey(PuchaseOrder, on_delete=SET_NULL, null=True)
    project = models.ForeignKey(Project, on_delete=SET_NULL, null=True)
    projectName = models.CharField(max_length=30, null=True, blank=True)
    lineName = models.CharField(max_length=30, null=True, blank=True)
    cc = models.ForeignKey(CostCenter, on_delete=SET_NULL, null=True)
    item = models.ForeignKey(Item, on_delete=SET_NULL, null=True)
    quantity = models.CharField(max_length=30, null=True, blank=True)
    unitPrice = models.CharField(max_length=30, null=True, blank=True)
    status = models.ForeignKey(Status, on_delete=SET_NULL, null=True)
    statusC = models.CharField(max_length=25, null=True, blank=True)
    statusName = models.CharField(max_length=25, null=True, blank=True)
    remarks = models.CharField(max_length=30, null=True, blank=True)

    supplierLimit = models.CharField(max_length=30, null=True, blank=True)
    supplierdate = models.DateField(null=True, blank=True)
    supplier = models.CharField(max_length=30, null=True, blank=True)
    supplierValue = models.CharField(max_length=30, null=True, blank=True)
    supplierValueTax = models.CharField(max_length=30, null=True, blank=True)
    supplierValueOther = models.CharField(max_length=30, null=True, blank=True)

    supplierSelected = models.CharField(
        max_length=30, null=True, blank=True)
    supplierSelectedQuaote = models.CharField(
        max_length=30, null=True, blank=True)
    supplierSelectedtax = models.CharField(
        max_length=30, null=True, blank=True)
    supplierSelectedOther = models.CharField(
        max_length=30, null=True, blank=True)
    paymentTerms = models.CharField(max_length=30, null=True, blank=True)
    paymentAdvanceSytem = models.CharField(
        max_length=30, null=True, blank=True)
    paymentAdvanceAmount = models.CharField(
        max_length=30, null=True, blank=True)
    paymentRemarks = models.CharField(
        max_length=30, null=True, blank=True)

    quantityReceived = models.CharField(
        max_length=30, null=True, blank=True)
    quantityOpen = models.CharField(
        max_length=30, null=True, blank=True)
    remarksReceived = models.CharField(
        max_length=30, null=True, blank=True)
    receivedBoolean = models.BooleanField(default=False, null=True, blank=True)
    receipDate = models.DateField(null=True, blank=True)

    def __str__(self):
        return str(self.id)


class ProductRaw(models.Model):
    item = models.ForeignKey(Item, on_delete=SET_NULL, null=True)
    item_type = models.ForeignKey(InventoryType, on_delete=SET_NULL, null=True)
    name = models.CharField(max_length=15, null=True, blank=True)
    costingMethod = models.CharField(max_length=30, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.item)


class ProductDetails(models.Model):
    prod = models.ForeignKey(ProductRaw, on_delete=SET_NULL, null=True)
    stockI = models.CharField(max_length=30, null=True, blank=True)
    stock = models.CharField(max_length=30, null=True, blank=True)
    price = models.CharField(max_length=30, null=True, blank=True)
    date = models.DateField(null=True, blank=True)

    op = models.CharField(max_length=30, null=True, blank=True)
    batch = models.CharField(max_length=30, null=True, blank=True)
    project = models.ForeignKey(Project, on_delete=SET_NULL, null=True)
    projectName = models.CharField(max_length=30, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.id)


class IssueItem(models.Model):
    orderType = models.CharField(max_length=30, null=True, blank=True)
    docNumber = models.CharField(max_length=100, null=True, blank=True)
    date = models.DateField(null=True, blank=True)
    amount = models.CharField(max_length=30, null=True, blank=True)
    reamrk = models.CharField(max_length=100, null=True, blank=True)
    ledger = models.BooleanField(null=True, blank=True, default=False)

    project = models.ForeignKey(Project, on_delete=SET_NULL, null=True)
    projectName = models.CharField(max_length=30, null=True, blank=True)

    status = models.CharField(max_length=30, null=True, blank=True)
    statusS = models.CharField(max_length=30, null=True, blank=True)

    number = models.CharField(max_length=30, null=True, blank=True)
    returnNumber = models.CharField(max_length=30, null=True, blank=True)
    orderBy = models.CharField(max_length=30, null=True, blank=True)
    issueTo = models.CharField(max_length=30, null=True, blank=True)

    item = models.CharField(max_length=30, null=True, blank=True)
    itemMaster = models.ForeignKey(Item, on_delete=SET_NULL, null=True)
    itemName = models.CharField(max_length=30, null=True, blank=True)
    requestedItem = models.CharField(max_length=30, null=True, blank=True)
    pendingItem = models.CharField(max_length=30, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class StockTransaction(models.Model):
    room_no = models.ForeignKey(Room, on_delete=SET_NULL, null=True)
    item_stock_quantity = models.ForeignKey(
        Item, on_delete=SET_NULL, null=True)
    item_used = models.CharField(max_length=100)
    item_bill = models.DecimalField(max_digits=8, decimal_places=2)
    discount = models.DecimalField(max_digits=8, decimal_places=2)
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return str(self.id)


class Damage(models.Model):
    room_no = models.ForeignKey(Room, on_delete=SET_NULL, null=True)
    damage_des = models.TextField(max_length=400, null=True, blank=True)
    date = models.DateTimeField(auto_now_add=True, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class Laundry(models.Model):
    room_no = models.ForeignKey(
        Room, on_delete=SET_NULL, blank=True, null=True)
    card_no = models.ForeignKey(
        CardNo, on_delete=SET_NULL, blank=True, null=True)
    customer_name = models.CharField(max_length=100, blank=True, null=True)
    customer_phone = models.IntegerField(blank=True, null=True)
    date_received = models.DateField(blank=True, null=True)
    ex_date_delivery = models.DateField(blank=True, null=True)
    total_item = models.IntegerField(blank=True, null=True)
    total_cost = models.DecimalField(
        max_digits=8, decimal_places=2, blank=True, null=True)
    status = models.BooleanField(default=False, null=True, blank=True)
    details = models.TextField(null=True, blank=True)
    claimed_date = models.DateField(blank=True, null=True)
    claimed_time = models.TimeField(blank=True, null=True)

    def __str__(self):
        return str(self.id)


class LaundryCost(models.Model):
    item_name = models.CharField(max_length=10, blank=True, null=True)
    gender_type = models.CharField(max_length=10, blank=True, null=True)
    wash_cost = models.IntegerField(blank=True, null=True)
    dry_cost = models.IntegerField(blank=True, null=True)
    iron_cost = models.IntegerField(blank=True, null=True)

    def __str__(self):
        return str(self.id)


class Maintenance(models.Model):
    room_no = models.ForeignKey(
        Room, on_delete=SET_NULL, blank=True, null=True)
    date = models.DateField(null=True, blank=True)
    type_main = models.CharField(max_length=100, null=True, blank=True)
    priority = models.CharField(max_length=50, null=True, blank=True)
    comments = models.TextField(max_length=400, null=True, blank=True)
    status = models.CharField(max_length=50, blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    end_time = models.TimeField(blank=True, null=True)

    def __str__(self):
        return str(self.id)


# class Bellboy(models.Model):
#     check = models.BooleanField(default=False, blank=True, null=True)
#     status = models.BooleanField(max_length=50, blank=True, null=True)
#     token = models.CharField(max_length=50, blank=True, null=True)
#     room_no = models.CharField(max_length=50, blank=True, null=True)
#     special_ins = models.CharField(max_length=200, blank=True, null=True)
#     room_secondary = models.CharField(max_length=50, blank=True, null=True)

    


class LuggageStorage(models.Model):
    tag_no = models.CharField(max_length=50, null=True, blank=True)
    bag_no = models.CharField(max_length=50, blank=True, null=True)
    status = models.BooleanField(default=False, blank=True, null=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    phone = models.CharField(max_length=50, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    time = models.TimeField(blank=True, null=True)
    claimed_date = models.DateField(blank=True, null=True)
    claimed_time = models.TimeField(blank=True, null=True)

    def __str__(self):
        return str(self.tag_no)


class Table(models.Model):
    num = models.CharField(max_length=100, blank=True, null=True)
    status = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return self.num


class FoodCategory(models.Model):
    name = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return self.name


class FoodType(models.Model):
    food = models.ForeignKey(
        FoodCategory, on_delete=SET_NULL, blank=True, null=True)
    name = models.CharField(max_length=100)
    cost = models.DecimalField(max_digits=8, decimal_places=2)

    def __str__(self):
        return self.name


class FoodPicture(models.Model):
    food = models.ForeignKey(FoodType, on_delete=models.CASCADE, null=True)
    pic = models.ImageField(blank=True, null=True)

    def __str__(self):
        return str(self.id)


class FoodPosOrder(models.Model):
    table = models.ForeignKey(Table, on_delete=SET_NULL, blank=True, null=True)
    status = models.CharField(max_length=100, blank=True, null=True)
    subTotal = models.DecimalField(
        max_digits=15, decimal_places=2, blank=True, null=True)
    tax = models.DecimalField(
        max_digits=15, decimal_places=2, blank=True, null=True)
    total = models.DecimalField(
        max_digits=15, decimal_places=2, blank=True, null=True)
    item = models.CharField(max_length=200, blank=True, null=True)
    itemQuantity = models.CharField(max_length=200, blank=True, null=True)
    itemName = models.CharField(max_length=200, blank=True, null=True)
    card_no = models.ForeignKey(
        CardNo, on_delete=SET_NULL, blank=True, null=True)

    def __str__(self):
        return str(self.id)


class FoodOrder(models.Model):
    room_no = models.ForeignKey(
        Room, on_delete=SET_NULL, blank=True, null=True)
    card_no = models.ForeignKey(
        CardNo, on_delete=SET_NULL, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    time = models.TimeField(blank=True, null=True)
    special_request = models.TextField(max_length=400, blank=True, null=True)
    total_bill = models.IntegerField(null=True, blank=True)
    details = models.TextField(null=True, blank=True)
    status = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return str(self.id)


class ComplimentaryService(models.Model):
    room_no = models.ForeignKey(
        Room, on_delete=SET_NULL, blank=True, null=True)
    card_no = models.ForeignKey(
        CardNo, on_delete=SET_NULL, blank=True, null=True)
    date = models.DateField(null=True, blank=True)
    time = models.TimeField(null=True, blank=True)
    isAvailed = models.BooleanField(default=False, null=True, blank=True)

    def __str__(self):
        return str(self.res_id)


class Bills(models.Model):

    date = models.DateField(auto_now_add=True)
    time = models.TimeField(auto_now_add=True)
    type_bill = models.CharField(max_length=100)
    cost = models.DecimalField(max_digits=8, decimal_places=2)
    discount = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    bill_item = models.CharField(max_length=150, null=True, blank=True)
    item_quantity = models.IntegerField(null=True, blank=True)
    trx_no = models.CharField(max_length=150, null=True, blank=True)
    trx_type = models.CharField(max_length=100, null=True, blank=True)
    card_validity = models.CharField(max_length=100, null=True, blank=True)
    card_no = models.ForeignKey(
        CardNo, on_delete=SET_NULL, blank=True, null=True)
    addl_discount = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    vat_amount = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    sc_amount = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    bill_category = models.CharField(max_length=30, null=True, blank=True)
    special_discount = models.CharField(max_length=100, null=True, blank=True)
    special_discount_reason = models.CharField(
        max_length=200, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class BillExtra(models.Model):

    date = models.DateField(auto_now_add=True)
    time = models.TimeField(auto_now_add=True)
    type_bill = models.CharField(max_length=100)
    item_quantity = models.IntegerField(null=True, blank=True)
    cost = models.DecimalField(max_digits=8, decimal_places=2)
    discount = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    vat_amount = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    sc_amount = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    trx_type = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class COA(models.Model):
    id = models.IntegerField(primary_key=True)
    description = models.CharField(max_length=100, blank=True, null=True)
    cost_center = models.ForeignKey(
        CostCenter, on_delete=SET_NULL, blank=True, null=True)
    responsible_center = models.CharField(
        max_length=100, blank=True, null=True)
    type = models.CharField(max_length=100, blank=True, null=True)
    tax = models.BooleanField(blank=True, null=True)
    statement = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class GLMapping(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=100, blank=True, null=True)
    credit = models.CharField(max_length=50, blank=True, null=True)
    debit = models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return str(self.id)


class TransactionTable(models.Model):
    description = models.CharField(max_length=100, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    account_id = models.ForeignKey(
        COA, on_delete=SET_NULL, blank=True, null=True)
    credited_by = models.CharField(max_length=100, blank=True, null=True)
    reference = models.CharField(max_length=100, blank=True, null=True)
    credit = models.IntegerField(blank=True, null=True)
    debit = models.IntegerField(blank=True, null=True)
    memo = models.CharField(max_length=100, blank=True, null=True)
    journal_id = models.CharField(max_length=100, blank=True, null=True)
    auto_journal = models.BooleanField(default=False, blank=True, null=True)
    vat_ledger = models.BooleanField(default=False, blank=True, null=True)
    card_no = models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return str(self.id)


class Consierge(models.Model):
    name = models.CharField(max_length=100, null=True, blank=True)
    phone = models.CharField(max_length=100, null=True, blank=True)
    card_no = models.CharField(max_length=50, blank=True, null=True)
    driver_assigned = models.CharField(max_length=100, blank=True, null=True)
    pickup_date = models.DateField(null=True, blank=True)
    pickup_time = models.TimeField(null=True, blank=True)
    rent_type = models.CharField(max_length=100, blank=True, null=True)
    status = models.BooleanField(default=False, blank=True, null=True)

    def __str__(self):
        return str(self.id)


class WorkflowTemplate(models.Model):
    name = models.CharField(max_length=150, primary_key=True)
    role_concated = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return str(self.name)


class WorkflowTemplateLevels(models.Model):
    workflow_name = models.ForeignKey(
        WorkflowTemplate, on_delete=CASCADE, null=True)
    depend_on = models.CharField(max_length=100, null=True, blank=True)
    depend_id = models.CharField(max_length=100, null=True, blank=True)
    depend_role = models.CharField(max_length=100, null=True, blank=True)
    role_concated = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class RoomTransfer(models.Model):
    card_no = models.CharField(max_length=100, null=True, blank=True)
    room_no_to = models.CharField(max_length=100, null=True, blank=True)
    room_no_from = models.CharField(max_length=100, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.id)


class RoomTypeFlow(models.Model):
    room_type = models.ForeignKey(
        RoomType, on_delete=models.CASCADE, null=True, blank=True)
    proposedCost = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    proposedDiscount = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    activataionDate = models.DateField(null=True, blank=True)
    status = models.CharField(max_length=50, null=True, blank=True)
    template = models.ForeignKey(
        WorkflowTemplate, related_name='templates', on_delete=models.CASCADE, default=None)
    depends_id = models.IntegerField(null=True, blank=True)
    depends_on = models.CharField(max_length=10, null=True, blank=True)
    role_user_id = models.CharField(max_length=3, null=True, blank=True)
    status_role = models.CharField(max_length=10, null=True, blank=True)
    role_pos = models.CharField(max_length=50, null=True, blank=True)
    reject_reason = models.CharField(max_length=300, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class ResCus(models.Model):
    cus_id = models.CharField(max_length=15, primary_key=True)
    check_in_date = models.DateField(null=True)
    check_in_time = models.TimeField(null=True)
    check_out_date = models.DateField(null=True, blank=True)
    check_out_time = models.TimeField(null=True, blank=True)
    status = models.CharField(max_length=50, null=True)
    room_id = models.CharField(max_length=10, null=True)
    first_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=100, blank=True, null=True)
    res_id = models.CharField(max_length=100, null=True)
    is_primary_room = models.BooleanField(default=False)
    primary_room_no = models.CharField(max_length=100, null=True, blank=True)
    secondary_room = models.CharField(max_length=100, null=True, blank=True)

    class Meta:
        unique_together = ('cus_id', 'check_in_date', 'check_out_date')
        managed = False
        db_table = 'res_cus'


class RmRt(models.Model):
    room_no = models.CharField(max_length=10, primary_key=True)
    adults = models.IntegerField()
    child = models.IntegerField()
    floor = models.IntegerField()
    view = models.CharField(max_length=100)
    cost = models.DecimalField(max_digits=8, decimal_places=2)
    discount = models.DecimalField(max_digits=8, decimal_places=2)
    bed = models.CharField(max_length=50)
    type_name = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'rm_rt'


class StockJoint(models.Model):
    id = models.CharField(primary_key=True, max_length=255)
    room_no = models.CharField(max_length=100)
    item_name = models.CharField(max_length=100)
    item_used = models.CharField(max_length=100)
    item_bill = models.DecimalField(max_digits=8, decimal_places=2)
    defaultQuantity = models.CharField(max_length=100)
    date = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'stockjoint'


class ResCusCard(models.Model):
    card_no = models.IntegerField(primary_key=True)
    room_no = models.CharField(max_length=150, null=True, blank=True)
    checked_in = models.BooleanField(default=False)
    secondary_room = models.CharField(max_length=150, null=True, blank=True)
    status = models.CharField(max_length=50)
    gender = models.CharField(max_length=3, null=True, blank=True)
    first_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=100, blank=True, null=True)
    phone = models.CharField(max_length=100)
    check_in_date = models.DateField(null=True, blank=True)
    check_out_date = models.DateField(null=True, blank=True)
    No_days = models.IntegerField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'res_cus_card'
