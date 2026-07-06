Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7psIO4VJS2qzOgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Jul 2026 08:21:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEDA70CDE4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Jul 2026 08:21:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=sk.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1AD740AAB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Jul 2026 06:21:56 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 6316540A43
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 06:19:53 +0000 (UTC)
X-AuditID: a67dfc5b-c45ff70000001609-6c-6a4b48fd8945
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Mon,  6 Jul 2026 15:18:58 +0900
Message-Id: <20260706061928.66713-11-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260706061928.66713-1-byungchul@sk.com>
References: <20260706061928.66713-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0xTdxjG+Z9bD501x4rhiPGyGqbReI2Xd4kh6IftH2UG3aZGP2gjJ1Is
	F1sEMS4BBG1wJlhHiRSwVmwqFNRWjYpVrIqiUatFqBGoZR1YpWpYiyG21lbjt1+e53mfPB9e
	lpR20ymsIq9QUOXJlTJGTIkDE4wLonhdzuJ39T9Dn8dHQ09ZBwWhoIaC+nMWBjTWEzTc7y2n
	wNnWgsAT0iCoKUMQtXcicDtvkmC5WEZAjdfHQN2QXgT+u79CwNNOQ7R/mIDesREEJt9nAnwd
	hxFEdLvhpNHGQG2NE8Epbz8Jo/5XCC52DiCwm8sZ+K/6Egku30ToqjnCQOBpPQGGcjsNDXot
	Al2DlYI+nZaAFutv8LDaSECtnwHdhWTQ1x6MrWhtJ2Dc1CwCU2kq6B+5aBg014kg7F0CUUM+
	dLYMi6At8ISGroEeGt4OaRnw3DtEg/XFXQTBbi8BmmshCqz/xtwTjX0MXLd3UaCJBBF0Xhkk
	wHWtnoEBS5SGUv1HGs4Nu4n0LNxsu0zgymcRBlsaLQgHzxwkcWV1jG6PvCdxha0Y28cMFH5g
	5PGxRwvw1bp+ETZY9+KKOwEa28zz8OnrfgKfGg3RmfO3ildlCUpFkaBalLZDnP3JUUUU2Cft
	e/3ciUqRbWIVYlmeW8b3N6Z8x7A3owolsgw3h3e7x8k4J3GzeNvRIboKiVmSc83k/zYdpeL5
	yVw2//BwcTxDcal8U9NlKs4SbgXfesyP4sxzM/mW8x1fexJjelu4gYizlFvOv3x/j4p38pwt
	ke9wdDPfDqbyt8xuqhpJDCihGUkVeUW5coVy2cLskjzFvoU783OtKPZrpr/C266gUefvDsSx
	SDZBAulrc6S0vEhdkutAPEvKkiQ/zV2XI5VkyUv2C6r87aq9SkHtQNNYSpYsWTpWnCXldskL
	hd2CUCCovrsEm5hSitSrb68dEKWFFx/5Z+kfZR96IjMSKhnFpoDJeFaHZ0xpnyJuVq7/cfok
	dTJsGJxeaDyesfNC8I3ro+Lsjk1NN1rLvfnBxwk9f+4picy2fNiyecvGNPWiaWv+bzrwuLcx
	84w2+EtgvVblPt72Q3qSY9Z4gTXz08qKjDt+80iIu5G6fIVHRqmz5UvmkSq1/At0alP3ZwMA
	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0xTWRCAPeee3l661lxrozds1kc3ovG1LgGdjWZ9ROVE1JhoYqI/pNG7
	tlCQtAhiYhBqY0UlpUlLtKIsQiXlIVJFURuxruCK7ILoShBEYkUraNcKGh4VWxP/TL6Z+WYy
	P4ZjFPWSaE6bliHq09Q6FSsjsi0rjItDNDF5qb8yBsymHOju9Ungv9xGAsNDZgJnL1WxEHJc
	k4K57rQE7j/NI9BWU4mgd9iM4POYgwFTwwSBkLVJCkMjz6Rgy0Uw4WlCYG+3MtDZdpuBqiu5
	GD7WfmFh4G4Qga3Px0KRP5dAwHkSwZl+hxT89xLgXe9NCUz0vMbw9NMgAqfvCwZf4zEEIXsK
	nC91h8ft/7Mw1vovA0W2NgR/9vUwEPS/QHCl6TkCT0UeC68sVxno8E2Bx8MBFv62nWDhXftZ
	DO9rWSjJ80ig/eEAgmKHFUF/lweD8cIlFuzFdQQaXtyQQvvAOIZuuxVDZd1m6HX2E2ixlOLw
	uWHr8gxwFBlxOLzBYKu+iWHE6ZKuLkf0s6mAUJe7HlPToxBLq85VITo2akV0qNzIUJMlnN4d
	DDD0qDuLlrcMsnR0+AlLPZ9KCH1QKtCy46OYFrYupg1neqRb1+yUrdwr6rSZov6X35NkmjFv
	Pk73TD345kkbOoLcU/IRxwl8nDDetykfRXEsP0/o7BxhIqzkZwvuU/2SfCTjGL5jlnDSeYpE
	/Gm8Rmg5lhVxCD9XKCurJxGW88uE6kI/irDAzxIqaxu/7YkK12vGi3GEFXy88CzQTCxIVoIm
	uZBSm5aZqtbq4pcYUjTZadqDS/bsT61D4W9yHh4vvI6GOhK8iOeQarIcVm9MVkjUmYbsVC8S
	OEallMfMT0xWyPeqsw+J+v279Qd0osGLfuSIaoZ84w4xScHvU2eIKaKYLuq/dzEXFX0E3S+y
	ZEVXX3UpD2z46bd/ZD+YNk+yXWhaXpDgDV5sTsw5rFNeW3Ti0byVyT9PD0TlXF7/h/FDkut9
	gSW24mXf9pnb1sbpg493zWbNSmdw+m59fOivD0lYIqbfWXduQ2tzRheRrVtaqj7dPedo3MOu
	WPz21sShNe6FWbF07YNVg6tiXmtUxKBR/7qA0RvUXwEVU+f6SQMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
Message-ID-Hash: RS6RADCUTIOW2VQK5VCFI4BW5AKOQ4LF
X-Message-ID-Hash: RS6RADCUTIOW2VQK5VCFI4BW5AKOQ4LF
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: max.byungchul.park@gmail.com, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@
 kernel.org, dri-devel@lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v19 10/40] dept: apply sdt_might_sleep_{start,end}() to wait_for_completion()/complete()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RS6RADCUTIOW2VQK5VCFI4BW5AKOQ4LF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sk.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:max.byungchul.park@gmail.com,m:kernel_team@skhynix.com,m:torvalds@linux-foundation.org,m:damien.lemoal@opensource.wdc.com,m:linux-ide@vger.kernel.org,m:adilger.kernel@dilger.ca,m:linux-ext4@vger.kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:will@kernel.org,m:tglx@linutronix.de,m:rostedt@goodmis.org,m:joel@joelfernandes.org,m:sashal@kernel.org,m:daniel.vetter@ffwll.ch,m:duyuyang@gmail.com,m:johannes.berg@intel.com,m:tj@kernel.org,m:tytso@mit.edu,m:willy@infradead.org,m:david@fromorbit.com,m:amir73il@gmail.com,m:gregkh@linuxfoundation.org,m:kernel-team@lge.com,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:mhocko@kernel.org,m:minchan@kernel.org,m:hannes@cmpxchg.org,m:vdavydov.dev@gmail.com,m:sj@kernel.org,m:jglisse@redhat.com,m:dennis@kernel.org,m:cl@linux.com,m:penberg@kernel.org,m:rientjes@google.com,m:vbabka@suse.cz,m:ngupta@vflare.org,m:linux-block@vger.kernel.org,m:josef@toxicpanda.com,m:linux-fsdevel@vger.kern
 el.org,m:jack@suse.cz,m:jlayton@kernel.org,m:dan.j.williams@intel.com,m:hch@infradead.org,m:djwong@ kernel.org,m:dri-devel@lists.freedesktop.org,m:rodrigosiqueiramelo@gmail.com,m:melissa.srw@gmail.com,m:hamohammed.sa@gmail.com,m:harry.yoo@oracle.com,m:chris.p.wilson@intel.com,m:gwan-gyeong.mun@intel.com,m:boqun.feng@gmail.com,m:longman@redhat.com,m:yunseong.kim@ericsson.com,m:ysk@kzalloc.com,m:yeoreum.yun@arm.com,m:netdev@vger.kernel.org,m:matthew.brost@intel.com,m:her0gyugyu@gmail.com,m:corbet@lwn.net,m:catalin.marinas@arm.com,m:bp@alien8.de,m:x86@kernel.org,m:hpa@zytor.com,m:luto@kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:andi.shyti@kernel.org,m:arnd@arndb.de,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:rppt@kernel.org,m:surenb@google.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:j
 osh@joshtriplett.org,m:urezki@gmail.com,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:juri.lelli@redhat.co,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:chuck.lever@oracle.com,m:neil@brown.name,m:okorniev@redhat.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,skhynix.com,linux-foundation.org,opensource.wdc.com,vger.kernel.org,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com, kernel.org,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,redhat.co,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,garyguo.net,protonmail.com,umich.edu];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[165];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:from_mime,sk.com:email,sk.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8CEDA70CDE4

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
