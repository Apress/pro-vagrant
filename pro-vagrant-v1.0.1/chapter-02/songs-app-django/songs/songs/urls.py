from django.conf.urls import patterns, include, url

from songs.views import baa
from songs.views import sixpence
from songs.views import hush

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', baa, name='baa-url'),
    url(r'^sixpence\.html$', sixpence, name='sixpence-url'),
    url(r'^hush\.html$', hush, name='hush-url'),
)
