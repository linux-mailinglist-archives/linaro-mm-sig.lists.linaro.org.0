Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJCOJYwC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:38:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9F2411085
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:38:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8639644A18
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:38:51 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 22B933F981
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-a4-6932876e5850
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:27 +0900
Message-Id: <20251205071855.72743-15-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUxTZxTHfe47nddcK847yYY2UROXqSiaMzMIGpY8HzeNi1GiNuud3FmK
	KcqLiQ6cjNoAdk1go7SAMmuFkmKrmxabSB0NL77U2WBlOMFo1SC4IS/Sgg5q/PY753/O73w5
	HKm8Ry/lZN0hSa9Ta1WMglIMzz/9ma5svbwuOJ0E42MGCqwuJwMGdw0Nk7FaEmbMARaqShC8
	9QUQVN8xk+C8WELAq9Y3DLy0lyOwRGpZsD9+Q0Ds5m0SfqkKIhh9PoDA5zjOwBPTJRLuPl4A
	ofGXDIy0MnDnxhCCSJ+PgB8bXbPl0DQBD+0RCnpMZwioamkjYMrexMLbhlwIND9loeufXhrc
	9zsQjIUGCXCWR0gweMcp8PV9CjV1/QwELj8ioLh2koaeQCcFXZbzFNz2ttAwOBCmYaIyCYI/
	V9AQNj1BUNLeSEGg4UMwR0ZZKHvWxkDofhuCP11/EOCKXCfhrGOYhu4Hr1joNdczED03e7k7
	2k1AafkUCyf6N0LstZUB21gKjJjG6IwMPFlaSWFnnRPhWNSM8AlPAf7tZJTAVywPWNzgPow9
	jtW48epzAvcNpWF300kGG4dDBO7vvcrgkVu3WNz5a4zC/usG9FXyLsUXGkkr50v6ten7FNml
	hovMQStf2DXYQRWjaYURcZwopIpD7fuNKCGO/b9fIeaYEVaJ4fAUOceJwjLRUxGhjUjBkcLd
	ZLFsqjIeLBK+Fo3eUmqOKWGFePNUBzvn5IVNosO66p0zWWxuvRYfT5htV92LxlkpbBTrjZNx
	pyjUJ4g/jU4Q7xY+EtsdYcqE+AY0rwkpZV1+jlrWpq7JLtLJhWu+zc1xo9l3sx+d3n0ZjQa3
	+5HAIdV8/lpBiqyk1fl5RTl+JHKkKpF/oV0nK3mNuuiIpM/dqz+slfL8KImjVEv49RMFGqWw
	X31IOiBJByX9+5TgEpYWI97uXjTvKWvLUkeabC2WM3opt2KLptCml/cu/yvxe6+vxXjkE6Vt
	29Zl0riuR7H52Df/bp/J2JCV37nH88OGGc3Z5oX+xRc6nI3G196072JZwY8zi790OfcwqdWe
	TTX25BcfpPtWKkLV6TvTPs/iZzqbb6zNLNlhteC/+YHMXf/ZVVRetjplNanPU/8PW5KGX2oD
	AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUhTYRTHfe599uw6Wl2W1KWibBBCoLmoOJCUEeGlKIqIXr7YTS853Ky2
	suyFUlvO9WazTWqWZjpCLW1auWokipap5LJSSjNhabKVUZo5t2wafTn8zvn/z5/z4TC04pFk
	HqNOOyzq0gSNksiwbMvq7GhtznJ1bH4rgNFwGnr6PBJ4l1mPYXTEiKGwqpJA0PZICkbHNQm8
	6MrC0HGvAkHfqBHB2ISNBoNzEkPQ3CyFkfEPUrBkIph0NSOwus00dHc8o6GyNpOCn9V/CHgb
	fyCw9HsIFAxlYhi2X0BwfcAmhaGmBPja90QCk72DFHT98iGwe/5Q4KnPQRC0pkJRSU1o3fqd
	wET7KxoKLB0IbvX30vBj6BOC2uaPCFx3sgh8zntAQ6dnJrwZHSbQYjlP4Ku7kIJv1QSKs1wS
	cLd5EdywmREMvHdRkH27ioD1hgOD89NjKbi9AQp6rGYKKhyboc8+gKE1r4QKnRty3Z8LtoJs
	KlS+UGC5+4SCcXu5NL4M8WOGS5gvr3lI8YbXQcJX3qxE/ITfjPiRsmyaN+SF2kbfMM2frTnK
	l7X6CO8ffUt4169izL8s4fjSXD/FX2mP5p3Xe6Vb1+2RxSWLGnW6qFu2Zq8sxWCsJQcL5cda
	+pvwGRSQmVA4w7EruJ6HTmqKCRvFdXeP01McwUZyNRcHJCYkY2i2cxGXM35pWpjNbuNMjw14
	ijG7hGu/3CQ1IYaRs6u4O4VR/zIXcRXV9dP28NDY0uWfZgW7kisyjUnykKwYhZWjCHVaulZQ
	a1bG6FNTMtLUx2KSDmgdKPRO9lOBK3VopDOhAbEMUs6Q1x9VqRUSIV2foW1AHEMrI+Q+Taxa
	IU8WMo6LugOJuiMaUd+A5jNYOVe+cae4V8HuFw6LqaJ4UNT9VykmfN4ZdJWPMQktUc72+O0d
	JZt2bV27eUPS7vPrcd33toC8ZZlT1TjxNFdFbgtFkXG/w9+5396bE5bfZT7tIYOJX7yDFd6F
	OaWO59dUL9cGXy04acqqyg0r1Z3wajuP7zs381ldoyYySXs5MZDUdndHfFxCCnNrYb551uLh
	TYf82OljYxkl1qcIqqW0Ti/8BQUTA21KAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WV24UDAOPZLKUHJOL3KVM2NXMAMTBJSC
X-Message-ID-Hash: WV24UDAOPZLKUHJOL3KVM2NXMAMTBJSC
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:21 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 14/42] dept: apply sdt_might_sleep_{start,end}() to dma fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WV24UDAOPZLKUHJOL3KVM2NXMAMTBJSC/>
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
	NEURAL_HAM(-0.00)[-0.924];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: 6D9F2411085
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Make dept able to track dependencies by dma fence waits and signals.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/dma-buf/dma-fence.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index b4f5c8635276..b313bb59dc9c 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -16,6 +16,7 @@
 #include <linux/dma-fence.h>
 #include <linux/sched/signal.h>
 #include <linux/seq_file.h>
+#include <linux/dept_sdt.h>
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/dma_fence.h>
@@ -798,6 +799,7 @@ dma_fence_default_wait(struct dma_fence *fence, bool intr, signed long timeout)
 	cb.task = current;
 	list_add(&cb.base.node, &fence->cb_list);
 
+	sdt_might_sleep_start(NULL);
 	while (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) && ret > 0) {
 		if (intr)
 			__set_current_state(TASK_INTERRUPTIBLE);
@@ -811,6 +813,7 @@ dma_fence_default_wait(struct dma_fence *fence, bool intr, signed long timeout)
 		if (ret > 0 && intr && signal_pending(current))
 			ret = -ERESTARTSYS;
 	}
+	sdt_might_sleep_end();
 
 	if (!list_empty(&cb.base.node))
 		list_del(&cb.base.node);
@@ -900,6 +903,7 @@ dma_fence_wait_any_timeout(struct dma_fence **fences, uint32_t count,
 		}
 	}
 
+	sdt_might_sleep_start(NULL);
 	while (ret > 0) {
 		if (intr)
 			set_current_state(TASK_INTERRUPTIBLE);
@@ -914,6 +918,7 @@ dma_fence_wait_any_timeout(struct dma_fence **fences, uint32_t count,
 		if (ret > 0 && intr && signal_pending(current))
 			ret = -ERESTARTSYS;
 	}
+	sdt_might_sleep_end();
 
 	__set_current_state(TASK_RUNNING);
 
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
