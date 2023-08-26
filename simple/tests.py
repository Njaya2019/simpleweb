from rest_framework.test import APIClient
import pytest


class TestIndexView():
    """."""

    def test_index(self):
        """."""
        client = APIClient()
        # Issue a GET request.
        response = client.get("/simple/")
        # Check that the response is 200 OK.
        assert response.status_code == 200

    def test_index_two(self):
        """."""
        client = APIClient()
        # Issue a GET request.
        response = client.get("/simple/")
        # Check that the response is 200 OK.
        assert response.status_code == 200
