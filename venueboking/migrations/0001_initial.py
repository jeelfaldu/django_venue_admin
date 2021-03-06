# Generated by Django 3.1.1 on 2020-10-04 09:53

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cateringes',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('service', models.CharField(max_length=255)),
                ('catering_type', models.CharField(max_length=255)),
                ('price', models.IntegerField()),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cateringes',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Decorations',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('decoration_type', models.CharField(max_length=255)),
                ('price', models.IntegerField()),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'decorations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Feedbacks',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('feedback_details', models.CharField(max_length=255)),
                ('feedback_date', models.IntegerField()),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'feedbacks',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Migrations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('migration', models.CharField(max_length=255)),
                ('batch', models.IntegerField()),
            ],
            options={
                'db_table': 'migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Packages',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('package_details', models.CharField(max_length=255)),
                ('cost', models.IntegerField()),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'packages',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PasswordResets',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.CharField(max_length=255)),
                ('token', models.CharField(max_length=255)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'password_resets',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Payments',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('total_amount', models.IntegerField()),
                ('amount_paid', models.IntegerField()),
                ('status', models.CharField(max_length=255)),
                ('date', models.DateTimeField()),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'payments',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Users',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255, unique=True)),
                ('email_verified_at', models.DateTimeField(blank=True, null=True)),
                ('password', models.CharField(max_length=255)),
                ('is_admin', models.IntegerField(blank=True, null=True)),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'users',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Venues',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('venue_name', models.CharField(max_length=255)),
                ('address', models.TextField()),
                ('price', models.CharField(max_length=11)),
                ('capacity_of_people', models.IntegerField()),
                ('remember_token', models.CharField(blank=True, max_length=100, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'venues',
                'managed': False,
            },
        ),
    ]
