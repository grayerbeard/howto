import yaml
import os

class DockerEnvironmentSetup:
    def __init__(self, config_file):
        self.config = self.load_config(config_file)

    def load_config(self, config_file):
        with open(config_file, 'r') as file:
            return yaml.safe_load(file)

    def setup_environment(self):
        # Creating data and config directories
        os.makedirs(self.config['paths']['data_directory'], exist_ok=True)
        os.makedirs(self.config['paths']['config_directory'], exist_ok=True)
        print(f"Directories created: {self.config['paths']['data_directory']} and {self.config['paths']['config_directory']}")

    def run(self):
        self.setup_environment()

if __name__ == '__main__':
    setup = DockerEnvironmentSetup("docker_config.yaml")
    setup.run()
