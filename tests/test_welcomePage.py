from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pytest

class TestWelcomePage:
    @pytest.fixture(autouse=True)
    def setup_and_teardown(self):
        options = Options()
        options.add_argument("--headless")
        options.add_argument("--no-sandbox")
        options.add_argument("--disable-dev-shm-usage")
        self.driver = webdriver.Chrome(options=options)
        self.driver.set_window_size(1670, 989)
        yield
        self.driver.quit()

    def test_welcome_page_navigation(self):
        self.driver.get("http://localhost:8080/")

        # Wait until the "Go to Dashboard" link is present
        WebDriverWait(self.driver, 10).until(
            EC.presence_of_element_located((By.LINK_TEXT, "Go to Dashboard"))
        ).click()

        assert "Dashboard" in self.driver.title or "dashboard" in self.driver.current_url.lower()
