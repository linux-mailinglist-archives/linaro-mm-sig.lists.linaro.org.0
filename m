Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPP5CjED4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:41:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DF47A411177
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:41:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01FB140A10
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:41:36 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 7A8DE3F953
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-60-693287733c0e
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:50 +0900
Message-Id: <20251205071855.72743-38-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSb0xTZxTG99773re3nZVrxXjHRq5psphAxpCoOx+WjZll3LA/MXGftiWz
	yM1oLKDln5gtgqyFUWDG5XYO3YStYKVF9JYubGgsKCAg0E6pLNI006VjwbIECoyCcwXjl5Nf
	znPO83x5WFo3zaSwxqJSyVxkMOmJBmuim1pfKa3NMmbaZ7dAneUEnOtyE/BfciEIL9YhiK3c
	V4E9cJqGKf91Gtzd1RREw70MPAn9RcG3sh/BNedJAnf+3Ax3F/8hMCzbCNi/VzCE2yMY7Fe2
	g9zZS8EDZ7MKQl/LGC5FJxiYjZwmEB6yMqD8PpCIufsHBe6GCA3KwyADrVYHhsGeBxQ0XPYy
	UHV2mQG/b5SB0cFbGIabL2JouxegwDN2m4bOuR8JXLw2lhjnLyDwXrcgmHcsYbAu/MfAUKOP
	gtqZXgJWxxUKuiI3EhnuIIGR0IIKPIpMQzzUw8BIfIQCVwCDvFZH4Gx1EwKbxY6h7uYSDd6B
	ZRV8Ob0HVv89R6BpPAdirg4CnY+DCOZOxZjsbNHy22Miun9wI7Ft9BER44uTRPylOaQSW5Qy
	0eNME3+6+jclKh1fEbF1dYYWp4NXiTg3Pq4Sb51ZxWJrlUyLYdsQJXocJ/anfqR5PV8yGcsl
	86tvHNQUPPF1M0eqk45ZeudxFYo+X4/ULM/t5kcDa+gZf6dM4nUm3E5+amqFXudkbgfvaYww
	9UjD0twdga9daUoILLuVy+OHgx+u32DuZb7f20Wts5bby9fEx6inngLvuuzb8FEn9vK9+Abr
	uD38+frlDU+eu6Dmaxx95OnDC3yfcwqfQtoW9FwH0hmLygsNRtPujILKIuOxjEPFhQpKdK79
	i7WPe9C8/0A/4lik36T1Vewy6hhDeUllYT/iWVqfrH1kyjTqtPmGyuOSufhTc5lJKulHL7JY
	v12btVSRr+M+M5RKhyXpiGR+plKsOqUKvZmW59RubmfUqVvf+pwopS3xHBdOFqwDOx0vfRMS
	fnU0yMJx4XakvoxI6V3Ctlj6xKTt3dcm3mnL2HcmL+VwoC17Nmrbkn205eSh/cFP+n5uTH0v
	ayIpN0fYdzTVB2UPc9d2lGe+XXO/+IP8wSRS8f6M4PflHvQ2zHWnL+gMMT0uKTDsSqPNJYb/
	ATJsfF9vAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0hTcRTH+93XrqvlbQldCioGPZA0LYvTkwqiS+8XFUWPW150OK02tSyi
	5lqamdhiE12mWQ6bmjYtM1mNVfYwy0epVKbSWplbhrnETbNZ9M/hc873e76cPw6NS6vIybQ8
	Ll5QxvEKGSUmxBuXaEJUKfPkYe6GOZCqPQ0fOhwktKhtBHj6Uwm4UlZCwbCxSgSplmwSnrUm
	E9BwqxhBhycVwYDPiIO2eoSAYV2tCPoH34tAr0YwYq1FYGjU4dDW8BCHkko1Bj/Lf1PQ86gP
	gb7LQUFWt5qAXlM6ghynUQTdT9aAu6OGhJH2Lxi0/nIhMDl+Y+CwpSAYNsRAXkGFf93wgwJf
	/WscsvQNCK51tePQ192JoLL2IwJrUTIFnzPv4NDsGA9vPL0UPNdfoMDdeAWD7+UU5CdbSWh8
	2YMg16hD4HxnxUBzvYwCQ66FgOrO+yJo7BnC4INBh0GxZQN0mJwE1GUWYP5z/a7bk8CYpcH8
	5SsG+tIaDAZNZtGKQsQNaDMIzlxxF+O0TcMUV3K1BHE+rw5x/YUanNNm+ttHrl6cO1txjCus
	c1Gc1/OW4qy/8gnuRQHL3TjvxbhL9SFcdU67aPPK3eKlkYJCnigo5y4/II4esVWSR9SBx7U1
	fcQZ5B6bhgJololgsy1viVGmmFlsW9sgPspBzHS24qKTTENiGmeap7Epgxl+gaYnMgfZ5y3b
	Rz0EM4O13ynDRlnCLGQ13nrsX+Y0trjc9jcnwD/Xt3r/spRZwOalDZCZSJyPxphRkDwuMZaX
	KxaEqmKik+Lkx0MPHY61IP87mU4NXbqH+pvX2BFDI9k4ie1YuFxK8omqpFg7YmlcFiRxKcLk
	Ukkkn3RCUB7er0xQCCo7mkITskmStTuFA1Imio8XYgThiKD8r2J0wOQz6OTq+C2eg/ZSuOFb
	fLSyKKpzU/jp9Ii6wPW8OjBy9bjHl29+Z51jkiPOlT8NnJlR01SUrndVWc2+hNzZ13OGaMUy
	R9OivWfN3K6y9SH8g31hp9zRWz/t3zC1YO+q4Hsts9flvaya8e2upvXEvoTbn9/N3zNxQpG2
	a5smKupV8I5v08NeyQhVNB8ejCtV/B+AnKgLSgMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OALKHLHADPVZCQHE3NKE6PHPJW3BKMWJ
X-Message-ID-Hash: OALKHLHADPVZCQHE3NKE6PHPJW3BKMWJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:33 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 37/42] dept: call dept_hardirqs_off() in local_irq_*() regardless of irq state
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OALKHLHADPVZCQHE3NKE6PHPJW3BKMWJ/>
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
	NEURAL_HAM(-0.00)[-0.922];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: DF47A411177
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For dept to function properly, dept_task()->hardirqs_enabled must be set
correctly.  If it fails to set this value to false, for example, dept
may mistakenly think irq is still enabled even when it's not.

Do dept_hardirqs_off() regardless of irq state not to miss any
unexpected cases by any chance e.g. changes of the state by asm code.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/irqflags.h | 14 ++++++++++++++
 kernel/dependency/dept.c |  1 +
 2 files changed, 15 insertions(+)

diff --git a/include/linux/irqflags.h b/include/linux/irqflags.h
index d8b9cf093f83..586f5bad4da7 100644
--- a/include/linux/irqflags.h
+++ b/include/linux/irqflags.h
@@ -214,6 +214,13 @@ extern void warn_bogus_irq_restore(void);
 		raw_local_irq_disable();		\
 		if (!was_disabled)			\
 			trace_hardirqs_off();		\
+		/*					\
+		 * Just in case that C code has missed	\
+		 * trace_hardirqs_off() at the first	\
+		 * place e.g. disabling irq at asm code.\
+		 */					\
+		else					\
+			dept_hardirqs_off();		\
 	} while (0)
 
 #define local_irq_save(flags)				\
@@ -221,6 +228,13 @@ extern void warn_bogus_irq_restore(void);
 		raw_local_irq_save(flags);		\
 		if (!raw_irqs_disabled_flags(flags))	\
 			trace_hardirqs_off();		\
+		/*					\
+		 * Just in case that C code has missed	\
+		 * trace_hardirqs_off() at the first	\
+		 * place e.g. disabling irq at asm code.\
+		 */					\
+		else					\
+			dept_hardirqs_off();		\
 	} while (0)
 
 #define local_irq_restore(flags)			\
diff --git a/kernel/dependency/dept.c b/kernel/dependency/dept.c
index 0f4464657288..a17b185d6a6a 100644
--- a/kernel/dependency/dept.c
+++ b/kernel/dependency/dept.c
@@ -2248,6 +2248,7 @@ void noinstr dept_hardirqs_off(void)
 	 */
 	dept_task()->hardirqs_enabled = false;
 }
+EXPORT_SYMBOL_GPL(dept_hardirqs_off);
 
 void noinstr dept_update_cxt(void)
 {
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
