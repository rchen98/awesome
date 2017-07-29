package org.fkit.controller;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.fkit.domain.Book;
import org.springframework.stereotype.Controller;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
/**   
 * @Description: 
 * <br>网站：<a href="http://www.fkit.org">疯狂Java</a> 
 * @author 肖文吉	36750064@qq.com   
 * @version V1.0   
 */
@Controller
public class BookController {
	
	private static final Log logger = LogFactory.getLog(BookController.class);
		
    @RequestMapping(value="/sendxml", method=RequestMethod.POST)
    
    public void sendxml(@RequestBody Book book){
    	logger.info(book);
    	logger.info("接收数据成功");
    }
    @RequestMapping(value="/readxml", method=RequestMethod.POST)
    
    public @ResponseBody Book readxml() throws Exception {
         JAXBContext ctx = JAXBContext.newInstance(Book.class);
        		 
         Unmarshaller unmar  = ctx.createUnmarshaller();
         InputStream is =this.getClass().getResourceAsStream("/book.xml");
         
         Book book = (Book)unmar.unmarshal(is);
         logger.info(book);
         return book;
    	
    }

}
