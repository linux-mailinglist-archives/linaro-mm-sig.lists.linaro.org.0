Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEbREqYC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:39:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A5E4110C2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:39:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C51B44A67
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:39:17 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id ACABD3F97A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c45ff70000001609-1e-6932876fec61
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:31 +0900
Message-Id: <20251205071855.72743-19-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAz3Sa0xTdxgGcP/nTrHL8YDxyJJBmqiEBLyEzde4kW0f5smyKRGTJfrBVTmB
	hnJJuYmJEbmspTIxJpVhGRTQytoqXSsIKIgoiAKhDJQyubRaEQaMpVAIl41hzfbtl+fJ+3x6
	GZxzkiGMIiVDVKXIlTJKQkhmN1dFpqr3KfZYBsNAU3geRsY9JPgWNASU11ko0NjKSOgayiPA
	cduMYNynQbC0qsehsGmdgIXllzToLiBwOh7gMP3Ii0Dn9lBQOnWBgDljMYJrE3oapjoOwdDi
	DAKj5x8MPG1qBJXVdgpWe/twKNU5EFS5R3HwTrkQ3OkcQ9BSm0fBm8v1OAx4PoBB3xwFs/3l
	GPxppcCQ10JCfk0dBU2uZhr6p9cwMNu+hXHjBAFXf90G+tJ8DHS37mHQUzNCgL53gIR1QyqM
	lugIGH/yAwl3c1002IY7ECwMujHQNPsIsL1+QUJn4ysMiq31JIxZ1knI1S+RUPfWiUF3ZxcB
	L3tLaOhrvkXCjaF+DNwuJwn23h7883jBZG/ABEuFBQmPZuZwocCeLdzonqGElkUDITyr5oWm
	a6O0YLBlCgWPZ0nBXhsh1NyfwoTfpz8TbKYiSrB5r9BC1eokHht5XPJpvKhUZImq3THfSxKf
	arrwtHr6zE89F+lcVEBpUQDDs9H85Njb/629WYG/M8Xu4p3OZb+D2TDe/uMEqUUSBmcHQnn1
	8iV/EcQe5n+51LJhhiHYHXy1j3sXS9lP+ErH3/j7zVDebG3zO2Aj1w2t+M2xH/OV2iX/Js9W
	BvDm4Vb0/mA7/7DWSVxGUgPaZEKcIiUrWa5QRkcl5qQozkSdTk22oY1/M55bO9GIvI64dsQy
	SLZZ2pa9V8GR8qz0nOR2xDO4LFg6o9yj4KTx8pyzoir1pCpTKaa3ow8ZQrZNum8xO55jE+QZ
	YpIopomq/1qMCQjJRVys7iY5yYZvDe12Fzg6+5KOtWPSsPDWr+p2rRRrAw3lCUHf1F43ntqy
	asr/q+hI2Y7CUyutTnPFwUNe7f6Lpj88NdFBMR+92C2XHtmSt2n7Fw+D59vCRr4+oQ5sUBsG
	unYedf02//OBKut3wXFRZYNzw7FfZvpKDpuPc57zQc+tgfMyIj1RvjcCV6XL/wUW9S5kawMA
	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUhTcRTG+997d+91NbksoZtFxihCoRcr40AvFL34J+jlQxBFb0OvOTZX
	bWVZRKkNl5lsi81qlS/pKrUyl6nZaCgO06KZllKaWsuSmUa5xOlcy+jL4Xee55yH8+GwpLRa
	FMkq1McFjVquktFiSrx9deZiddZyxbIaxyrQ685BV49HBO/SnRT4RvQU3HhYTkPAWs2AvvKa
	CJo6MihwPyhD0OPTIxgdt5Kgqw1SEDC5GBgZ+8CAOR1B0OFCYGk1kdDpfk5C+eN0An5VTNLg
	bfiJwNznoSFvIJ2CYVsOguv9VgYGGuPhe0+dCILdXwno+D2IwOaZJMDjzEIQsCghv8geWrf8
	oGH81WsS8sxuBIV93ST8HOhF8Nj1EYHjbgYNXwxVJLR5wqHdN0zDC/MlGr633iBgqIKGggyH
	CFpfehHctJoQ9L93EJB5+yENlpuVFNT2PmWg1TtBQJfFREBZ5TbosfVT0GIoIkLnhqYezQJr
	XiYRKt8IMN+vI2DMVsqsL0F4VJdL4VL7EwLr3gRoXH6rHOFxvwnhkZJMEusMobZhcJjEF+wn
	cUnLII39vrc0dvwuoHBzEY+LL/oJbHy1GNde72Z2btgrXpMoqBSpgmbpukPi5Bf6JvJoFXPq
	6stLzHl0gc5GYSzPreSz79wi/zLNLeI7O8emOIKbz9sv94uykZglubYoPmssd8qYyW3n7+U6
	QsyyFLeQL/JJ/8oSbhWf7w6Q/zKj+LIK5xSHhXRzh3+KpVwcn589KjIgcQGaVooiFOrUFLlC
	FbdEq0xOUytOLUk4klKJQu9kOzthrEEjbfH1iGORbIbEeTJWIRXJU7VpKfWIZ0lZhGRQtUwh
	lSTK004LmiMHNSdUgrYezWEp2SzJ1t3CISl3WH5cUArCUUHz3yXYsMjz6Izm2Ofhwsa7Ow+0
	b2zOev/JfaWhSmrGOfIcYt/+mNwnSfS2roSBPcoOm/JeuPQsqtu9ZcjvWtFekTIvfn70M+Fi
	tCtGP7R5RySONU46JxKnb9poKkiYu8C+ls1bKQTRbBRl8C5SNX8xru97F7fLuCCIe4uftiQn
	eetcH8Krt8oobbI8NobUaOV/AFFnTjtKAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L4U42ID7WRIJ4QPMA37MYDTRCTNFCXQ5
X-Message-ID-Hash: L4U42ID7WRIJ4QPMA37MYDTRCTNFCXQ5
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:23 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 18/42] dept: apply timeout consideration to waitqueue wait
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L4U42ID7WRIJ4QPMA37MYDTRCTNFCXQ5/>
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
	NEURAL_HAM(-0.00)[-0.925];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: 21A5E4110C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that CONFIG_DEPT_AGGRESSIVE_TIMEOUT_WAIT was introduced, apply the
consideration to waitqueue wait, assuming an input 'ret' in
___wait_event() macro is used as a timeout value.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/wait.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/wait.h b/include/linux/wait.h
index 7815caf61a15..60bed80198e2 100644
--- a/include/linux/wait.h
+++ b/include/linux/wait.h
@@ -306,7 +306,7 @@ extern void init_wait_entry(struct wait_queue_entry *wq_entry, int flags);
 	struct wait_queue_entry __wq_entry;					\
 	long __ret = ret;	/* explicit shadow */				\
 										\
-	sdt_might_sleep_start(NULL);						\
+	sdt_might_sleep_start_timeout(NULL, __ret);				\
 	init_wait_entry(&__wq_entry, exclusive ? WQ_FLAG_EXCLUSIVE : 0);	\
 	for (;;) {								\
 		long __int = prepare_to_wait_event(&wq_head, &__wq_entry, state);\
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
