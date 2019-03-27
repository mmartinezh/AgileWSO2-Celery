# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

# set variables



# install utility software
echo "Update system..."
sudo apt-get update
clear
echo "Installing Python 3.7"
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev
sudo wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
sudo tar xzf Python-3.7.2.tgz
cd Python-3.7.2
sudo ./configure --enable-optimizations
sudo make altinstall
echo "Installing Celery"
sudo apt install -y python3-pip
sudo pip3 install celery
clear
echo "Manage Python versions"
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.7 2
clear
echo "Install RabbitMQ"
wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc
sudo apt install -y rabbitmq-server
echo "Activating RabbitMQ"
sudo rabbitmq-plugins enable rabbitmq_management
echo "Successfully installed software utilities."


