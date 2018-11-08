#!/bin/bash
# struct stat {
#     dev_t st_dev; /* 设备   */
#     ino_t st_ino; /* 节点   */
#     mode_t st_mode; /* 模式   */
#     nlink_t st_nlink; /* 硬连接 */
#     uid_t st_uid; /* 用户ID */
#     gid_t st_gid; /* 组ID   */
#     dev_t st_rdev; /* 设备类型 */
#     off_t st_off; /* 文件字节数 */
#     unsigned long  st_blksize; /* 块大小 */
#     unsigned long st_blocks; /* 块数   */
#     time_t st_atime; /* 最后一次访问时间 */
#     time_t st_mtime; /* 最后一次修改时间 */
#     time_t st_ctime; /* 最后一次改变时间(指属性) */
# };