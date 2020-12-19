/*
 Navicat Premium Data Transfer

 Source Server         : lp's myspl
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : my_vue_blog_sql

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 19/12/2020 23:03:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `postId` int(0) NOT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 1, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (1, 2, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (1, 3, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (1, 4, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (1, 5, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (2, 6, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (2, 7, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (2, 8, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (2, 9, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (3, 10, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (3, 11, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (3, 12, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (3, 13, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (3, 14, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (3, 15, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (3, 16, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (4, 17, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (4, 18, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (4, 19, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (4, 20, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (4, 21, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (4, 22, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (5, 23, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (5, 24, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (5, 25, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (6, 26, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (6, 27, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (6, 28, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (7, 29, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (7, 30, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (8, 31, '这是个什么东西？', 'Eliseo@gardner.biz', '实力也就那样，当时杂志上吹的又是内线脚步又是低位单吃，几个赛季得分都没上双，脾气臭嘴臭');
INSERT INTO `comments` VALUES (8, 32, '尤文不会又出什么岔子吧', 'Jayne_Kuhic@sydney.com', '虽然看起来是“虐菜局”，但是C罗轮休，尤文不会又出什么岔子吧？');
INSERT INTO `comments` VALUES (8, 33, '怕啥来啥', 'Nikita@garfield.biz', '怕啥来啥。面对升班马贝内文托，尤文并未拿出完全压制对手的表现，球队进攻端缺乏犀利度，防守又不注重细节，在场上也缺乏激情。');
INSERT INTO `comments` VALUES (8, 34, '虐菜不利的问题', 'Lew@alysha.tv', '另外，在“虐菜不利”的问题上，菜鸟教练皮尔洛也要负相当的责任。皮尔洛在排兵布阵上总有一些实验，在具体的比赛掌控上又不够注重细节，这就导致尤文在本来就踢得费力的时候还不一定能守住优势。');
INSERT INTO `comments` VALUES (8, 35, '谁让他们把皮亚尼奇放走的', 'Hayden@althea.biz', '活该呀，谁让他们把皮亚尼奇放走的，皮亚尼奇+哥伦比亚小黑+阿根廷小帅+C罗，四大天王缺一不可的，拆散了，就像毛驴砍了一条腿，走路肯定一瘸一拐了');
INSERT INTO `comments` VALUES (1, 36, NULL, '17301127@bjtu.edu.cn', '我来测试一下评论功能');
INSERT INTO `comments` VALUES (1, 37, NULL, '17301127@bjtu.edu.cn', '我来测试一下是不是响应式');
INSERT INTO `comments` VALUES (1, 38, NULL, '17301127@bjtu.edu.cn', '我来测试一下是不是响应式');
INSERT INTO `comments` VALUES (1, 39, NULL, '17301127@bjtu.edu.cn', '现在好像是响应式了');
INSERT INTO `comments` VALUES (1, 40, NULL, '17301127@bjtu.edu.cn', '现在好像是响应式了');
INSERT INTO `comments` VALUES (1, 41, NULL, '17301127@bjtu.edu.cn', '2020/12/3 \n我来测试一下是不是响应式');
INSERT INTO `comments` VALUES (58, 93, NULL, '17301127@bjtu.edu.cn', '这是我的第一条评论');
INSERT INTO `comments` VALUES (58, 94, NULL, '17301127@bjtu.edu.cn', '这是我的第二条评论');
INSERT INTO `comments` VALUES (58, 95, NULL, '17301127@bjtu.edu.cn', '这是我的第三条评论');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 1, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('1', 2, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('1', 3, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('1', 4, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('1', 5, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('1', 6, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('1', 7, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('1', 8, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('1', 9, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('1', 10, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('2', 11, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('2', 12, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('2', 13, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('2', 14, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('2', 15, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('3', 16, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('3', 17, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('3', 18, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('3', 19, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('4', 20, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('4', 21, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('4', 22, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('4', 23, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('4', 24, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('4', 25, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('5', 26, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('5', 27, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('5', 28, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('5', 29, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('5', 30, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('6', 31, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('6', 32, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('6', 33, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('6', 34, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('6', 35, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('7', 36, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('7', 37, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('7', 38, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('7', 39, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('7', 40, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('8', 41, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('8', 42, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('8', 43, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('8', 44, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('8', 45, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('9', 46, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('9', 47, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('9', 48, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('9', 49, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('9', 50, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('10', 51, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('10', 52, 'Linux 更多的是应用于服务器', '由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。');
INSERT INTO `posts` VALUES ('10', 53, '各国Linux应用', '巴西联邦政府由于支持 Linux 而世界闻名。有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。');
INSERT INTO `posts` VALUES ('10', 54, '从嵌入式设备到超级计算机，并且在服务器领域确定了地位', '在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。葡萄牙同样使用自己的 Linux 发布版 Caixa Mágica，用于 Magalh?es 笔记本电脑和 e-escola 政府软件。法国和德国同样开始逐步采用 Linux。');
INSERT INTO `posts` VALUES ('10', 55, '市面上较知名的发行版有Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE', 'Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。');
INSERT INTO `posts` VALUES ('10', 56, '桌面操作系统更多使用的是 Windows', '驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。');
INSERT INTO `posts` VALUES ('1', 57, '大意了，这辆新款奥迪A4 allroad不简单，它还能去看看诗和远方', '【太平洋汽车网 评测频道】当你在路上见到这辆新款奥迪A4 allroad就知道，它并不简单，那种说不清道不明的“逼格”和“情怀”，大卖场的货色绝对不能和它相提并论。旅行车最吸引人的地方是：既能让你的“瓦罐”情怀落地，又能彰显个性挑逗各位看官。当然了，讲情怀论个性是有成本的，所以并不是每个人都有这样高贵的情怀。至少对于目前的中国市场来说，就是这样的，只不过想要尝一口的心情相信大家都有。接下来就让我们一起开餐吧。\n\n外观：精致多了也精神多了\n\n新款奥迪A4 allroad的外观，比之前看起来要精致多了、精神多了。现款车型，不知为何，看起来总有点感觉野性多过城市属性，而新款仿佛经过精心打扮，容光焕发，打着领带穿着修身西装迎面走来，尽管我们基本知道中期改款的A4 allroad会跟A4L的变化走。其实这类车的中国用户，其实还是以城市用途为主的精英人群，偶尔撒撒野即可，加上特殊的“瓦罐”情怀、奥迪擅长的科技豪华感，真的越看越诱人。\n\n内饰：对科技与豪华从不妥协\n\n新款奥迪A4 allroad的车厢氛围，和国产的A4L几乎完全一致，但内饰中出现了木纹元素也足够给你眼前一亮的感觉。同时更大的中控屏、全新的车机让它车内有着更高的科技感，还有电容式空调控制按钮、手感一流的旋钮和按键、苹果无线CarPlay、B&O音响等很多细节，都可以让人们看到它的车厢，真是又高级又有科技感。\n\n\n空间：标轴依旧是痛点\n\n国产A4L那个后排真是大到夸张，连宝马3系和奔驰C级都要时刻提防着它。但A4 allroad的后座呢？前面的标准恐怕不合适，由于采用标准轴距设计，新款奥迪A4 allroad的后排远没有国产的A4L大。实际腿部空间相当于速腾的水平，不算拥挤但也富余很多，加上靠背比较直、中央地台隆起较高，长途乘坐后排舒适性一般。\n\n驾控：熟悉的躁动味道\n\n当然了，个性十足的模样也许会被人看作是花瓶，但是强悍动力的帮助，却能够换来令人敬畏的羡慕。所以从引进之初，奥迪A4 allroad的动力规格就是高阶的。虽然这次依旧是老朋友2.0T高功率发动机+7速双离合变速箱，最大输出均没有改变，但加入了12V的轻混技术，对降低发动机燃烧燃油经济性、减少涡轮迟滞、改进加速性能有着积极作用。\n新款奥迪A4 allroad的运动性能非常出色，它是一台非常具有表现欲的类型。尽管初上手的第一感觉还是那么奥迪，轻快灵动响应及时，加上电子味浓厚的轻巧转向，完全不会给你任何负担，很容易不知不觉就开很快了。很明显，发动机的运转特性进一步得到了提升，才有前面提到的迅猛和充沛的动力体验。至少在我看来，这套动力总成低速迟缓已经不明显。\n\n双离合变速箱的日常表现果断机敏，换挡速度非常快，换挡逻辑层面已经没有太多可以挑剔的地方了。而且在燃油经济性和爆发点上也做到了很好的平衡，即便在舒适模式下巡航，你突然需要动力进行并线超车，它也能非常迅速的反应降挡（可留意此时转速表表瞬间跳动的指针），给你所需要的动力，给人好感度不错。\n\n底盘方面，新车依旧使用了前后五连杆的独立悬挂，但是可以很明显的感受到，路感是比较丰富。悬挂压过路肩、减速带时，明显硬朗了许多，并且比轿车更长的悬挂行程，在面对大坑洼时也会迅速抹平震动，驾驶起来却又比SUV来得有信心。别忘了，它还装配了奥迪quattro ultra适时四驱系统，不管直线还是弯道，你就放心大胆的开吧，剩下的电子辅助已经给你安排好了。\n\n');
INSERT INTO `posts` VALUES ('1', 58, '大意了，这辆新款奥迪A4 ALLROAD不简单，它还能去看看诗和远方', '【太平洋汽车网 评测频道】当你在路上见到这辆新款奥迪A4 allroad就知道，它并不简单，那种说不清道不明的“逼格”和“情怀”，大卖场的货色绝对不能和它相提并论。旅行车最吸引人的地方是：既能让你的“瓦罐”情怀落地，又能彰显个性挑逗各位看官。当然了，讲情怀论个性是有成本的，所以并不是每个人都有这样高贵的情怀。至少对于目前的中国市场来说，就是这样的，只不过想要尝一口的心情相信大家都有。接下来就让我们一起开餐吧。\n\n外观：精致多了也精神多了\n\n新款奥迪A4 allroad的外观，比之前看起来要精致多了、精神多了。现款车型，不知为何，看起来总有点感觉野性多过城市属性，而新款仿佛经过精心打扮，容光焕发，打着领带穿着修身西装迎面走来，尽管我们基本知道中期改款的A4 allroad会跟A4L的变化走。其实这类车的中国用户，其实还是以城市用途为主的精英人群，偶尔撒撒野即可，加上特殊的“瓦罐”情怀、奥迪擅长的科技豪华感，真的越看越诱人。\n\n内饰：对科技与豪华从不妥协\n\n新款奥迪A4 allroad的车厢氛围，和国产的A4L几乎完全一致，但内饰中出现了木纹元素也足够给你眼前一亮的感觉。同时更大的中控屏、全新的车机让它车内有着更高的科技感，还有电容式空调控制按钮、手感一流的旋钮和按键、苹果无线CarPlay、B&O音响等很多细节，都可以让人们看到它的车厢，真是又高级又有科技感。\n\n\n空间：标轴依旧是痛点\n\n国产A4L那个后排真是大到夸张，连宝马3系和奔驰C级都要时刻提防着它。但A4 allroad的后座呢？前面的标准恐怕不合适，由于采用标准轴距设计，新款奥迪A4 allroad的后排远没有国产的A4L大。实际腿部空间相当于速腾的水平，不算拥挤但也富余很多，加上靠背比较直、中央地台隆起较高，长途乘坐后排舒适性一般。\n');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '17301127@bjtu.edu.cn', '18511406134', '123456', 'lipu', 'lipu');

SET FOREIGN_KEY_CHECKS = 1;
