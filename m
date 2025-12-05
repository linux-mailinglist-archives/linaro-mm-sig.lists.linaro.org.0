Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNUaOnAC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:38:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A561411051
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:38:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8869B4494E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:38:23 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id BD6DE3F93E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c45ff70000001609-25-6932876cc6fb
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:23 +0900
Message-Id: <20251205071855.72743-11-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0hTcRiH+5/7RpPTup3ygzGKILCaWLxE96LOl8DqWwU29KTDaTIvZVB5
	SbyV1mhFnizTXOpOGbMwV0tbNJKSZra2LmYz08qVYDpxc9lc9O15fz/e5/3yMrjyE7mU0WZk
	C/oMjU5FyQn5z7l1seklcdq1DW3R8LF/kIS3BZ0EXG2RKAiJbTSUWq6Q8NxdSIDzjhlB/0Qp
	gsmgiENx+wwBIYODhhmbA4HH2YGDdK8Ag5GnYwiM3kEKLn8vIGDUdBZB9ZBIw8/+hyS4/T4E
	psE/GIQupcH1ulYKgt2vcLjh7cPB1lhIwZuJUQq6jBUU/LpLQW2hjYSelyMIakQDgqH3NgyK
	6lsoaP9spcFs2RO+QoF4+RsGxtsPMZgyNdMgdveSMNBYTcO0Vw0O8zANfVVGAizvniEYf+PF
	QDo7hEOpdSKcfXlLwiNbFwGloXEEjgcDGPRar1LwSZohIV+cJKFl2INBV3UTAR+6q2h4Zb1N
	QoO7BwPvZw8J/srorcl88esQxUvXJMQHAwbEjzcU4Xzx+fD41DeK84EJF8Xb/LUEf7MsgPEX
	umP59uo+mj/z+D3N11py+PpH3zHe0lxG8ZYxA52w6oB8Y7Kg0+YK+jWbD8tTg/ZyLNM27/g3
	lxPlo9aociRjODaeK3sxQP/nCqtIzjLFruQ8nil8lhewy7jWc0PhXM7gbG8MVzJVGSnms6nc
	E9sHapYJdgU3IlZGRAp2PecO/MD/SWM4893OCMvCudEdiLCSXcddL5+MSDm2XsYV2avQv4Ul
	3JNGD3EeKWrRnGak1Gbkpmu0uvjVqXkZ2uOrk46mW1D460wnpw8+QGPO/XbEMkg1V9F5TK1V
	kprcrLx0O+IYXLVA4dOt1SoVyZq8E4L+aKI+Rydk2VE0Q6gWK+L8x5KVbIomW0gThExB/7/F
	GNnSfBTrujWMFu5zHCE2HX7e4dsZ9Espdet27zaJPunC/fKuva6YHVHbEtOazb3bE5eNdRiy
	ZdEbmrZsP1fhMsdyCcWK05nzS56ZatTxPTmu6U3xnc6or3UDNbukg/U31BebflcuYmT72OyF
	04e+npqZnNOXlJDS5nFVGTcnLY/bW5T2R0VkpWrUq3B9luYvacPVVnEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0xScRTH+917uSALu5Krm9UstlYrH9lrp8d6/OXtYfVPq9UfRXWXJKiD
	Qm290EjT8sEGrvBdslQqk8qosYiW056YGWaZYkSamD18DJQMbf1z9jnf7znfnT8ODxfe54Tx
	JInHWHmiWCoi+QR/+9qMSGnmMsnSRmcUZKnPwMdOFwfeqawEDA1mEVB0y0iCX1/Phay6yxxo
	dKQTYL9Zg6BzKAvByKgeB7V5nAC/poELg94PXNCqEIxbGhDomjU4tNkf4WC8o8Lgd+0fEvqe
	/EKgdbpIKOxVETBguIjgilvPhd6nsdDf+ZAD4x1fMXAMexAYXH8wcFkzEfh1CVBaYQqs636Q
	MPryNQ6FWjuCcmcHDr96uxDcafiEwHI9nYQv+XdxaHEFw9uhARKatDkk9DcXYfC9loSydAsH
	ml/0ISjWaxC42y0YZFy9RYKuuI4Ac9cDLjT3jWHwUafBoKYuDjoNbgKe51dggXMDU7dngr4w
	AwuUHgy0Nx5i4DVUczdWImZEnUsw1aZ7GKN+4ycZY4kRMaM+DWIGKzNwRp0faJ94BnDmnCmF
	qXzuIRnfUCvJWIbLCOZZBc1cu+DDmIKXkYz5Sgd356a9/HWHWalEycqj1x/gx4/asrFkS0hq
	T6sdnUWm4GwUxKOpFXTOAz1ngklqId3W5sUnOJSaR5suuQM6n4dTLeF0pjd30phOxdOPLR/I
	CSaoBXSfPpc7wQJqFe3wfcP/hYbTNbXWSQ4K6FqHb5KF1Eq6NHuEk4/4ZWhKNQqVJCplYol0
	ZZQiIT4tUZIadShJVocC/2Q4NVZwHw22xNoQxUOiqQJrSoxEyBErFWkyG6J5uChU4JEulQgF
	h8VpJ1h50n75cSmrsKHZPEI0U7BlN3tASB0RH2MTWDaZlf93MV5Q2Fl0dEl9knqOLa87aVrB
	Dr45TzVPtpgWtRelaPrfl3itqze01+oiTz7euk8Ys2bLdQ9efFqaXL8rr7DE6WvtXu8OyUzV
	fQ6PcLzSh8maFjl75nYFn/fPj6iyW29vi3Ziyu6D0dde7YlLL1HOmHW8a/mijhkVm29GTHeZ
	q4psQeU/jWtFhCJeHLMYlyvEfwHk5RxMSwMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RY2QJXZRFURI2CTRUROOOVNCKYNKWNVD
X-Message-ID-Hash: RY2QJXZRFURI2CTRUROOOVNCKYNKWNVD
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:19 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 10/42] dept: apply sdt_might_sleep_{start,end}() to wait_for_completion()/complete()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RY2QJXZRFURI2CTRUROOOVNCKYNKWNVD/>
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
	NEURAL_HAM(-0.00)[-0.928];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: 8A561411051
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Make dept able to track dependencies by wait_for_completion()/complete().

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/completion.h | 30 +++++++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/include/linux/completion.h b/include/linux/completion.h
index fb2915676574..bd2c207481d6 100644
--- a/include/linux/completion.h
+++ b/include/linux/completion.h
@@ -10,6 +10,7 @@
  */
 
 #include <linux/swait.h>
+#include <linux/dept_sdt.h>
 
 /*
  * struct completion - structure used to maintain state for a "completion"
@@ -26,14 +27,33 @@
 struct completion {
 	unsigned int done;
 	struct swait_queue_head wait;
+	struct dept_map dmap;
 };
 
+#define init_completion(x)				\
+do {							\
+	sdt_map_init(&(x)->dmap);			\
+	__init_completion(x);				\
+} while (0)
+
+/*
+ * XXX: No use cases for now. Fill the body when needed.
+ */
 #define init_completion_map(x, m) init_completion(x)
-static inline void complete_acquire(struct completion *x) {}
-static inline void complete_release(struct completion *x) {}
+
+static inline void complete_acquire(struct completion *x)
+{
+	sdt_might_sleep_start(&x->dmap);
+}
+
+static inline void complete_release(struct completion *x)
+{
+	sdt_might_sleep_end();
+}
 
 #define COMPLETION_INITIALIZER(work) \
-	{ 0, __SWAIT_QUEUE_HEAD_INITIALIZER((work).wait) }
+	{ 0, __SWAIT_QUEUE_HEAD_INITIALIZER((work).wait), \
+	  .dmap = DEPT_MAP_INITIALIZER(work, NULL), }
 
 #define COMPLETION_INITIALIZER_ONSTACK_MAP(work, map) \
 	(*({ init_completion_map(&(work), &(map)); &(work); }))
@@ -75,13 +95,13 @@ static inline void complete_release(struct completion *x) {}
 #endif
 
 /**
- * init_completion - Initialize a dynamically allocated completion
+ * __init_completion - Initialize a dynamically allocated completion
  * @x:  pointer to completion structure that is to be initialized
  *
  * This inline function will initialize a dynamically created completion
  * structure.
  */
-static inline void init_completion(struct completion *x)
+static inline void __init_completion(struct completion *x)
 {
 	x->done = 0;
 	init_swait_queue_head(&x->wait);
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
