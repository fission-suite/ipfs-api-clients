=begin
#FISSION

#Easily use IPFS from Web 2.0 applications

OpenAPI spec version: 1.0.0
Contact: support@fission.codes
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'uri'

module SwaggerClient
  class IPFSApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param [Hash] opts the optional parameters
    # @return [Array<IPFSPeer>]
    def ipfs_peers_get(opts = {})
      data, _status_code, _headers = ipfs_peers_get_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<IPFSPeer>, Fixnum, Hash)>] Array<IPFSPeer> data, response status code and response headers
    def ipfs_peers_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPFSApi.ipfs_peers_get ...'
      end
      # resource path
      local_var_path = '/ipfs/peers'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<IPFSPeer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPFSApi#ipfs_peers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param file A file to upload (may also be multipart/form-data)
    # @param [Hash] opts the optional parameters
    # @return [IPFSAddress]
    def ipfs_post(file, opts = {})
      data, _status_code, _headers = ipfs_post_with_http_info(file, opts)
      data
    end

    # @param file A file to upload (may also be multipart/form-data)
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPFSAddress, Fixnum, Hash)>] IPFSAddress data, response status code and response headers
    def ipfs_post_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPFSApi.ipfs_post ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling IPFSApi.ipfs_post"
      end
      # resource path
      local_var_path = '/ipfs'

      # query parameters
      query_params = {}
      query_params[:'file'] = file

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream', 'text/plain;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPFSAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPFSApi#ipfs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end