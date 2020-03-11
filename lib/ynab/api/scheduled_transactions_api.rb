=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module YNAB
  class ScheduledTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Single scheduled transaction
    # Returns a single scheduled transaction
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param scheduled_transaction_id The id of the scheduled transaction
    # @param [Hash] opts the optional parameters
    # @return [ScheduledTransactionResponse]
    def get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id, opts = {})
      data, _status_code, _headers = get_scheduled_transaction_by_id_with_http_info(budget_id, scheduled_transaction_id, opts)
      data
    end

    # Single scheduled transaction
    # Returns a single scheduled transaction
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param scheduled_transaction_id The id of the scheduled transaction
    # @param [Hash] opts the optional parameters
    # @return [Array<(ScheduledTransactionResponse, Fixnum, Hash)>] ScheduledTransactionResponse data, response status code and response headers
    def get_scheduled_transaction_by_id_with_http_info(budget_id, scheduled_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduledTransactionsApi.get_scheduled_transaction_by_id ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling ScheduledTransactionsApi.get_scheduled_transaction_by_id"
      end
      # verify the required parameter 'scheduled_transaction_id' is set
      if @api_client.config.client_side_validation && scheduled_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'scheduled_transaction_id' when calling ScheduledTransactionsApi.get_scheduled_transaction_by_id"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'scheduled_transaction_id' + '}', scheduled_transaction_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScheduledTransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledTransactionsApi#get_scheduled_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List scheduled transactions
    # Returns all scheduled transactions
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_knowledge_of_server The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included.
    # @return [ScheduledTransactionsResponse]
    def get_scheduled_transactions(budget_id, opts = {})
      data, _status_code, _headers = get_scheduled_transactions_with_http_info(budget_id, opts)
      data
    end

    # List scheduled transactions
    # Returns all scheduled transactions
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_knowledge_of_server The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included.
    # @return [Array<(ScheduledTransactionsResponse, Fixnum, Hash)>] ScheduledTransactionsResponse data, response status code and response headers
    def get_scheduled_transactions_with_http_info(budget_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScheduledTransactionsApi.get_scheduled_transactions ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling ScheduledTransactionsApi.get_scheduled_transactions"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/scheduled_transactions'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'last_knowledge_of_server'] = opts[:'last_knowledge_of_server'] if !opts[:'last_knowledge_of_server'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScheduledTransactionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledTransactionsApi#get_scheduled_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
