<script setup>
import { ref, reactive, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

// 用户列表数据
const users = ref([])
const loading = ref(false)
const searchQuery = ref('')

// 分页
const pagination = reactive({
  currentPage: 1,
  pageSize: 10,
  total: 0
})

// 模拟用户数据
const mockUsers = [
  {
    uid: 1,
    username: 'admin',
    email: 'admin@example.com',
    phone: '13800138000',
    role: '管理员',
    status: '已激活',
    created_at: '2023-01-01 10:00:00',
    updated_at: '2023-01-10 14:30:00'
  },
  {
    uid: 2,
    username: 'user01',
    email: 'user01@example.com',
    phone: '13900139001',
    role: '用户',
    status: '已激活',
    created_at: '2023-02-01 11:20:00',
    updated_at: '2023-02-05 16:45:00'
  },
  {
    uid: 3,
    username: 'user02',
    email: 'user02@example.com',
    phone: '13700137002',
    role: '用户',
    status: '待审核',
    created_at: '2023-03-10 09:15:00',
    updated_at: '2023-03-10 09:15:00'
  },
  {
    uid: 4,
    username: 'user03',
    email: 'user03@example.com',
    phone: '13600136003',
    role: '用户',
    status: '禁用',
    created_at: '2023-03-15 14:30:00',
    updated_at: '2023-03-20 10:25:00'
  }
]

// 加载用户数据
const loadUsers = () => {
  loading.value = true
  
  // 模拟接口请求
  setTimeout(() => {
    // 根据搜索条件过滤用户
    const filteredUsers = mockUsers.filter(user => {
      if (!searchQuery.value) return true
      
      const query = searchQuery.value.toLowerCase()
      return user.username.toLowerCase().includes(query) ||
        user.email.toLowerCase().includes(query) ||
        user.phone.includes(query)
    })
    
    users.value = filteredUsers
    pagination.total = filteredUsers.length
    loading.value = false
  }, 500)
}

// 处理分页变化
const handlePageChange = (page) => {
  pagination.currentPage = page
  loadUsers()
}

// 处理每页条数变化
const handleSizeChange = (size) => {
  pagination.pageSize = size
  pagination.currentPage = 1
  loadUsers()
}

// 添加用户对话框
const addUserDialogVisible = ref(false)
const userForm = reactive({
  username: '',
  password: '',
  email: '',
  phone: '',
  role: '用户',
  status: '待审核'
})
const userFormRules = {
  username: [
    { required: true, message: '请输入用户名', trigger: 'blur' },
    { min: 3, max: 20, message: '用户名长度应为3-20个字符', trigger: 'blur' }
  ],
  password: [
    { required: true, message: '请输入密码', trigger: 'blur' },
    { min: 6, message: '密码长度至少为6个字符', trigger: 'blur' }
  ],
  email: [
    { required: true, message: '请输入邮箱', trigger: 'blur' },
    { type: 'email', message: '请输入正确的邮箱格式', trigger: 'blur' }
  ],
  phone: [
    { required: true, message: '请输入手机号', trigger: 'blur' },
    { pattern: /^1[3-9]\d{9}$/, message: '请输入正确的手机号格式', trigger: 'blur' }
  ]
}

const userFormRef = ref(null)
const isEditing = ref(false)
const editingUserId = ref(null)

// 添加用户
const addUser = () => {
  isEditing.value = false
  userForm.username = ''
  userForm.password = ''
  userForm.email = ''
  userForm.phone = ''
  userForm.role = '用户'
  userForm.status = '待审核'
  addUserDialogVisible.value = true
}

// 编辑用户
const editUser = (user) => {
  isEditing.value = true
  editingUserId.value = user.uid
  userForm.username = user.username
  userForm.password = ''
  userForm.email = user.email
  userForm.phone = user.phone
  userForm.role = user.role
  userForm.status = user.status
  addUserDialogVisible.value = true
}

// 删除用户
const deleteUser = (user) => {
  ElMessageBox.confirm(
    `确定要删除用户 ${user.username} 吗？此操作不可恢复。`,
    '删除确认',
    {
      confirmButtonText: '确定',
      cancelButtonText: '取消',
      type: 'warning'
    }
  ).then(() => {
    // 在实际应用中，这里会调用接口删除用户
    users.value = users.value.filter(u => u.uid !== user.uid)
    ElMessage.success('删除成功')
  }).catch(() => {})
}

// 提交用户表单
const submitUserForm = async () => {
  if (!userFormRef.value) return
  
  await userFormRef.value.validate(async (valid) => {
    if (valid) {
      if (isEditing.value) {
        // 编辑用户
        const index = users.value.findIndex(u => u.uid === editingUserId.value)
        if (index !== -1) {
          users.value[index] = {
            ...users.value[index],
            ...userForm,
            updated_at: new Date().toISOString().replace('T', ' ').substring(0, 19)
          }
          ElMessage.success('用户已更新')
        }
      } else {
        // 添加用户
        const newUser = {
          uid: Math.max(...users.value.map(u => u.uid)) + 1,
          ...userForm,
          created_at: new Date().toISOString().replace('T', ' ').substring(0, 19),
          updated_at: new Date().toISOString().replace('T', ' ').substring(0, 19)
        }
        users.value.push(newUser)
        ElMessage.success('用户已添加')
      }
      
      addUserDialogVisible.value = false
    }
  })
}

// 修改用户状态
const changeUserStatus = (user, status) => {
  // 在实际应用中，这里会调用接口更新用户状态
  const index = users.value.findIndex(u => u.uid === user.uid)
  if (index !== -1) {
    users.value[index].status = status
    users.value[index].updated_at = new Date().toISOString().replace('T', ' ').substring(0, 19)
    ElMessage.success(`状态已更新为 ${status}`)
  }
}

// 页面加载时获取用户列表
onMounted(() => {
  loadUsers()
})
</script>

<template>
  <div class="user-management">
    <div class="page-header">
      <h2>用户管理</h2>
    </div>
    
    <div class="page-content">
      <!-- 操作栏 -->
      <div class="action-bar">
        <div class="search-box">
          <el-input
            v-model="searchQuery"
            placeholder="搜索用户名/邮箱/手机"
            clearable
            @clear="loadUsers"
            @keyup.enter="loadUsers"
          >
            <template #append>
              <el-button @click="loadUsers">
                <el-icon><Search /></el-icon>
              </el-button>
            </template>
          </el-input>
        </div>
        
        <div class="action-buttons">
          <el-button type="primary" @click="addUser">
            <el-icon><Plus /></el-icon> 添加用户
          </el-button>
        </div>
      </div>
      
      <!-- 用户列表 -->
      <el-table
        :data="users"
        border
        stripe
        v-loading="loading"
        style="width: 100%"
      >
        <el-table-column prop="uid" label="ID" width="80" />
        <el-table-column prop="username" label="用户名" width="120" />
        <el-table-column prop="email" label="邮箱" />
        <el-table-column prop="phone" label="手机号" width="120" />
        <el-table-column prop="role" label="角色" width="100" />
        <el-table-column prop="status" label="状态" width="100">
          <template #default="{ row }">
            <el-tag
              :type="row.status === '已激活' ? 'success' : row.status === '待审核' ? 'warning' : 'danger'"
            >
              {{ row.status }}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="created_at" label="注册时间" width="160" />
        <el-table-column label="操作" width="200">
          <template #default="{ row }">
            <el-button
              size="small"
              type="primary"
              @click="editUser(row)"
            >
              编辑
            </el-button>
            
            <el-dropdown trigger="click">
              <el-button size="small">
                更多 <el-icon><ArrowDown /></el-icon>
              </el-button>
              <template #dropdown>
                <el-dropdown-menu>
                  <el-dropdown-item @click="changeUserStatus(row, '已激活')">
                    激活
                  </el-dropdown-item>
                  <el-dropdown-item @click="changeUserStatus(row, '禁用')">
                    禁用
                  </el-dropdown-item>
                  <el-dropdown-item @click="changeUserStatus(row, '待审核')">
                    待审核
                  </el-dropdown-item>
                  <el-dropdown-item divided @click="deleteUser(row)">
                    <span style="color: #F56C6C;">删除</span>
                  </el-dropdown-item>
                </el-dropdown-menu>
              </template>
            </el-dropdown>
          </template>
        </el-table-column>
      </el-table>
      
      <!-- 分页 -->
      <div class="pagination-container">
        <el-pagination
          background
          layout="total, sizes, prev, pager, next, jumper"
          :current-page="pagination.currentPage"
          :page-size="pagination.pageSize"
          :page-sizes="[10, 20, 50, 100]"
          :total="pagination.total"
          @current-change="handlePageChange"
          @size-change="handleSizeChange"
        />
      </div>
    </div>
    
    <!-- 添加/编辑用户对话框 -->
    <el-dialog
      :title="isEditing ? '编辑用户' : '添加用户'"
      v-model="addUserDialogVisible"
      width="500px"
    >
      <el-form
        ref="userFormRef"
        :model="userForm"
        :rules="userFormRules"
        label-width="100px"
      >
        <el-form-item label="用户名" prop="username">
          <el-input v-model="userForm.username" :disabled="isEditing" />
        </el-form-item>
        
        <el-form-item label="密码" prop="password" :required="!isEditing">
          <el-input
            v-model="userForm.password"
            type="password"
            show-password
            :placeholder="isEditing ? '不填则不修改' : ''"
          />
        </el-form-item>
        
        <el-form-item label="邮箱" prop="email">
          <el-input v-model="userForm.email" />
        </el-form-item>
        
        <el-form-item label="手机号" prop="phone">
          <el-input v-model="userForm.phone" />
        </el-form-item>
        
        <el-form-item label="角色" prop="role">
          <el-select v-model="userForm.role" style="width: 100%">
            <el-option label="用户" value="用户" />
            <el-option label="管理员" value="管理员" />
          </el-select>
        </el-form-item>
        
        <el-form-item label="状态" prop="status">
          <el-select v-model="userForm.status" style="width: 100%">
            <el-option label="待审核" value="待审核" />
            <el-option label="已激活" value="已激活" />
            <el-option label="禁用" value="禁用" />
          </el-select>
        </el-form-item>
      </el-form>
      
      <template #footer>
        <div class="dialog-footer">
          <el-button @click="addUserDialogVisible = false">取消</el-button>
          <el-button type="primary" @click="submitUserForm">确定</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<style scoped>
.user-management {
  padding: 0;
}

.page-header {
  margin-bottom: 20px;
}

.page-header h2 {
  margin: 0;
  font-size: 24px;
  font-weight: 600;
}

.action-bar {
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}

.search-box {
  width: 300px;
}

.pagination-container {
  margin-top: 20px;
  display: flex;
  justify-content: flex-end;
}

@media (max-width: 768px) {
  .action-bar {
    flex-direction: column;
    gap: 10px;
  }
  
  .search-box {
    width: 100%;
  }
}
</style> 