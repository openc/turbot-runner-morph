module TurbotRunner
  module Validator
    extend self

    def validate(data_type, record, identifying_fields)
      schema_path = TurbotRunner.schema_path(data_type)
      error = Openc::JsonSchema.validate(schema_path, record)

      if error
        return error[:message]
      end

      flattened_record = TurbotRunner::Utils.flatten(record)

      identifying_attributes = flattened_record.reject do |k, v|
        !identifying_fields.include?(k) || v.nil? || v == ''
      end

      if identifying_attributes.empty?
        return "There were no values provided for any of the identifying fields: #{identifying_fields.join(', ')}"
      end

      nil
    end
  end
end
