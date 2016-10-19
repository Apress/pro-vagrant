from django.http import HttpResponse

from django.template.loader import get_template

from django.template import Context

def baa(request):
    t = get_template('baa.html')
    html = t.render(Context())
    return HttpResponse(html)

def sixpence(request):
    t = get_template('sixpence.html')
    html = t.render(Context())
    return HttpResponse(html)

def hush(request):
    t = get_template('hush.html')
    html = t.render(Context())
    return HttpResponse(html)
