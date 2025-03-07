package tdck.backend.moudl_campus.exception;

import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import tdck.backend.moudl_campus.common.Result;

@RestControllerAdvice
public class GlobalExceptionHandler {
    
    /**
     * 处理自定义业务异常
     */
    @ExceptionHandler(BusinessException.class)
    public Result<Void> handleBusinessException(BusinessException e) {
        return Result.fail(e.getCode(), e.getMessage());
    }
    
    /**
     * 处理参数校验异常
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result<Void> handleValidationException(MethodArgumentNotValidException e) {
        BindingResult bindingResult = e.getBindingResult();
        StringBuilder errorMsg = new StringBuilder();
        
        for (FieldError fieldError : bindingResult.getFieldErrors()) {
            errorMsg.append(fieldError.getDefaultMessage()).append("; ");
        }
        
        return Result.fail(400, errorMsg.toString());
    }
    
    /**
     * 处理其它异常
     */
    @ExceptionHandler(Exception.class)
    public Result<Void> handleException(Exception e) {
        return Result.fail("系统错误: " + e.getMessage());
    }
} 