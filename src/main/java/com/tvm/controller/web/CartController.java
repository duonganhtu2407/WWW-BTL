package com.tvm.controller.web;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tvm.dto.OrderDto;
import com.tvm.dto.ProductDto;
import com.tvm.dto.ProductOrderDto;
import com.tvm.dto.SessionGioHang;
import com.tvm.dto.SessionUser;
import com.tvm.dto.UserDto;
import com.tvm.interceptor.Auth;
import com.tvm.interceptor.Auth.Role;
import com.tvm.service.ProductService;
import com.tvm.service.UserService;

@Controller
public class CartController {
    @Autowired
    ProductService productService;

    @Autowired
    UserService userService;

    @Autowired
    JavaMailSender mailSender;

    @RequestMapping(path = "/cart", method = RequestMethod.GET)
    public String viewCartProduct(ModelMap map, HttpSession session, @RequestParam(required = false) String message) {
        List<ProductDto> listSpDto = new ArrayList<ProductDto>();
        SessionGioHang gioHang = (SessionGioHang) session.getAttribute("gioHang");
        if (gioHang != null) {
            for (ProductOrderDto productOrderDto : gioHang.getGioHangs()) {
                ProductDto dto = productService.findProductByIdService(productOrderDto.getIdProduct());
                dto.setTotalItem(productOrderDto.getCount());
                dto.setTotalPrices(productOrderDto.getPrice());
                listSpDto.add(dto);
            }

        }
        map.addAttribute("message", message);
        map.addAttribute("orderdto", new OrderDto());
        map.addAttribute("productsCart", listSpDto);
        return "web/giohang";
    }

    @RequestMapping(path = "/api/v1/cart", method = RequestMethod.POST)
    @ResponseBody
    public String themSanPhamVaoGioHang(@RequestBody ProductOrderDto productOrderDto, HttpSession session) {
        boolean checkTonTai = false;
        int existProduct = -1;
        int vtExits = -1;
        long total = 0;
        int totalItem = 0;
        SessionGioHang gioHang = (SessionGioHang) session.getAttribute("gioHang");
        ProductDto productDto = productService.findProductByIdService(productOrderDto.getIdProduct());

        if (productDto.getCount() < productOrderDto.getCount()) {
            return "fail";
        }
        if (productOrderDto.getCount() < 1) {
            return "fail";
        }
        for (int i = 0; i < gioHang.getGioHangs().size(); i++) {
            if (productOrderDto.getIdProduct() == gioHang.getGioHangs().get(i).getIdProduct()) {
                checkTonTai = true;
                existProduct = gioHang.getGioHangs().get(i).getCount();
                vtExits = i;
                break;
            }
        }

        if (checkTonTai) {
            productOrderDto.setCount(productOrderDto.getCount() + existProduct);
            productOrderDto.setPrice(
                    (long) ((productOrderDto.getPrice() - productOrderDto.getPrice() * (productDto.getDiscount() / 100))
                            * productOrderDto.getCount()));
            gioHang.getGioHangs().set(vtExits, productOrderDto);
            gioHang.setGioHangs(gioHang.getGioHangs());
            for (ProductOrderDto dto : gioHang.getGioHangs()) {
                // total
                // +=productService.findProductByIdService((Integer)dto.getIdProduct()).getPrice()*dto.getCount();
                total += dto.getPrice();
                totalItem += dto.getCount();
            }
            NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));
            gioHang.setTotalPrice(nf.format(total));
            gioHang.setTotalItem(totalItem);
        } else {
            productOrderDto.setPrice(
                    (long) ((productOrderDto.getPrice() - productOrderDto.getPrice() * (productDto.getDiscount() / 100))
                            * productOrderDto.getCount()));
            gioHang.getGioHangs().add(productOrderDto);
            gioHang.setGioHangs(gioHang.getGioHangs());

            for (ProductOrderDto dto : gioHang.getGioHangs()) {
                // total
                // +=productService.findProductByIdService((Integer)dto.getIdProduct()).getPrice()*dto.getCount();
                total += dto.getPrice();
                totalItem += dto.getCount();
            }
            NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));
            gioHang.setTotalPrice(nf.format(total));
            gioHang.setTotalItem(totalItem);
        }

        return "success";
    }

    @RequestMapping(path = "/api/v1/cart/{idProduct}", method = RequestMethod.DELETE)
    @ResponseBody
    public String xoaSanPhamRaGioHang(@PathVariable int idProduct, HttpSession session) {
        SessionGioHang gioHang = (SessionGioHang) session.getAttribute("gioHang");
        ProductOrderDto spXoa = null;
        for (ProductOrderDto dto : gioHang.getGioHangs()) {
            if (dto.getIdProduct() == idProduct) {
                spXoa = dto;
                break;
            }
        }
        gioHang.getGioHangs().remove(spXoa);
        gioHang.setGioHangs(gioHang.getGioHangs());
        long total = 0;
        int totalItem = 0;
        for (ProductOrderDto dto : gioHang.getGioHangs()) {
            total += dto.getPrice();
            totalItem += dto.getCount();
        }
        NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));
        gioHang.setTotalPrice(nf.format(total));
        gioHang.setTotalItem(totalItem);
        return "success";
    }

    @Auth(role = Role.LOGIN)
    @RequestMapping(path = "/order", method = RequestMethod.POST)
    public String insertOrder(ModelMap map, HttpSession session, HttpServletRequest request, @Validated @ModelAttribute("orderdto") OrderDto orderdto, BindingResult bindingResult) {
        SessionGioHang gioHang = (SessionGioHang) session.getAttribute("gioHang");
        if (bindingResult.hasErrors()) {
            List<ProductDto> listSpDto = new ArrayList<ProductDto>();
            if (gioHang != null) {
                for (ProductOrderDto productOrderDto : gioHang.getGioHangs()) {
                    ProductDto dto = productService.findProductByIdService(productOrderDto.getIdProduct());
                    dto.setTotalItem(productOrderDto.getCount());
                    dto.setTotalPrices(productOrderDto.getPrice());
                    listSpDto.add(dto);
                }

            }
            map.addAttribute("message", "");
            map.addAttribute("order", new OrderDto());
            map.addAttribute("productsCart", listSpDto);
            return "web/giohang";
        }
        if (gioHang.getGioHangs().size() <= 0) {
            return "redirect:/home";
        }

        try {

            NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));
            StringBuilder sendText = new StringBuilder();
            String from = "shopmtv123@gmail.com";

            //format mail
            sendText.append(
                    "<p>Quý khách đã đặt hàng thành công. Chúng tôi sẽ liên lạc với quý khách khi hàng đã giao đến </p>");
            //

            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mail);

            SessionUser sessionUser = (SessionUser) session.getAttribute("sessionUser");
            UserDto userDtoMail = userService.findByIdUserService(sessionUser.getUserId());

            //format mail
            sendText.append("<h3>THÔNG TIN ĐẶT HÀNG</3>");
            sendText.append("<p> Người thanh toán : " + userDtoMail.getFullName() + "</p>");
            sendText.append("<p> Người nhận: " + orderdto.getReceiver() + "</p>");
            sendText.append("<p> Địa chỉ giao hàng: " + orderdto.getDeliveryAddress() + "</p>");
            sendText.append("<p> Số điện thoại người nhận : " + orderdto.getPhone() + "</p>");
            sendText.append("<p> Nội dung : " + orderdto.getContent() + "</p>");
            helper.setFrom(from, from);
            helper.setTo(userDtoMail.getEmail());
            helper.setReplyTo(from, from);
            helper.setSubject("ShopMTV");
            helper.setText(sendText.toString(), true);

            mailSender.send(mail);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        session = request.getSession(false);
        session.removeAttribute("gioHang");
        return "redirect:/home";

    }
}
