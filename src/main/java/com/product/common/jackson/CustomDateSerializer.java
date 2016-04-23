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
 * <p>Description: 用于将Date类型的值转化为yyyy-MM-dd形式的值，否则jackson会默认把它转成long值，需要在对应po的getdate属性上加入
 * 注解：@JsonSerialize(using = CustomDateSerializer.class)</p>
 * @author xie
 * @date 2016-4-22 上午1:58:59
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
