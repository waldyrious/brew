# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca sync

# typed: true

class HTTP::CookieJar
  include(::Mechanize::CookieDeprecated)
  include(::Mechanize::CookieJarIMethods)
  include(::Enumerable)

  def initialize(options = _); end

  def <<(cookie); end
  def cleanup(session = _); end
  def clear; end
  def cookies(url = _); end
  def delete(cookie); end
  def each(uri = _, &block); end
  def empty?(url = _); end
  def load(readable, *options); end
  def parse(set_cookie, origin, options = _); end
  def save(writable, *options); end
  def store; end

  private

  def get_impl(base, value, *args); end
  def initialize_copy(other); end

  def self.const_missing(name); end
end

class Mechanize
  def initialize(connection_name = _); end

  def add_auth(uri, user, password, realm = _, domain = _); end
  def agent; end
  def auth(user, password, domain = _); end
  def back; end
  def basic_auth(user, password, domain = _); end
  def ca_file; end
  def ca_file=(ca_file); end
  def cert; end
  def cert=(cert); end
  def cert_store; end
  def cert_store=(cert_store); end
  def certificate; end
  def click(link); end
  def conditional_requests; end
  def conditional_requests=(enabled); end
  def content_encoding_hooks; end
  def cookie_jar; end
  def cookie_jar=(cookie_jar); end
  def cookies; end
  def current_page; end
  def default_encoding; end
  def default_encoding=(_); end
  def delete(uri, query_params = _, headers = _); end
  def download(uri, io_or_filename, parameters = _, referer = _, headers = _); end
  def follow_meta_refresh; end
  def follow_meta_refresh=(follow); end
  def follow_meta_refresh_self; end
  def follow_meta_refresh_self=(follow); end
  def follow_redirect=(follow); end
  def follow_redirect?; end
  def force_default_encoding; end
  def force_default_encoding=(_); end
  def get(uri, parameters = _, referer = _, headers = _); end
  def get_file(url); end
  def gzip_enabled; end
  def gzip_enabled=(enabled); end
  def head(uri, query_params = _, headers = _); end
  def history; end
  def history_added; end
  def history_added=(_); end
  def html_parser; end
  def html_parser=(_); end
  def idle_timeout; end
  def idle_timeout=(idle_timeout); end
  def ignore_bad_chunking; end
  def ignore_bad_chunking=(ignore_bad_chunking); end
  def keep_alive; end
  def keep_alive=(enable); end
  def keep_alive_time; end
  def keep_alive_time=(_); end
  def key; end
  def key=(key); end
  def log; end
  def log=(logger); end
  def max_file_buffer; end
  def max_file_buffer=(bytes); end
  def max_history; end
  def max_history=(length); end
  def open_timeout; end
  def open_timeout=(open_timeout); end
  def page; end
  def parse(uri, response, body); end
  def pass; end
  def pass=(pass); end
  def pluggable_parser; end
  def post(uri, query = _, headers = _); end
  def post_connect_hooks; end
  def pre_connect_hooks; end
  def pretty_print(q); end
  def proxy_addr; end
  def proxy_pass; end
  def proxy_port; end
  def proxy_user; end
  def put(uri, entity, headers = _); end
  def read_timeout; end
  def read_timeout=(read_timeout); end
  def redirect_ok; end
  def redirect_ok=(follow); end
  def redirection_limit; end
  def redirection_limit=(limit); end
  def request_headers; end
  def request_headers=(request_headers); end
  def request_with_entity(verb, uri, entity, headers = _); end
  def reset; end
  def resolve(link); end
  def retry_change_requests; end
  def retry_change_requests=(retry_change_requests); end
  def robots; end
  def robots=(enabled); end
  def scheme_handlers; end
  def scheme_handlers=(scheme_handlers); end
  def set_proxy(address, port, user = _, password = _); end
  def shutdown; end
  def ssl_version; end
  def ssl_version=(ssl_version); end
  def submit(form, button = _, headers = _); end
  def transact; end
  def user_agent; end
  def user_agent=(user_agent); end
  def user_agent_alias=(name); end
  def verify_callback; end
  def verify_callback=(verify_callback); end
  def verify_mode; end
  def verify_mode=(verify_mode); end
  def visited?(url); end
  def visited_page(url); end
  def watch_for_set; end
  def watch_for_set=(_); end

  private

  def add_to_history(page); end
  def post_form(uri, form, headers = _); end

  def self.html_parser; end
  def self.html_parser=(_); end
  def self.inherited(child); end
  def self.log; end
  def self.log=(_); end
  def self.start; end
end

Mechanize::AGENT_ALIASES = T.let(T.unsafe(nil), Hash)

class Mechanize::ChunkedTerminationError < ::Mechanize::ResponseReadError
end

class Mechanize::ContentTypeError < ::Mechanize::Error
  def initialize(content_type); end

  def content_type; end
end

Mechanize::Cookie = HTTP::Cookie

module Mechanize::CookieCMethods
  include(::Mechanize::CookieDeprecated)

  def parse(arg1, arg2, arg3 = _, &block); end
end

module Mechanize::CookieDeprecated

  private

  def __deprecated__(to = _); end
end

module Mechanize::CookieIMethods
  include(::Mechanize::CookieDeprecated)

  def set_domain(domain); end
end

class Mechanize::CookieJar < ::HTTP::CookieJar
  def load(input, *options); end
  def save(output, *options); end
end

module Mechanize::CookieJarIMethods
  include(::Mechanize::CookieDeprecated)

  def add(arg1, arg2 = _); end
  def add!(cookie); end
  def clear!; end
  def dump_cookiestxt(io); end
  def jar; end
  def load_cookiestxt(io); end
  def save_as(filename, *options); end
end

class Mechanize::DirectorySaver < ::Mechanize::Download
  def initialize(uri = _, response = _, body_io = _, code = _); end

  def self.decode_filename?; end
  def self.directory; end
  def self.overwrite?; end
  def self.save_to(directory, options = _); end
end

class Mechanize::Download
  include(::Mechanize::Parser)

  def initialize(uri = _, response = _, body_io = _, code = _); end

  def body; end
  def body_io; end
  def content; end
  def filename; end
  def filename=(_); end
  def save(filename = _); end
  def save!(filename = _); end
  def save_as(filename = _); end
end

module Mechanize::ElementMatcher
  def elements_with(singular, plural = _); end
end

class Mechanize::ElementNotFoundError < ::Mechanize::Error
  def initialize(source, element, conditions); end

  def conditions; end
  def element; end
  def source; end
end

class Mechanize::Error < ::RuntimeError
end

class Mechanize::File
  include(::Mechanize::Parser)

  def initialize(uri = _, response = _, body = _, code = _); end

  def body; end
  def body=(_); end
  def content; end
  def filename; end
  def filename=(_); end
  def save(filename = _); end
  def save!(filename = _); end
  def save_as(filename = _); end
end

class Mechanize::FileConnection
  def request(uri, request); end

  def self.new(*a); end
end

class Mechanize::FileRequest
  def initialize(uri); end

  def []=(*a); end
  def add_field(*a); end
  def each_header; end
  def path; end
  def response_body_permitted?; end
  def uri; end
  def uri=(_); end
end

class Mechanize::FileResponse
  def initialize(file_path); end

  def [](key); end
  def code; end
  def content_length; end
  def each; end
  def each_header; end
  def get_fields(key); end
  def http_version; end
  def message; end
  def read_body; end
  def uri; end

  private

  def dir_body; end
  def directory?; end
end

class Mechanize::FileSaver < ::Mechanize::Download
  def initialize(uri = _, response = _, body_io = _, code = _); end

  def filename; end
  def save_as(filename = _); end
end

class Mechanize::Form
  extend(::Forwardable)
  extend(::Mechanize::ElementMatcher)

  def initialize(node, mech = _, page = _); end

  def [](field_name); end
  def []=(field_name, value); end
  def action; end
  def action=(_); end
  def add_button_to_query(button); end
  def add_field!(field_name, value = _); end
  def at(*args, &block); end
  def at_css(*args, &block); end
  def at_xpath(*args, &block); end
  def build_query(buttons = _); end
  def button(criteria = _); end
  def button_with(criteria = _); end
  def button_with!(criteria = _); end
  def buttons; end
  def buttons_with(criteria = _); end
  def checkbox(criteria = _); end
  def checkbox_with(criteria = _); end
  def checkbox_with!(criteria = _); end
  def checkboxes; end
  def checkboxes_with(criteria = _); end
  def click_button(button = _); end
  def css(*args, &block); end
  def delete_field!(field_name); end
  def dom_class; end
  def dom_id; end
  def elements; end
  def encoding; end
  def encoding=(_); end
  def enctype; end
  def enctype=(_); end
  def field(criteria = _); end
  def field_with(criteria = _); end
  def field_with!(criteria = _); end
  def fields; end
  def fields_with(criteria = _); end
  def file_upload(criteria = _); end
  def file_upload_with(criteria = _); end
  def file_upload_with!(criteria = _); end
  def file_uploads; end
  def file_uploads_with(criteria = _); end
  def form_node; end
  def has_field?(field_name); end
  def has_key?(field_name); end
  def has_value?(value); end
  def hidden_field?(field_name); end
  def hiddens; end
  def ignore_encoding_error; end
  def ignore_encoding_error=(_); end
  def inspect; end
  def keygens; end
  def keys; end
  def method; end
  def method=(_); end
  def method_missing(meth, *args); end
  def name; end
  def name=(_); end
  def node; end
  def page; end
  def pretty_print(q); end
  def radiobutton(criteria = _); end
  def radiobutton_with(criteria = _); end
  def radiobutton_with!(criteria = _); end
  def radiobuttons; end
  def radiobuttons_with(criteria = _); end
  def request_data; end
  def reset; end
  def reset_button?(button_name); end
  def resets; end
  def save_hash_field_order; end
  def search(*args, &block); end
  def select_buttons(selector, method = _); end
  def select_checkboxes(selector, method = _); end
  def select_fields(selector, method = _); end
  def select_file_uploads(selector, method = _); end
  def select_radiobuttons(selector, method = _); end
  def set_fields(fields = _); end
  def submit(button = _, headers = _); end
  def submit_button?(button_name); end
  def submits; end
  def text_field?(field_name); end
  def textarea_field?(field_name); end
  def textareas; end
  def texts; end
  def values; end
  def xpath(*args, &block); end

  private

  def file_to_multipart(file, buf = _); end
  def from_native_charset(str); end
  def mime_value_quote(str); end
  def param_to_multipart(name, value, buf = _); end
  def parse; end
  def proc_query(field); end
  def rand_string(len = _); end
end

class Mechanize::Form::Button < ::Mechanize::Form::Field
end

Mechanize::Form::CRLF = T.let(T.unsafe(nil), String)

class Mechanize::Form::CheckBox < ::Mechanize::Form::RadioButton
  def inspect; end
  def query_value; end
end

class Mechanize::Form::Field
  extend(::Forwardable)

  def initialize(node, value = _); end

  def <=>(other); end
  def at(*args, &block); end
  def at_css(*args, &block); end
  def at_xpath(*args, &block); end
  def css(*args, &block); end
  def dom_class; end
  def dom_id; end
  def index; end
  def index=(_); end
  def inspect; end
  def name; end
  def name=(_); end
  def node; end
  def node=(_); end
  def query_value; end
  def raw_value; end
  def search(*args, &block); end
  def type; end
  def type=(_); end
  def value; end
  def value=(_); end
  def xpath(*args, &block); end
end

class Mechanize::Form::FileUpload < ::Mechanize::Form::Field
  def initialize(node, file_name); end

  def file_data; end
  def file_data=(_); end
  def file_name; end
  def file_name=(_); end
  def mime_type; end
  def mime_type=(_); end
end

class Mechanize::Form::Hidden < ::Mechanize::Form::Field
end

class Mechanize::Form::ImageButton < ::Mechanize::Form::Button
  def initialize(*args); end

  def query_value; end
  def x; end
  def x=(_); end
  def y; end
  def y=(_); end
end

class Mechanize::Form::Keygen < ::Mechanize::Form::Field
  def initialize(node, value = _); end

  def challenge; end
  def generate_key(key_size = _); end
  def key; end
end

class Mechanize::Form::MultiSelectList < ::Mechanize::Form::Field
  extend(::Mechanize::ElementMatcher)

  def initialize(node); end

  def option(criteria = _); end
  def option_with(criteria = _); end
  def option_with!(criteria = _); end
  def options; end
  def options=(_); end
  def options_with(criteria = _); end
  def query_value; end
  def select_all; end
  def select_none; end
  def select_options(selector, method = _); end
  def selected_options; end
  def value; end
  def value=(values); end
end

class Mechanize::Form::Option
  def initialize(node, select_list); end

  def click; end
  def node; end
  def select; end
  def select_list; end
  def selected; end
  def selected?; end
  def text; end
  def tick; end
  def to_s; end
  def unselect; end
  def untick; end
  def value; end

  private

  def unselect_peers; end
end

class Mechanize::Form::RadioButton < ::Mechanize::Form::Field
  def initialize(node, form); end

  def ==(other); end
  def [](key); end
  def check; end
  def checked; end
  def checked=(_); end
  def checked?; end
  def click; end
  def eql?(other); end
  def form; end
  def hash; end
  def label; end
  def pretty_print_instance_variables; end
  def text; end
  def uncheck; end

  private

  def uncheck_peers; end
end

class Mechanize::Form::Reset < ::Mechanize::Form::Button
end

class Mechanize::Form::SelectList < ::Mechanize::Form::MultiSelectList
  def initialize(node); end

  def query_value; end
  def value; end
  def value=(new_value); end
end

class Mechanize::Form::Submit < ::Mechanize::Form::Button
end

class Mechanize::Form::Text < ::Mechanize::Form::Field
end

class Mechanize::Form::Textarea < ::Mechanize::Form::Field
end

class Mechanize::HTTP
end

class Mechanize::HTTP::Agent
  def initialize(connection_name = _); end

  def add_auth(uri, user, password, realm = _, domain = _); end
  def add_default_auth(user, password, domain = _); end
  def allowed_error_codes; end
  def allowed_error_codes=(_); end
  def auth_store; end
  def authenticate_methods; end
  def auto_io(name, read_size, input_io); end
  def back; end
  def ca_file; end
  def ca_file=(ca_file); end
  def cert_store; end
  def cert_store=(cert_store); end
  def certificate; end
  def certificate=(certificate); end
  def conditional_requests; end
  def conditional_requests=(_); end
  def connection_for(uri); end
  def content_encoding_gunzip(body_io); end
  def content_encoding_hooks; end
  def content_encoding_inflate(body_io); end
  def context; end
  def context=(_); end
  def cookie_jar; end
  def cookie_jar=(_); end
  def current_page; end
  def digest_challenges; end
  def disable_keep_alive(request); end
  def enable_gzip(request); end
  def fetch(uri, method = _, headers = _, params = _, referer = _, redirects = _); end
  def follow_meta_refresh; end
  def follow_meta_refresh=(_); end
  def follow_meta_refresh_self; end
  def follow_meta_refresh_self=(_); end
  def get_meta_refresh(response, uri, page); end
  def get_robots(uri); end
  def gzip_enabled; end
  def gzip_enabled=(_); end
  def history; end
  def history=(_); end
  def hook_content_encoding(response, uri, response_body_io); end
  def http; end
  def http_request(uri, method, params = _); end
  def idle_timeout; end
  def idle_timeout=(timeout); end
  def ignore_bad_chunking; end
  def ignore_bad_chunking=(_); end
  def inflate(compressed, window_bits = _); end
  def keep_alive; end
  def keep_alive=(_); end
  def log; end
  def make_tempfile(name); end
  def max_file_buffer; end
  def max_file_buffer=(_); end
  def max_history; end
  def max_history=(length); end
  def open_timeout; end
  def open_timeout=(_); end
  def pass; end
  def pass=(_); end
  def post_connect(uri, response, body_io); end
  def post_connect_hooks; end
  def pre_connect(request); end
  def pre_connect_hooks; end
  def private_key; end
  def private_key=(private_key); end
  def proxy_uri; end
  def read_timeout; end
  def read_timeout=(_); end
  def redirect_ok; end
  def redirect_ok=(_); end
  def redirection_limit; end
  def redirection_limit=(_); end
  def request_add_headers(request, headers = _); end
  def request_auth(request, uri); end
  def request_auth_digest(request, uri, realm, base_uri, iis); end
  def request_cookies(request, uri); end
  def request_headers; end
  def request_headers=(_); end
  def request_host(request, uri); end
  def request_language_charset(request); end
  def request_log(request); end
  def request_referer(request, uri, referer); end
  def request_user_agent(request); end
  def reset; end
  def resolve(uri, referer = _); end
  def resolve_parameters(uri, method, parameters); end
  def response_authenticate(response, page, uri, request, headers, params, referer); end
  def response_content_encoding(response, body_io); end
  def response_cookies(response, uri, page); end
  def response_follow_meta_refresh(response, uri, page, redirects); end
  def response_log(response); end
  def response_parse(response, body_io, uri); end
  def response_read(response, request, uri); end
  def response_redirect(response, method, page, redirects, headers, referer = _); end
  def retry_change_requests; end
  def retry_change_requests=(retri); end
  def robots; end
  def robots=(value); end
  def robots_allowed?(uri); end
  def robots_disallowed?(url); end
  def robots_error(url); end
  def robots_error!(url); end
  def robots_mutex; end
  def robots_reset(url); end
  def save_cookies(uri, set_cookie); end
  def scheme_handlers; end
  def scheme_handlers=(_); end
  def secure_resolve!(uri, referer = _); end
  def set_proxy(addr, port = _, user = _, pass = _); end
  def shutdown; end
  def ssl_version; end
  def ssl_version=(ssl_version); end
  def use_tempfile?(size); end
  def user_agent; end
  def user_agent=(user_agent); end
  def verify_callback; end
  def verify_callback=(verify_callback); end
  def verify_mode; end
  def verify_mode=(verify_mode); end
  def visited_page(url); end
  def webrobots; end
end

Mechanize::HTTP::Agent::RobotsKey = T.let(T.unsafe(nil), Symbol)

class Mechanize::HTTP::AuthChallenge < ::Struct
  def [](param); end
  def params; end
  def params=(_); end
  def raw; end
  def raw=(_); end
  def realm(uri); end
  def realm_name; end
  def scheme; end
  def scheme=(_); end
  def to_s; end

  def self.[](*_); end
  def self.inspect; end
  def self.members; end
  def self.new(*_); end
end

class Mechanize::HTTP::AuthRealm
  def initialize(scheme, uri, realm); end

  def ==(other); end
  def eql?(other); end
  def hash; end
  def inspect; end
  def realm; end
  def scheme; end
  def uri; end
end

class Mechanize::HTTP::AuthStore
  def initialize; end

  def add_auth(uri, user, pass, realm = _, domain = _); end
  def add_default_auth(user, pass, domain = _); end
  def auth_accounts; end
  def credentials?(uri, challenges); end
  def credentials_for(uri, realm); end
  def default_auth; end
  def remove_auth(uri, realm = _); end
end

class Mechanize::HTTP::ContentDisposition < ::Struct
  def creation_date; end
  def creation_date=(_); end
  def filename; end
  def filename=(_); end
  def modification_date; end
  def modification_date=(_); end
  def parameters; end
  def parameters=(_); end
  def read_date; end
  def read_date=(_); end
  def size; end
  def size=(_); end
  def type; end
  def type=(_); end

  def self.[](*_); end
  def self.inspect; end
  def self.members; end
  def self.new(*_); end
end

class Mechanize::HTTP::ContentDispositionParser
  def initialize; end

  def parse(content_disposition, header = _); end
  def parse_parameters; end
  def rfc_2045_quoted_string; end
  def rfc_2045_token; end
  def rfc_2045_value; end
  def scanner; end
  def scanner=(_); end
  def spaces; end

  def self.parse(content_disposition); end
end

class Mechanize::HTTP::WWWAuthenticateParser
  def initialize; end

  def auth_param; end
  def auth_scheme; end
  def parse(www_authenticate); end
  def quoted_string; end
  def scan_comma_spaces; end
  def scanner; end
  def scanner=(_); end
  def spaces; end
  def token; end
end

class Mechanize::Headers < ::Hash
  def [](key); end
  def []=(key, value); end
  def canonical_each; end
  def key?(key); end
end

class Mechanize::History < ::Array
  def initialize(max_size = _); end

  def <<(page, uri = _); end
  def clear; end
  def inspect; end
  def max_size; end
  def max_size=(_); end
  def pop; end
  def push(page, uri = _); end
  def shift; end
  def visited?(uri); end
  def visited_page(uri); end

  private

  def initialize_copy(orig); end
  def remove_from_index(page); end
end

class Mechanize::Image < ::Mechanize::Download
end

class Mechanize::Page < ::Mechanize::File
  extend(::Forwardable)
  extend(::Mechanize::ElementMatcher)

  def initialize(uri = _, response = _, body = _, code = _, mech = _); end

  def %(*args, &block); end
  def /(*args, &block); end
  def at(*args, &block); end
  def at_css(*args, &block); end
  def at_xpath(*args, &block); end
  def base(criteria = _); end
  def base_with(criteria = _); end
  def base_with!(criteria = _); end
  def bases; end
  def bases_with(criteria = _); end
  def canonical_uri; end
  def content_type; end
  def css(*args, &block); end
  def detected_encoding; end
  def encoding; end
  def encoding=(encoding); end
  def encoding_error?(parser = _); end
  def encodings; end
  def form(criteria = _); end
  def form_with(criteria = _); end
  def form_with!(criteria = _); end
  def forms; end
  def forms_with(criteria = _); end
  def frame(criteria = _); end
  def frame_with(criteria = _); end
  def frame_with!(criteria = _); end
  def frames; end
  def frames_with(criteria = _); end
  def iframe(criteria = _); end
  def iframe_with(criteria = _); end
  def iframe_with!(criteria = _); end
  def iframes; end
  def iframes_with(criteria = _); end
  def image(criteria = _); end
  def image_urls; end
  def image_with(criteria = _); end
  def image_with!(criteria = _); end
  def images; end
  def images_with(criteria = _); end
  def inspect; end
  def labels; end
  def labels_hash; end
  def link(criteria = _); end
  def link_with(criteria = _); end
  def link_with!(criteria = _); end
  def links; end
  def links_with(criteria = _); end
  def mech; end
  def mech=(_); end
  def meta_charset; end
  def meta_refresh; end
  def parser; end
  def pretty_print(q); end
  def reset; end
  def response_header_charset; end
  def root; end
  def search(*args, &block); end
  def select_bases(selector, method = _); end
  def select_forms(selector, method = _); end
  def select_frames(selector, method = _); end
  def select_iframes(selector, method = _); end
  def select_images(selector, method = _); end
  def select_links(selector, method = _); end
  def title; end
  def xpath(*args, &block); end

  private

  def html_body; end

  def self.charset(content_type); end
  def self.charset_from_content_type(content_type); end
  def self.meta_charset(body); end
  def self.meta_content_type(body); end
  def self.response_header_charset(response); end
end

class Mechanize::Page::Base < ::Mechanize::Page::Link
end

Mechanize::Page::DEFAULT_RESPONSE = T.let(T.unsafe(nil), Hash)

class Mechanize::Page::Frame < ::Mechanize::Page::Link
  def initialize(node, mech, referer); end

  def content; end
  def name; end
  def node; end
  def src; end
  def text; end
end

class Mechanize::Page::Image
  def initialize(node, page); end

  def alt; end
  def caption; end
  def dom_class; end
  def dom_id; end
  def extname; end
  def fetch(parameters = _, referer = _, headers = _); end
  def height; end
  def image_referer; end
  def inspect; end
  def mech; end
  def mech=(_); end
  def mime_type; end
  def node; end
  def page; end
  def page=(_); end
  def pretty_print(q); end
  def relative?; end
  def src; end
  def text; end
  def title; end
  def to_s; end
  def uri; end
  def url; end
  def width; end
end

class Mechanize::Page::Label
  def initialize(node, page); end

  def for; end
  def node; end
  def page; end
  def text; end
  def to_s; end
end

class Mechanize::Page::Link
  def initialize(node, mech, page); end

  def attributes; end
  def click; end
  def dom_class; end
  def dom_id; end
  def href; end
  def inspect; end
  def node; end
  def noreferrer?; end
  def page; end
  def pretty_print(q); end
  def referer; end
  def rel; end
  def rel?(kind); end
  def resolved_uri; end
  def text; end
  def to_s; end
  def uri; end
end

class Mechanize::Page::MetaRefresh < ::Mechanize::Page::Link
  def initialize(node, page, delay, href, link_self = _); end

  def delay; end
  def link_self; end
  def noreferrer?; end

  def self.from_node(node, page, uri = _); end
  def self.parse(content, base_uri = _); end
end

Mechanize::Page::MetaRefresh::CONTENT_REGEXP = T.let(T.unsafe(nil), Regexp)

Mechanize::Page::MetaRefresh::UNSAFE = T.let(T.unsafe(nil), Regexp)

module Mechanize::Parser
  extend(::Forwardable)

  def [](*args, &block); end
  def []=(*args, &block); end
  def canonical_each(*args, &block); end
  def code; end
  def code=(_); end
  def each(*args, &block); end
  def extract_filename(full_path = _); end
  def fill_header(response); end
  def find_free_name(filename); end
  def header; end
  def key?(*args, &block); end
  def response; end
  def response=(_); end
  def uri; end
  def uri=(_); end
end

Mechanize::Parser::SPECIAL_FILENAMES = T.let(T.unsafe(nil), Regexp)

class Mechanize::PluggableParser
  def initialize; end

  def [](content_type); end
  def []=(content_type, klass); end
  def csv=(klass); end
  def default; end
  def default=(_); end
  def html=(klass); end
  def parser(content_type); end
  def pdf=(klass); end
  def register_parser(content_type, klass); end
  def xhtml=(klass); end
  def xml=(klass); end
end

Mechanize::PluggableParser::CONTENT_TYPES = T.let(T.unsafe(nil), Hash)

Mechanize::PluggableParser::InvalidContentTypeError = MIME::Type::InvalidContentType

class Mechanize::RedirectLimitReachedError < ::Mechanize::Error
  def initialize(page, redirects); end

  def page; end
  def redirects; end
  def response_code; end
end

class Mechanize::RedirectNotGetOrHeadError < ::Mechanize::Error
  def initialize(page, verb); end

  def inspect; end
  def page; end
  def response_code; end
  def to_s; end
  def uri; end
  def verb; end
end

class Mechanize::ResponseCodeError < ::Mechanize::Error
  def initialize(page, message = _); end

  def inspect; end
  def page; end
  def response_code; end
  def to_s; end
end

class Mechanize::ResponseReadError < ::Mechanize::Error
  def initialize(error, response, body_io, uri, mechanize); end

  def body_io; end
  def error; end
  def force_parse; end
  def mechanize; end
  def message; end
  def response; end
  def uri; end
end

class Mechanize::RobotsDisallowedError < ::Mechanize::Error
  def initialize(url); end

  def inspect; end
  def to_s; end
  def uri; end
  def url; end
end

class Mechanize::UnauthorizedError < ::Mechanize::ResponseCodeError
  def initialize(page, challenges, message); end

  def challenges; end
  def to_s; end
end

class Mechanize::UnsupportedSchemeError < ::Mechanize::Error
  def initialize(scheme, uri); end

  def scheme; end
  def scheme=(_); end
  def uri; end
  def uri=(_); end
end

class Mechanize::Util
  def self.build_query_string(parameters, enc = _); end
  def self.detect_charset(src); end
  def self.each_parameter(parameters, &block); end
  def self.from_native_charset(s, code, ignore_encoding_error = _, log = _); end
  def self.guess_encoding(src); end
  def self.html_unescape(s); end
  def self.uri_escape(str, unsafe = _); end
  def self.uri_unescape(str); end
end

Mechanize::Util::DefaultMimeTypes = T.let(T.unsafe(nil), Hash)

Mechanize::VERSION = T.let(T.unsafe(nil), String)

class Mechanize::XmlFile < ::Mechanize::File
  extend(::Forwardable)

  def initialize(uri = _, response = _, body = _, code = _); end

  def at(*args, &block); end
  def search(*args, &block); end
  def xml; end
end
