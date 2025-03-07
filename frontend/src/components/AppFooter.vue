<template>
  <footer class="app-footer">
    <div class="container">
      <div class="footer-content">
        <div class="footer-section">
          <h3>关于我们</h3>
          <ul>
            <li><a href="#">公司介绍</a></li>
            <li><a href="#">服务条款</a></li>
            <li><a href="#">隐私政策</a></li>
          </ul>
        </div>
        
        <div class="footer-section">
          <h3>帮助中心</h3>
          <ul>
            <li><a href="#">预订指南</a></li>
            <li><a href="#">支付方式</a></li>
            <li><a href="#">常见问题</a></li>
          </ul>
        </div>
        
        <div class="footer-section">
          <h3>联系我们</h3>
          <ul>
            <li>客服电话: 400-123-4567</li>
            <li>邮箱: sd@tdck.top</li>
            <li>地址: 中国上海市浦东新区张江高科技园区</li>
          </ul>
        </div>
      </div>
      
      <div class="copyright">
        <p>© 2025 起点站 版权所有</p>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.app-footer {
  background-color: #324057;
  color: #f5f7fa;
  padding: 40px 0 20px;
  margin-top: auto;
}

.footer-content {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-bottom: 30px;
}

.footer-section {
  flex: 1;
  min-width: 200px;
  margin-bottom: 20px;
}

.footer-section h3 {
  font-size: 18px;
  margin-bottom: 15px;
  font-weight: 600;
  color: #f0f0f0;
}

.footer-section ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-section li {
  margin-bottom: 8px;
}

.footer-section a {
  color: #c0c4cc;
  text-decoration: none;
  transition: color 0.3s;
}

.footer-section a:hover {
  color: #f0f0f0;
}

.copyright {
  text-align: center;
  padding-top: 20px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  color: #909399;
  font-size: 14px;
}
</style> 