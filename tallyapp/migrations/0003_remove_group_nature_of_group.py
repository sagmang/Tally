# Generated by Django 3.2.13 on 2022-07-06 11:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tallyapp', '0002_companies_costcentre_currency_features_group_voucher'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='group',
            name='nature_of_group',
        ),
    ]