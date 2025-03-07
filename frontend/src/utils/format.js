/**
 * 格式化日期为YYYY-MM-DD形式
 * @param {Date} date 日期对象
 * @returns {string} 格式化后的日期字符串
 */
export function formatDate(date) {
  const year = date.getFullYear()
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')
  return `${year}-${month}-${day}`
}

/**
 * 格式化日期时间为YYYY-MM-DD HH:MM:SS形式
 * @param {Date|string} datetime 日期对象或日期字符串
 * @returns {string} 格式化后的日期时间字符串
 */
export function formatDateTime(datetime) {
  const date = typeof datetime === 'string' ? new Date(datetime) : datetime
  const year = date.getFullYear()
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')
  const hours = String(date.getHours()).padStart(2, '0')
  const minutes = String(date.getMinutes()).padStart(2, '0')
  const seconds = String(date.getSeconds()).padStart(2, '0')
  return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`
}

/**
 * 格式化时间为HH:MM形式
 * @param {string} timeStr 时间字符串 
 * @returns {string} 格式化后的时间字符串
 */
export function formatTime(timeStr) {
  const date = new Date(timeStr)
  const hours = String(date.getHours()).padStart(2, '0')
  const minutes = String(date.getMinutes()).padStart(2, '0')
  return `${hours}:${minutes}`
}

/**
 * 格式化时间间隔为小时分钟形式
 * @param {number} durationMs 时间间隔毫秒数
 * @returns {string} 格式化后的时间间隔字符串
 */
export function formatDuration(durationMs) {
  const hours = Math.floor(durationMs / (1000 * 60 * 60))
  const minutes = Math.floor((durationMs % (1000 * 60 * 60)) / (1000 * 60))
  return `${hours}小时${minutes}分钟`
}

/**
 * 格式化价格，添加货币符号和千位分隔符
 * @param {number} price 价格
 * @returns {string} 格式化后的价格字符串
 */
export function formatPrice(price) {
  return `¥${price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')}`
}

/**
 * 计算两个时间的时间差
 * @param {string} startTime 开始时间
 * @param {string} endTime 结束时间
 * @returns {object} 包含小时和分钟的对象
 */
export function calculateTimeDifference(startTime, endTime) {
  const start = new Date(startTime)
  const end = new Date(endTime)
  const diff = end.getTime() - start.getTime()
  const hours = Math.floor(diff / (1000 * 60 * 60))
  const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60))
  return { hours, minutes }
} 