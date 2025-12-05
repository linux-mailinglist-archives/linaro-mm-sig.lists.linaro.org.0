Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJxyN2UD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F514111AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3BCA4462B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:42:28 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id CF4E33F93E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-fc-69328776c165
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:55 +0900
Message-Id: <20251205071855.72743-43-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUxTZxSHfe/He28ba25qs91pIlpjSNzGhIA5JItiovHGmPhtFrdMuvUG
	bizVFKRioinRFiTYNGgxlvBRxCIFJquyicyMsVECcdmoH9StDiFS6JBKmgKhlrFS9b8n55zf
	k5OTw5LKYXoNK+mLRINeo1NjOSWfXtn4qbEsQ9piqVNBYOQlDeauJQoWq7wM2EsRLD3wIpj6
	NYLgWqiUAkewhoFQ326YHummwfXyPwIWq0/AVPUMhkjoBYK73n8QjNs6SQh3YBh6OIXgwo3b
	GKprPRR0vbjPwNBUnEjIMCy43Ay4TJsgPpoO3tYJBr6b/oOGkX4LDdHHowS0VQZJePDXx+C0
	NFFQvhhFYKqZp+H2hJ+AAUcLBXPWtdAebsRwJRxMrDnnIsE1+5oBX08DAcEnFgI6LjoYaKlv
	RtD5sxlB/+UeAm5GwySUTXZjCFj/pcDS9D0BnranGCYctQRc8TVgeFpVjyHW3Ifg9x8GE5eI
	l2OoKbUmLH3zDNRG0yHa6sYQtkXpnBzB7FvEQltdGxLexKqQYLYlaLCRF5ouxQihy/GcERo8
	p4U7tzYLN34KEYIzMksLHvclLDjfTJJC12i24DTZSaFu4MD+lGPyz7WiTioWDZ9ty5Xn+3/z
	06c6ZWd+LF9iTGiMqUAylucy+fszMfSevY3XqGXGXCrv9y+Qy6zi1vN3LgfpCiRnSe5RCl+2
	YE02VnMiP1ltwstMcZv49sqBZFjBbeXtobF30hS+taMnOS9brg/Hkqzksvj6ivmklOdqZPxk
	pZl8G/iI/+WWn7IhRQNa4UZKSV9coJF0mWn5JXrpTNq3Jws8KPFurnPxL++hyJ+HehHHIvVK
	RY8xXVLSmuLCkoJexLOkWqV4pdsiKRVaTclZ0XDyuOG0TizsRWtZSv2hImPOqFVyeZoi8YQo
	nhIN77sEK1tjQhmxXN/53KvtK3DLHmPO1yPEhcDhrFlpaOMXAdeqnRu8ewO+5tQhzb76onVs
	lnG8bHsTMCb7+SPbHubtcB48dlR5zjqWW/csNc+dmaeK+LSvS4/b2nXPbu7/CnYK2YZPxrVp
	f8/s+kBc/ahfHxg+q3p1L979TYgauH706qBdm31XTRXma9I3k4ZCzf/1TK0/agMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa2yLcRTG/d9rVyqvGnszH9CwicxtMTlxJ2FvJERCIi4LxctqbdHabBLs
	olkNSzXa2boxZSW728VsNGZY3LWG1WXK1Gg2m0y3pe266Sa+nPzOeZ7n5Hw4Alx8mwwXyJRH
	eJVSKpdQQkK4YUnGnKTMaNn8CnsoaDUn4ZPTRcK7tEYC+jxaAvIrSikImOpo0FblkvC4NZ0A
	W3kJAmefFsGA34SDpn6YgIC+mQaP9yMNhjQEw9ZmBEa7HgeH7R4OpTVpGPypHKKg80EvAsNX
	FwU57jQCeixnEeR1mGhwP4qFX847JAy3/cCgtb8LgcU1hIGrMRNBwJgAl83VwbjxNwX+F69w
	yDHYEFz52oZDr/sLgprmzwisN9Ip+K6rxaHFNR7e9PVQ8MRwhoJf9nwMuispKEy3kmB/3omg
	wKRH0PHBikHG1QoKjAVVBNR/aaDB3jmIwSejHoOSqvXgtHQQ8ExnxoLnBl03w8CUk4EFy08M
	DGV3MPBaiumVRYgb0GQTXHH1LYzTvA5QXOmlUsT5fXrEeYoycE6jC7YPunpw7lT1Ua7oWRfF
	+freUpy1v5DgnppZ7tppH8adfzGHq89rozeu2iZcupeXy5J41bzlu4TxjocO8lBtSHKddphO
	Re10FgoRsMxCttmcQ4wwxUSyDocXH+FQZhpbfa6DzEJCAc60TGUzvdmjwkSGZ38aU6kRJpiZ
	bNnZJ6NhEbOINbjb0b+lU9mSysZRf8jIvNU3ymImhr2cNUDqkLAQjSlGoTJlkkIqk8fMVSfE
	pyhlyXP3HFRUoeA/WY4Pnr+NPC2xTYgRIMk4UePRBTIxKU1SpyiaECvAJaGiLvl8mVi0V5py
	jFcd3KlKlPPqJjRFQEjCROu28LvEzH7pET6B5w/xqv8qJggJT0WTFIH77pjV3rjT7mX73m+d
	3ss1dK/1r4xesSb5W/a4qN7N/gNXdksvSmyxm8oPM4P32/s9WkVuuG7D7O113f7oGWz4btOJ
	6/aauO4hItJ71//YnFtg8/AlLy+caytq3aFR7kkMy4xQRhCzJvgaFua9ipoxdrLhuPremkQn
	u1hdliAh1PHSBbNxlVr6F6fDGrJLAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RN5TQHIR4TRSDX5YJGCISTRJ7UOVBERK
X-Message-ID-Hash: RN5TQHIR4TRSDX5YJGCISTRJ7UOVBERK
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:35 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 42/42] mm: percpu: increase PERCPU_DYNAMIC_SIZE_SHIFT on DEPT and large PAGE_SIZE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RN5TQHIR4TRSDX5YJGCISTRJ7UOVBERK/>
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
	NEURAL_HAM(-0.00)[-0.944];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email,kzalloc.com:email]
X-Rspamd-Queue-Id: B6F514111AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Yunseong reported a build failure due to the BUILD_BUG_ON() statement in
alloc_kmem_cache_cpus().  In the following test:

  PERCPU_DYNAMIC_EARLY_SIZE < NR_KMALLOC_TYPES * KMALLOC_SHIFT_HIGH * sizeof(struct kmem_cache_cpu)

The following factors increase the right side of the equation:

  1. PAGE_SIZE > 4KiB increases KMALLOC_SHIFT_HIGH.
  2. DEPT increases the size of the local_lock_t in kmem_cache_cpu.

Increase PERCPU_DYNAMIC_SIZE_SHIFT to 11 on configs with PAGE_SIZE
larger than 4KiB and DEPT enabled.

Reported-by: Yunseong Kim <ysk@kzalloc.com>
Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/percpu.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/percpu.h b/include/linux/percpu.h
index 85bf8dd9f087..dd74321d4bbd 100644
--- a/include/linux/percpu.h
+++ b/include/linux/percpu.h
@@ -43,7 +43,11 @@
 # define PERCPU_DYNAMIC_SIZE_SHIFT      12
 #endif /* LOCKDEP and PAGE_SIZE > 4KiB */
 #else
+#if defined(CONFIG_DEPT) && !defined(CONFIG_PAGE_SIZE_4KB)
+#define PERCPU_DYNAMIC_SIZE_SHIFT      11
+#else
 #define PERCPU_DYNAMIC_SIZE_SHIFT      10
+#endif /* DEPT and PAGE_SIZE > 4KiB */
 #endif
 
 /*
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
