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

        print(">>> Page source at load:\n", self.driver.page_source[:1000])  # optional: crop for logs

        try:
            WebDriverWait(self.driver, 20).until(
                EC.element_to_be_clickable((By.LINK_TEXT, "Go to Dashboard"))
            ).click()
        except Exception as e:
            print(">>> Failed to find or click 'Go to Dashboard'")
            print(self.driver.page_source)
            raise e

        assert "Dashboard" in self.driver.title or "dashboard" in self.driver.current_url.lower()
