package com.product.common.jackson;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

/**
 * 
 * <p>Title: CustomDateSerializer</p>
 * <p>Description: ���ڽ�Date���͵�ֵת��Ϊyyyy-MM-dd��ʽ��ֵ������jackson��Ĭ�ϰ���ת��longֵ����Ҫ�ڶ�Ӧpo��getdate�����ϼ���
 * ע�⣺@JsonSerialize(using = CustomDateSerializer.class)</p>
 * @author xie
 * @date 2016-4-22 ����1:58:59
 */
public class CustomDateSerializer extends JsonSerializer<Date>{

	@Override
	public void serialize(Date value, JsonGenerator jgen,
			SerializerProvider provider) throws IOException,
			JsonProcessingException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = formatter.format(value);
		jgen.writeString(formattedDate);
	}

}
