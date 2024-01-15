from django.urls import path, include

from rest_framework.routers import DefaultRouter


from .views import *
from . import views as sd

router = DefaultRouter()

router.register('room_type', RoomTypeViewSet)
router.register('room', RoomViewSet)
router.register('customer', CustomerViewSet)
router.register('complain', ComplainViewSet)
router.register('reservation', ReservationViewSet)
router.register('reservation_second', ReservationSecondViewSet)
router.register('Lost_found', LostAndFoundViewSet)
router.register('inventory_view', InventoryTypeViewSet)
router.register('item', ItemViewSet)
router.register('stock', StockTransactionViewSet)
router.register('damage', DamageViewSet)
router.register('laundry', LaundryViewSet)
router.register('maintenance', MaintenanceViewSet)
# router.register('bellboy', BellboyViewSet)
router.register('luggage_store', LuggageStorageViewSet)
router.register('table', TableViewSet)
router.register('food_cat', FoodCategoryViewSet)
router.register('food_type', FoodTypeViewSet)
router.register('food_pic', FoodPictureViewSet)
router.register('food', FoodOrderViewSet)
router.register('food_pos', FoodPosOrderViewSet)
router.register('complimentary', ComplimentaryServiceViewSet)
router.register('bills', BillsViewSet)
router.register('bills_extra', BillExtraViewSet)
router.register('res_cus', ResCusViewSet)
router.register('res_cus_status', ResCusViewSetStatus)
router.register('rmrt', RmRtViewSet)
router.register('card', CardNoViewSet)
router.register('consierge', ConsiergeViewSet)
router.register('cuspic', CustomerPictureViewSet)
router.register('room_type_flow', RoomTypeFlowViewSet)
router.register('laundry_cost', LaundryCostViewSet)
router.register('room_t', RoomTransferSet)
router.register('issue_item', IssueItemViewSetII)
router.register('issue_item_r', IssueItemViewSetIR)
router.register('issue_item_true', IssueItemViewSetTrue)

router.register('coa', COAViewSet)
router.register('gl_mapping', GLMappingViewSet)
router.register('cost_center', CostCenterViewSet)
router.register('Transaction_table', TransactionTableViewSet)
router.register('Transaction_table2', TransactionTableViewSet2)
router.register('Transaction_table3', TransactionTableViewSet3)
router.register('workflow_template', WorkflowTemplateViewSet)
router.register('workflow_template_levels', WorkflowTemplateLevelsViewSet)
router.register('stockjoint', StockJointViewSet)
router.register('user_profile', UserProfileViewSet)
router.register('res_cus_card', ResCusCardViewSet)
router.register('res_cus_card_r1', GuestReportViewSet)
router.register('res_cus_card_r2', ReservationReportViewSet)
router.register('budget', BudgetViewSet)
router.register('status', StatusViewSet)
router.register('project', ProjectViewSet)
router.register('pruchase', PuchaseOrderTableViewSet)
router.register('requested_item', RequestedItemViewSet)
router.register('line_type', LineTypeViewSet)
router.register('employee', EmployeeViewSet)
router.register('supplier', SupplierViewSet)
router.register('prod_raw', ProductRawViewSet)
router.register('prod_det', ProductDetailsViewSet)


urlpatterns = [
    path('', include(router.urls)),
    path('lastcustomerinfo/', LastCustomerInfoViewSet.as_view()),
    path('lastres/', LastReservationViewSet.as_view()),
    path('lastcard/', LastCardViewSet.as_view()),
    path('last_laundry/', LastLaundryViewSet.as_view()),
    path('last_food/', LastFoodOrderViewSet.as_view()),
    path('food_c/', FoodTypeView.as_view()),
]
