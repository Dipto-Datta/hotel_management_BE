from rest_framework import serializers

from .models import *

class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = '__all__'


class RoomTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomType
        fields = '__all__'


class EmployeeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Employee
        fields = '__all__'


class LineTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LineType
        fields = '__all__'


class SupplierSerializer(serializers.ModelSerializer):
    class Meta:
        model = Supplier
        fields = '__all__'


class IssueItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = IssueItem
        fields = '__all__'


class StatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = Status
        fields = '__all__'


class ProductRawSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductRaw
        fields = '__all__'


class ProductDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductDetails
        fields = '__all__'


class ProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = Project
        fields = '__all__'


class BudgetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Budget
        fields = '__all__'


class RoomTypeFlowSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomTypeFlow
        fields = '__all__'


class RoomSerializer(serializers.ModelSerializer):
    class Meta:
        model = Room
        fields = '__all__'


class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = '__all__'


class CustomerPictureSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomerPicture
        fields = '__all__'


class ReservationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reservation
        fields = '__all__'


class CardNoSerializer(serializers.ModelSerializer):
    class Meta:
        model = CardNo
        fields = '__all__'


class ComplainSerializer(serializers.ModelSerializer):
    class Meta:
        model = Complain
        fields = '__all__'


class LostAndFoundSerializer(serializers.ModelSerializer):
    class Meta:
        model = LostAndFound
        fields = '__all__'


class InventoryTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = InventoryType
        fields = '__all__'


class ItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = Item
        fields = '__all__'


class StockTransactionSerializer(serializers.ModelSerializer):
    class Meta:
        model = StockTransaction
        fields = '__all__'


class DamageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Damage
        fields = '__all__'


class LaundrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Laundry
        fields = '__all__'


class LaundryCostSerializer(serializers.ModelSerializer):
    class Meta:
        model = LaundryCost
        fields = '__all__'


class MaintenanceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Maintenance
        fields = '__all__'


# class BellboySerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Bellboy
#         fields = '__all__'


class LuggageStorageSerializer(serializers.ModelSerializer):
    class Meta:
        model = LuggageStorage
        fields = '__all__'


class TableSerializer(serializers.ModelSerializer):
    class Meta:
        model = Table
        fields = '__all__'


class FoodCategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = FoodCategory
        fields = '__all__'


class FoodTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = FoodType
        fields = '__all__'


class FoodPictureSerializer(serializers.ModelSerializer):
    class Meta:
        model = FoodPicture
        fields = '__all__'


class FoodOrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = FoodOrder
        fields = '__all__'


class FoodPosOrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = FoodPosOrder
        fields = '__all__'


class ComplimentaryServiceSerializer(serializers.ModelSerializer):
    class Meta:
        model = ComplimentaryService
        fields = '__all__'


class BillsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Bills
        fields = '__all__'


class WorkflowTemplateSerializer(serializers.ModelSerializer):
    class Meta:
        model = WorkflowTemplate
        fields = '__all__'


class WorkflowTemplateLevelSerializer(serializers.ModelSerializer):
    class Meta:
        model = WorkflowTemplateLevels
        fields = '__all__'


class ResCusSerializer(serializers.ModelSerializer):
    class Meta:
        model = ResCus
        fields = '__all__'


class RmRtSerializer(serializers.ModelSerializer):
    class Meta:
        model = RmRt
        fields = '__all__'


class COASerializer(serializers.ModelSerializer):
    class Meta:
        model = COA
        fields = '__all__'


class CostCenterSerializer(serializers.ModelSerializer):
    class Meta:
        model = CostCenter
        fields = '__all__'


class GLMappingSerializer(serializers.ModelSerializer):
    class Meta:
        model = GLMapping
        fields = '__all__'


class TransactionTableSerializer(serializers.ModelSerializer):
    class Meta:
        model = TransactionTable
        fields = '__all__'


class StockJointSerializer(serializers.ModelSerializer):
    class Meta:
        model = StockJoint
        fields = '__all__'


class ConsiergeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Consierge
        fields = '__all__'


class ResCusCardSerializer(serializers.ModelSerializer):
    class Meta:
        model = ResCusCard
        fields = '__all__'


class RoomTransferSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomTransfer
        fields = '__all__'


class BillExtraSerializer(serializers.ModelSerializer):
    class Meta:
        model = BillExtra
        fields = '__all__'


class PuchaseOrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = PuchaseOrder
        fields = '__all__'


class RequestedItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = RequestedItem
        fields = '__all__'
