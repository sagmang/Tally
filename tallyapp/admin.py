from django.contrib import admin
from .models import *
# Register your models here.
admin.site.register(Countries)
admin.site.register(States)
admin.site.register(Companies)
admin.site.register(Group)
admin.site.register(Features)
admin.site.register(Costcentre)
admin.site.register(Currency)
admin.site.register(Voucher)
admin.site.register(Ledger)
admin.site.register(Ledger_Mailing_Details)
admin.site.register(Ledger_Banking_Details)
admin.site.register(Ledger_Asset_Rounding)
admin.site.register(Ledger_Asset_Statutory)