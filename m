Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HpAAfwC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:40:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA1D41112C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:40:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3FB844B61
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:40:42 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 74D9B3F953
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-8b-693287728c9f
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:43 +0900
Message-Id: <20251205071855.72743-31-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUxTdxjF97/3/m8v1ZqbqvEKOE1l0ZGJVEWfbGow2ZK7GDK3+UkTXQM3
	Ui0FW0VxIVoBQQYMWcSEDsQiL0KFWkTRgRRQ1BoUeSktIlLFTkOpGwMctYVBzb79cs5zTp4P
	hyGldhzMKNVHBI1aoZLRYko8ttCwTpO5QRn5e3coDL4YwWDTWSh40H+agq7aGgTvP+hJmG3u
	QFD4tICE0fZxBOedIzRceKujoMilF8HYiz8wVIzMEOAvPAQXDfU0jBb+RcP1jiEEr/MbSPCY
	aCg93YyhWF+AwDXQTEBaWR0NhcVmCp6O+gioMcfAo3wDAT6nHGZLE6F27AkGs+MegoleJwHG
	HBcJ5lc2DFn+CQQdjS8JyDE1YOiyPMLwsOgKBU9uX8XgHLZjmMoLgd88LgSOC24RuPrOEGBK
	LxJBQ0sGgvHLUxTcz7UQUD7hIaFT/xjDmcvXCLiTNUzA3bqbBNS52kkorxrDYH3+jwi8lXNf
	WL1WAvS6PASmvytpSB+Mgqt+GwL9vSFRdDSf0e2neWOJEfET5Wkkn5E/R+3udyTvneyjeauB
	4891ruNvFT0X8el3BkR8qfkoX18Vzpc1vSX4gdFtvLn6LM0P2proXav3iLfGCSplsqBZv/0n
	cbzX94xMckqOFxScxadQ8YJsFMRw7CbO0GtG2YgJcJYxdF6m2TWc3T5NzvMSdhVXn+vC2UjM
	kGzPSi5zOi9gLGa/54xNjdR8lmI/4xoei+ZlCbuZc7T24I/1K7kakyVwHjSnn+/3BljKRnEX
	s98HOjm2LIh7Pd1Gfwws51qr7FQ+kpSiT6qRVKlOTlAoVZsi4lPUyuMRsYkJZjS3t4pU395G
	NN71YxtiGSRbKLEckyulWJGsTUloQxxDypZI3KpIpVQSp0g5IWgS92uOqgRtGwphKNkyyYap
	Y3FS9oDiiHBIEJIEzf8uwQQFn0LyHd8GJ0cR0y/Tshy3LJmrb9pzk3759aHulXjRlrB9YQdN
	J+UluyNjbkylNr/52bvoz2t4RUtsS69nZmfOl+c6fd9MTmasKLH6N+qC1bw87IdL0Tsca4d3
	fvpFXe2HNand31Xu9gjU4b6KeltsWvXS8E5a+3nMm6+N/65yf7XdnZIwMy6jtPEKeTip0Sr+
	A/FUX/JrAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0hTcRTH+93XrqvFZQreLDJGDwrUjB4njSyivARF9U8PAl12y+V8tJVl
	EPloOdeDeWOTWqZpjtBVplmajUzLUntsWWmPZdZaiZY9Ns3ptCn0z+Fzvg84fxwal94iQ2hF
	ygFelSJXyigxId4YnRO2P3eRYmHRieWg1RyD911OEl5nNRDgcWsJuHDdQoHPdFsE2qpzJDzu
	yCbAdq0CQZdHi2Bw2ISDpm6MAJ/QLAL30DsRGLIQjFmbERjtAg6dtns4WG5mYfCncpSC3qbf
	CAzdTgoKerII6DefQnDeZRJBz8NY+N5VT8KY4ysGHQN9CMzOUQycDbkIfMYkKCqp9teNPykY
	fvochwKDDcGlbgcOv3s+IrjZ/AGB9Uo2BV/0NTi0O6fCS08/BS2GkxR8t1/A4EclBcXZVhLs
	T3oRFJoEBK63VgxySq9TYCysIqDu4x0R2HtHMHhvFDCoqNoAXWYXAW36Esx/rj91IxhMBTmY
	f3zDwHC1HoMhc7loVRniBjVnCK68+hbGaV74KM5y0YK4Ya+AOHdZDs5p9P61qa8f545XH+LK
	2voozut5RXHWgWKCay1huct5XozLfxrG1Z13iDat3iFesZtXKtJ5VcTKeHGid+QdntYtOSwI
	eWQmKpysQzTNMotZrWWGDgXQFDOP7ewcwsc5iJnFVp92kTokpnGmPZTNHTozYQQym1nL3Vpi
	vEswc9iaZ6JxWcIsZd/cbyfHmWVC2YrKhol4gF83dHgnWMosYYt0g6QeiYvRpHIUpEhJT5Yr
	lEvC1UmJGSmKw+EJqclVyP9N5qMj+bXI3R7biBgayaZIGg5FKqSkPF2dkdyIWBqXBUn6lAsV
	UsluecYRXpUapzqo5NWNaDpNyIIl67fy8VJmr/wAn8Tzabzqv4vRASGZ6FOuRx+1LDg1L06Y
	Vhj76+ze0GjnhuiZMZFcRIJ0135HZtRz2zpX/WhZ3d/YmCO+uX/rY6Jaz32+lscHTgoocr/V
	F+swtDi1Bp3etpKcvjbOs2PngwH79tbA/HzDAluE8Ge7M7zUl/jAkdEy40NIz/zh1Vvmp+n3
	qOKa2H3q2WseyQh1ojxyAa5Sy/8BP5Wpp0kDAAA=
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WNILC2VADETUHXDDR7A5RRXEFDTLNFFJ
X-Message-ID-Hash: WNILC2VADETUHXDDR7A5RRXEFDTLNFFJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:29 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 30/42] dept: make dept stop from working on debug_locks_off()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WNILC2VADETUHXDDR7A5RRXEFDTLNFFJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3176];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[skhynix.com,linux-foundation.org,opensource.wdc.com,vger.kernel.org,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.fr,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,redhat.co,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,garyguo.net,protonmail.com,umich.edu];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[sk.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[165];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.926];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sk.com:mid,sk.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: BAA1D41112C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For many reasons, debug_locks_off() is called to stop lock debuging
feature e.g. on panic().  dept should also stop it in the conditions.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/dept.h     | 2 ++
 kernel/dependency/dept.c | 6 ++++++
 lib/debug_locks.c        | 2 ++
 3 files changed, 10 insertions(+)

diff --git a/include/linux/dept.h b/include/linux/dept.h
index bbcb48f6140a..8b41f7a65abb 100644
--- a/include/linux/dept.h
+++ b/include/linux/dept.h
@@ -142,6 +142,7 @@ struct dept_ext_wgen {
 	unsigned int wgen;
 };
 
+extern void dept_stop_emerg(void);
 extern void dept_on(void);
 extern void dept_off(void);
 extern void dept_init(void);
@@ -194,6 +195,7 @@ struct dept_ext_wgen { };
 
 #define DEPT_MAP_INITIALIZER(n, k) { }
 
+#define dept_stop_emerg()				do { } while (0)
 #define dept_on()					do { } while (0)
 #define dept_off()					do { } while (0)
 #define dept_init()					do { } while (0)
diff --git a/kernel/dependency/dept.c b/kernel/dependency/dept.c
index a0eb4b108de0..1de61306418b 100644
--- a/kernel/dependency/dept.c
+++ b/kernel/dependency/dept.c
@@ -187,6 +187,12 @@ static void dept_unlock(void)
 	arch_spin_unlock(&dept_spin);
 }
 
+void dept_stop_emerg(void)
+{
+	WRITE_ONCE(dept_stop, 1);
+}
+EXPORT_SYMBOL_GPL(dept_stop_emerg);
+
 enum bfs_ret {
 	BFS_CONTINUE,
 	BFS_DONE,
diff --git a/lib/debug_locks.c b/lib/debug_locks.c
index a75ee30b77cb..14a965914a8f 100644
--- a/lib/debug_locks.c
+++ b/lib/debug_locks.c
@@ -38,6 +38,8 @@ EXPORT_SYMBOL_GPL(debug_locks_silent);
  */
 int debug_locks_off(void)
 {
+	dept_stop_emerg();
+
 	if (debug_locks && __debug_locks_off()) {
 		if (!debug_locks_silent) {
 			console_verbose();
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
