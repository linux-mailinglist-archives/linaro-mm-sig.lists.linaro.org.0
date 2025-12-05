Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAkFMwwD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:41:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA6D41113B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:41:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D68444B66
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:40:59 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 2A75E3F93E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c45ff70000001609-c6-6932877297a9
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:45 +0900
Message-Id: <20251205071855.72743-33-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0xTZxjH955bTytNTioZZ7qFrQuZ01DBiHk+LNPEXV4zjVO3fdAls5ET
	OaEgaS2XMZPWiVydTU2L0o2b2jE4AjlgJkK1A+xwiBY10k0Bi4wNC2NWLqHIXGHz2y/P//n/
	ni8PS2ru06tYMfOwYMzUG7SMilJNxtQmmgo3iEnDo0q4Z/VSMDNdRMG3TRIDi64fFVAkn6Gh
	Z+AoBf7GBgTDM0UI5hZcJCzafQqYnr+vAIcVwXOPD4Gz305CwH+VBKnVSkCoK4zAERxloHzc
	SsGUuwzB5HA7DQOzEwjco/8QMOotRBBy/s3AQt8tEsodfgQ1wUESwuMPEbT6hhD8brtIwl/N
	DPTfCCH4+mwTA87vZAraHl5WQH/oGQEPnHYCGuQd0GurJaK3GHBcaCdg3l2vALclAUbqKhQw
	eNJBQePkLRquD92jITRmZ0D+9RqC6btBAqSyMRLkR9HA89s6qDl+joIzlQ8Y6PBcp8B3aYSA
	suaLNAxJz2mwuOZo8Ht7aWj6I0BAr6+H2pKKC24vMliqlBBeiNgRLrBFqWtiisTHWnKwZ7aa
	wr/U8vhccYTAbRWDClwtm3FL3Vp8tmOcwDXhGRrL9cUMlsN2xceJe1XvpAoGMVswrn93vyrt
	fJOLyfK8ndv91IYsKBJfgpQsz23kT7eeoF5wsDeMlpjh3uIDgXlyiWO51/mWE2N0CVKxJHcn
	ni+c/yYasOxKbhf/+GTK0g7FJfDlQfdyV81t4mfLuv93xvMNzd5ljzI6dwxEllnDpfBVJXPL
	Tp77XslfqW5F/xVe4X+qC1A2pK5GL9UjjZiZnaEXDRt1aXmZYq7uwKEMGUVfzn3k2b5LKOzf
	04k4Fmlj1N6cZFFD67NNeRmdiGdJbax6wpAkatSp+rwvBeOhL4xmg2DqRKtZShun3jCbk6rh
	DuoPC+mCkCUYX6QEq1xlQSuclwcMTz4yp5jvVuYX19HmI7oE6dPGN2ML8O6afMtW70pN0aAu
	uXT3nkef3Jz+ak3G/sdJ78esiSRU0duPVb3286b2bX3pI5+Xfmh8ujkrd1/LTsn1cofId74X
	t/jEl6/R9um24kBp/A8TPfZTf5oPbpmq+CC9Szr6KhR/9oZ1rj1JS5nS9MlrSaNJ/y8NsqoD
	bgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSbUxTZxT2vV+9NFZuKgl3LgtLE2NmgoKh5sw5Hf4Yb7bMaMziNBqp80Yu
	lI+0CpQELWADotParK1aFWTSGKiCrQ5QG7Boo2MEGCr4gUDSsVVAFmhLWqisYPxz8pzzfOT5
	cVhS3kKvYsW8I4ImT6VWMFJKuv2rimRN5QYxpdX4GVQZjsPrYR8Nz8s6KAgGqii41ORgIGpr
	kUCV8wINjwfKKei92YhgOFiFYHbORoKhbYGCqMkrgUD4lQTMZQgW3F4Elj4TCYO97SQ4bpcR
	MNP8noHxzmkE5lEfA1Z/GQVT9tMILo7ZJOB/lAGTw/doWBj6h4CB0AQCu+89Ab6OSgRRSw7U
	1Llidst/DMx195BgNfciuDo6RMK0fwTBbe8bBO7r5Qz8bbxDQr9vBTwNTjHwxHyKgcm+SwS8
	a2agttxNQ9+f4wgu20wIxl66Caj4rYkBy2UnBW0jdyXQNz5PwGuLiYBG5w8wbB+joMtYR8Tq
	xlS3EsFmrSBi418CzDfuERC2N0i+qUd41nCGwg2u3wls+CvKYMcVB8JzERPCgfoKEhuMsbVz
	YorEJ1xFuL5rgsGR4DMGu0O1FP6jjsfXTkYIfK47GbddHJLsSN8r3XxIUIuFgmb9lkxpVn2T
	jSlwf1H8cMaI9CiSVI3iWJ5L40e7ptEiZrg1/OBgmFzECdznvOuXMboaSVmS60/iK8NnYgTL
	ruR28m/PKhc1FLeat47al7wybiMfOv2Q+pCZxDc2dyzlxMXu5oHIEpZzSr6mepY2ImktWtaA
	EsS8wlyVqFau0+Zk6fLE4nU/5+c6Ueyd7KXz51pRoD/DgzgWKZbLOopSRTmtKtTqcj2IZ0lF
	gmxCnSLKZYdUuhJBk39Ac1QtaD3oU5ZSJMq+2y1kyrnDqiNCjiAUCJqPLMHGrdKj4/md0/s3
	WnhdyX1vaFw4tvqqN/vr3LMuPx0OvTp/YVt556Zfv9WXlkhd4OH2rHek1/I9p5KzD2ZHrDjJ
	v4tVzswlNBpbdJOYOJ8RMKS074j/XnTqg/a0lfplax37hn5892Bhq3JXfOikhyh6Ef3kJ++X
	baU1L05sl8TTTYZMBaXNUqWuJTVa1f8LVNtlSgMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JQN26ZMLKJ5PTXRCIS6LEW3DBHZZ2LOK
X-Message-ID-Hash: JQN26ZMLKJ5PTXRCIS6LEW3DBHZZ2LOK
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:30 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 32/42] completion, dept: introduce init_completion_dmap() API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQN26ZMLKJ5PTXRCIS6LEW3DBHZZ2LOK/>
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
	NEURAL_HAM(-0.00)[-0.919];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: 6BA6D41113B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, dept uses dept's map embedded in task_struct to track
dependencies related to wait_for_completion() and its family.  So it
doesn't need an explicit map basically.

However, for those who want to set the maps with customized class or
key, introduce a new API to use external maps.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/completion.h | 40 +++++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/include/linux/completion.h b/include/linux/completion.h
index 4d8fb1d95c0a..e50f7d9b4b97 100644
--- a/include/linux/completion.h
+++ b/include/linux/completion.h
@@ -27,17 +27,15 @@
 struct completion {
 	unsigned int done;
 	struct swait_queue_head wait;
+	struct dept_map *dmap;
 };
 
-#define init_completion(x)				\
-do {							\
-	__init_completion(x);				\
-} while (0)
+#define init_completion(x) init_completion_dmap(x, NULL)
 
 /*
- * XXX: No use cases for now. Fill the body when needed.
+ * XXX: This usage using lockdep's map should be deprecated.
  */
-#define init_completion_map(x, m) init_completion(x)
+#define init_completion_map(x, m) init_completion_dmap(x, NULL)
 
 static inline void complete_acquire(struct completion *x, long timeout)
 {
@@ -48,8 +46,11 @@ static inline void complete_release(struct completion *x)
 }
 
 #define COMPLETION_INITIALIZER(work) \
-	{ 0, __SWAIT_QUEUE_HEAD_INITIALIZER((work).wait), }
+	{ 0, __SWAIT_QUEUE_HEAD_INITIALIZER((work).wait), .dmap = NULL, }
 
+/*
+ * XXX: This usage using lockdep's map should be deprecated.
+ */
 #define COMPLETION_INITIALIZER_ONSTACK_MAP(work, map) \
 	(*({ init_completion_map(&(work), &(map)); &(work); }))
 
@@ -90,15 +91,18 @@ static inline void complete_release(struct completion *x)
 #endif
 
 /**
- * __init_completion - Initialize a dynamically allocated completion
+ * init_completion_dmap - Initialize a dynamically allocated completion
  * @x:  pointer to completion structure that is to be initialized
+ * @dmap:  pointer to external dept's map to be used as a separated map
  *
  * This inline function will initialize a dynamically created completion
  * structure.
  */
-static inline void __init_completion(struct completion *x)
+static inline void init_completion_dmap(struct completion *x,
+		struct dept_map *dmap)
 {
 	x->done = 0;
+	x->dmap = dmap;
 	init_swait_queue_head(&x->wait);
 }
 
@@ -136,13 +140,13 @@ extern void complete_all(struct completion *);
 
 #define wait_for_completion(x)						\
 ({									\
-	sdt_might_sleep_start_timeout(NULL, -1L);			\
+	sdt_might_sleep_start_timeout((x)->dmap, -1L);			\
 	__wait_for_completion(x);					\
 	sdt_might_sleep_end();						\
 })
 #define wait_for_completion_io(x)					\
 ({									\
-	sdt_might_sleep_start_timeout(NULL, -1L);			\
+	sdt_might_sleep_start_timeout((x)->dmap, -1L);			\
 	__wait_for_completion_io(x);					\
 	sdt_might_sleep_end();						\
 })
@@ -150,7 +154,7 @@ extern void complete_all(struct completion *);
 ({									\
 	int __ret;							\
 									\
-	sdt_might_sleep_start_timeout(NULL, -1L);			\
+	sdt_might_sleep_start_timeout((x)->dmap, -1L);			\
 	__ret = __wait_for_completion_interruptible(x);			\
 	sdt_might_sleep_end();						\
 	__ret;								\
@@ -159,7 +163,7 @@ extern void complete_all(struct completion *);
 ({									\
 	int __ret;							\
 									\
-	sdt_might_sleep_start_timeout(NULL, -1L);			\
+	sdt_might_sleep_start_timeout((x)->dmap, -1L);			\
 	__ret = __wait_for_completion_killable(x);			\
 	sdt_might_sleep_end();						\
 	__ret;								\
@@ -168,7 +172,7 @@ extern void complete_all(struct completion *);
 ({									\
 	int __ret;							\
 									\
-	sdt_might_sleep_start_timeout(NULL, -1L);			\
+	sdt_might_sleep_start_timeout((x)->dmap, -1L);			\
 	__ret = __wait_for_completion_state(x, s);			\
 	sdt_might_sleep_end();						\
 	__ret;								\
@@ -177,7 +181,7 @@ extern void complete_all(struct completion *);
 ({									\
 	unsigned long __ret;						\
 									\
-	sdt_might_sleep_start_timeout(NULL, t);				\
+	sdt_might_sleep_start_timeout((x)->dmap, t);			\
 	__ret = __wait_for_completion_timeout(x, t);			\
 	sdt_might_sleep_end();						\
 	__ret;								\
@@ -186,7 +190,7 @@ extern void complete_all(struct completion *);
 ({									\
 	unsigned long __ret;						\
 									\
-	sdt_might_sleep_start_timeout(NULL, t);				\
+	sdt_might_sleep_start_timeout((x)->dmap, t);			\
 	__ret = __wait_for_completion_io_timeout(x, t);			\
 	sdt_might_sleep_end();						\
 	__ret;								\
@@ -195,7 +199,7 @@ extern void complete_all(struct completion *);
 ({									\
 	long __ret;							\
 									\
-	sdt_might_sleep_start_timeout(NULL, t);				\
+	sdt_might_sleep_start_timeout((x)->dmap, t);			\
 	__ret = __wait_for_completion_interruptible_timeout(x, t);	\
 	sdt_might_sleep_end();						\
 	__ret;								\
@@ -204,7 +208,7 @@ extern void complete_all(struct completion *);
 ({									\
 	long __ret;							\
 									\
-	sdt_might_sleep_start_timeout(NULL, t);				\
+	sdt_might_sleep_start_timeout((x)->dmap, t);			\
 	__ret = __wait_for_completion_killable_timeout(x, t);		\
 	sdt_might_sleep_end();						\
 	__ret;								\
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
