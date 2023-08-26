from rest_framework.views import APIView
from rest_framework.response import Response


# Create your views here.


class IndexView(APIView):
    """."""

    def get(self, request):
        resp_str = f"This is a docker DJANGO application with volumes port 4000 awesome"
        return Response(data=resp_str, status=200)
