from django import views
from django.shortcuts import render
from rest_framework.response import Response
from rest_framework import viewsets, filters
from .models import *
from .serializers import *
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.pagination import PageNumberPagination
from rest_framework.permissions import IsAuthenticated
from rest_framework.parsers import FormParser, MultiPartParser
from rest_framework.decorators import api_view
from rest_framework.request import Request
from urllib import response
from rest_framework.views import APIView


# Create your views here.


url_varr = 'http://localhost:8000'


class UserProfileViewSet(viewsets.ModelViewSet):
    serializer_class = UserProfileSerializer
    queryset = UserProfile.objects.all()
    filterset_fields = ['user']


class RoomViewSet(viewsets.ModelViewSet):
    serializer_class = RoomSerializer
    queryset = Room.objects.all()


class RoomTypeViewSet(viewsets.ModelViewSet):
    serializer_class = RoomTypeSerializer
    queryset = RoomType.objects.all()
    filterset_fields = ['type_name']


class RoomTypeFlowViewSet(viewsets.ModelViewSet):
    serializer_class = RoomTypeFlowSerializer
    queryset = RoomTypeFlow.objects.all()


class CustomerViewSet(viewsets.ModelViewSet):
    serializer_class = CustomerSerializer
    queryset = Customer.objects.all()
    filterset_fields = ['phone']


class CustomerPictureViewSet(viewsets.ModelViewSet):
    serializer_class = CustomerPictureSerializer
    queryset = CustomerPicture.objects.all()
    parser_class = [FormParser, MultiPartParser]
    filterset_fields = ['cust_id']


class ReservationViewSet(viewsets.ModelViewSet):
    serializer_class = ReservationSerializer
    queryset = Reservation.objects.all()
    filterset_fields = ['room', 'primary_room_no', 'status', 'bill_cleared']


class ReservationSecondViewSet(viewsets.ModelViewSet):
    serializer_class = ReservationSerializer
    queryset = Reservation.objects.all()
    filter_backends = [filters.SearchFilter]
    search_fields = ['secondary_room']


class CardNoViewSet(viewsets.ModelViewSet):
    serializer_class = CardNoSerializer
    queryset = CardNo.objects.all()
    filterset_fields = ['rev_id', 'checked_in']


class ComplainViewSet(viewsets.ModelViewSet):
    serializer_class = ComplainSerializer
    queryset = Complain.objects.all()


class LostAndFoundViewSet(viewsets.ModelViewSet):
    serializer_class = LostAndFoundSerializer
    queryset = LostAndFound.objects.all()


class InventoryTypeViewSet(viewsets.ModelViewSet):
    serializer_class = InventoryTypeSerializer
    queryset = InventoryType.objects.all()


class ItemViewSet(viewsets.ModelViewSet):
    serializer_class = ItemSerializer
    queryset = Item.objects.all()
    filterset_fields = ['item_type']


class StockTransactionViewSet(viewsets.ModelViewSet):
    serializer_class = StockTransactionSerializer
    queryset = StockTransaction.objects.all()


class DamageViewSet(viewsets.ModelViewSet):
    serializer_class = DamageSerializer
    queryset = Damage.objects.all()


class LaundryViewSet(viewsets.ModelViewSet):
    serializer_class = LaundrySerializer
    queryset = Laundry.objects.all()


class LaundryCostViewSet(viewsets.ModelViewSet):
    serializer_class = LaundryCostSerializer
    queryset = LaundryCost.objects.all()


class LastLaundryViewSet(APIView):
    def get(self, request):
        queryset = Laundry.objects.last()
        serializer = LaundrySerializer(queryset)

        return Response(serializer.data)


class MaintenanceViewSet(viewsets.ModelViewSet):
    serializer_class = MaintenanceSerializer
    queryset = Maintenance.objects.all()


# class BellboyViewSet(viewsets.ModelViewSet):
#     serializer_class = BellboySerializer
#     queryset = Bellboy.objects.all()


class LuggageStorageViewSet(viewsets.ModelViewSet):
    serializer_class = LuggageStorageSerializer
    queryset = LuggageStorage.objects.all()


class TableViewSet(viewsets.ModelViewSet):
    serializer_class = TableSerializer
    queryset = Table.objects.all()
    filterset_fields = ['status']


class FoodCategoryViewSet(viewsets.ModelViewSet):
    serializer_class = FoodCategorySerializer
    queryset = FoodCategory.objects.all()


class FoodTypeViewSet(viewsets.ModelViewSet):
    serializer_class = FoodTypeSerializer
    queryset = FoodType.objects.all()


class FoodPictureViewSet(viewsets.ModelViewSet):
    serializer_class = FoodPictureSerializer
    queryset = FoodPicture.objects.all()


class FoodOrderViewSet(viewsets.ModelViewSet):
    serializer_class = FoodOrderSerializer
    queryset = FoodOrder.objects.order_by('-id')


class FoodPosOrderViewSet(viewsets.ModelViewSet):
    serializer_class = FoodPosOrderSerializer
    queryset = FoodPosOrder.objects.order_by('-id')
    filterset_fields = ['status']


class ComplimentaryServiceViewSet(viewsets.ModelViewSet):
    serializer_class = ComplimentaryServiceSerializer
    queryset = ComplimentaryService.objects.all()


class BillsViewSet(viewsets.ModelViewSet):
    serializer_class = BillsSerializer
    queryset = Bills.objects.all()
    filterset_fields = ['card_no', 'bill_item']


class COAViewSet(viewsets.ModelViewSet):
    serializer_class = COASerializer
    queryset = COA.objects.all()


class GLMappingViewSet(viewsets.ModelViewSet):
    serializer_class = GLMappingSerializer
    queryset = GLMapping.objects.all()


class CostCenterViewSet(viewsets.ModelViewSet):
    serializer_class = CostCenterSerializer
    queryset = CostCenter.objects.all()


class TransactionTableViewSetPagination(PageNumberPagination):
    page_size = 12


class TransactionTableViewSet(viewsets.ModelViewSet):
    serializer_class = TransactionTableSerializer
    queryset = TransactionTable.objects.filter(
        vat_ledger=False).order_by('-id')
    pagination_class = TransactionTableViewSetPagination


class TransactionTableViewSet3(viewsets.ModelViewSet):
    serializer_class = TransactionTableSerializer
    queryset = TransactionTable.objects.filter(vat_ledger=True).order_by('-id')
    pagination_class = TransactionTableViewSetPagination


class TransactionTableViewSet2(viewsets.ModelViewSet):
    serializer_class = TransactionTableSerializer
    queryset = TransactionTable.objects.all()


class ResCusPagination(PageNumberPagination):
    page_size = 10


class ResCusViewSet(viewsets.ModelViewSet):
    pagination_class = ResCusPagination
    serializer_class = ResCusSerializer
    queryset = ResCus.objects.order_by('-res_id')
    filterset_fields = ['status']
    filter_backends = [filters.SearchFilter]
    search_fields = ['last_name', 'check_in_date']


class ResCusViewSetStatus(viewsets.ModelViewSet):
    pagination_class = ResCusPagination
    serializer_class = ResCusSerializer
    queryset = ResCus.objects.order_by('-res_id')
    filterset_fields = ['status']


class RmRtViewSet(viewsets.ModelViewSet):
    serializer_class = RmRtSerializer
    queryset = RmRt.objects.all()


class RoomTransferSet(viewsets.ModelViewSet):
    serializer_class = RoomTransferSerializer
    queryset = RoomTransfer.objects.all()


class LastCustomerInfoViewSet(APIView):
    def get(self, request):
        queryset = Customer.objects.last()
        serializer = CustomerSerializer(queryset)

        return Response(serializer.data)


class LastReservationViewSet(APIView):
    def get(self, request):
        queryset = Reservation.objects.last()
        serializer = ReservationSerializer(queryset)

        return Response(serializer.data)


class LastCardViewSet(APIView):
    def get(self, request):
        queryset = CardNo.objects.last()
        serializer = CardNoSerializer(queryset)

        return Response(serializer.data)


class StockJointViewSet(viewsets.ModelViewSet):
    serializer_class = StockJointSerializer
    queryset = StockJoint.objects.all()


class LastFoodOrderViewSet(APIView):
    def get(self, request):
        queryset = FoodOrder.objects.last()
        serializer = FoodOrderSerializer(queryset)

        return Response(serializer.data)


class ConsiergeViewSet(viewsets.ModelViewSet):
    serializer_class = ConsiergeSerializer
    queryset = Consierge.objects.all()


class BillExtraViewSet(viewsets.ModelViewSet):
    serializer_class = BillExtraSerializer
    queryset = BillExtra.objects.all()


class WorkflowTemplateViewSet(viewsets.ModelViewSet):
    serializer_class = WorkflowTemplateSerializer
    queryset = WorkflowTemplate.objects.all()


class WorkflowTemplateLevelsViewSet(viewsets.ModelViewSet):
    serializer_class = WorkflowTemplateLevelSerializer
    queryset = WorkflowTemplateLevels.objects.all()
    filterset_fields = ['workflow_name', 'depend_role']


class ResCusCardPagination(PageNumberPagination):
    page_size = 10


class ResCusCardViewSet(viewsets.ModelViewSet):
    serializer_class = ResCusCardSerializer
    queryset = ResCusCard.objects.all()


class GuestReportViewSet(viewsets.ModelViewSet):
    serializer_class = ResCusCardSerializer
    varr = 'Checked In'
    queryset = ResCusCard.objects.filter(status=varr).order_by('-card_no')


class ReservationReportViewSet(viewsets.ModelViewSet):
    serializer_class = ResCusCardSerializer
    varr = 'reserved'
    queryset = ResCusCard.objects.filter(status=varr).order_by('-card_no')


class StatusViewSet(viewsets.ModelViewSet):
    serializer_class = StatusSerializer
    queryset = Status.objects.all()
    filterset_fields = ['orderType', 'statusCode', 'statusName']


class BudgetViewSet(viewsets.ModelViewSet):
    serializer_class = BudgetSerializer
    queryset = Budget.objects.all()


class ProjectViewSet(viewsets.ModelViewSet):
    serializer_class = ProjectSerializer
    queryset = Project.objects.all()


class PuchaseOrderTableViewSet(viewsets.ModelViewSet):
    serializer_class = PuchaseOrderSerializer
    queryset = PuchaseOrder.objects.all()
    filterset_fields = ['status']


class RequestedItemViewSet(viewsets.ModelViewSet):
    serializer_class = RequestedItemSerializer
    queryset = RequestedItem.objects.all()
    filterset_fields = ['orderId', 'status', 'item']


class EmployeeViewSet(viewsets.ModelViewSet):
    serializer_class = EmployeeSerializer
    queryset = Employee.objects.all()


class SupplierViewSet(viewsets.ModelViewSet):
    serializer_class = SupplierSerializer
    queryset = Supplier.objects.all()


class LineTypeViewSet(viewsets.ModelViewSet):
    serializer_class = LineTypeSerializer
    queryset = LineType.objects.all()


class ProductRawViewSet(viewsets.ModelViewSet):
    serializer_class = ProductRawSerializer
    queryset = ProductRaw.objects.all()
    filterset_fields = ['item', 'item_type']


class ProductDetailsViewSet(viewsets.ModelViewSet):
    serializer_class = ProductDetailsSerializer
    queryset = ProductDetails.objects.all()
    filterset_fields = ['prod', 'project']


class IssueItemViewSetTrue(viewsets.ModelViewSet):
    serializer_class = IssueItemSerializer
    queryset = IssueItem.objects.filter(ledger=True)
    filterset_fields = ['itemMaster', 'project']


class IssueItemViewSetII(viewsets.ModelViewSet):
    serializer_class = IssueItemSerializer
    queryset = IssueItem.objects.filter(orderType='II')
    filterset_fields = ['itemMaster', 'project']


class IssueItemViewSetIR(viewsets.ModelViewSet):
    serializer_class = IssueItemSerializer
    queryset = IssueItem.objects.filter(orderType='IR')
    filterset_fields = ['itemMaster', 'project']


class FoodTypeView(APIView):
    def post(self, request):
        if request.data:
            food_category_id = request.data.get('a')
        food_types = FoodType.objects.filter(food=food_category_id)
        food_type_data = []
        for food_type in food_types:
            try:
                food_picture = FoodPicture.objects.filter(
                    food=food_type).first().pic.url
            except:
                food_picture = None
            food_type_data.append({
                'id': food_type.id,
                'name': food_type.name,
                'cost': food_type.cost,
                'pic': url_varr + food_picture
            })
        return Response(food_type_data)
