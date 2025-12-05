Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IFlDNEC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:40:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CDE4110FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:40:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAEEB44AF3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:39:59 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 19D153F981
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-d4-693287704a67
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:37 +0900
Message-Id: <20251205071855.72743-25-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0xTdxjG/Z/zP5d2Vs86Eo4So2k0S9CpeCHvzEKMZvMk2wezGky2D3Iy
	jtBYLinIZYmmuFSlDsLIiqxYBNFagdmu4AWwkWtVhlAUpU5AAVPWYXXpqNAq08Lmt1+e53mf
	98vDksoRaiWrycyVdJmiVkXLsTywtPaT7BNbNJsbDABn7I003B4+hsFzuQGBoeUthvlyNwMz
	4ccMeD03SWhsLiJguiuIwDT+jIbT/iIM/p49EHjSRsHb0SkC5isOQdD/FIHLdoyGwOAZAgb7
	phH8UGenocLixPB72TkCrPp1MGEzM3A5MEDBnbGHFEz7yml4cus4Bdf0T6NPh8YJONkawuCc
	jLquP9bDL9UjNLivTxBwx3wJw0DrrxS8Ko0Dz08lFFhDLxm4115DQFFHHQbfg+MElPuCDFyY
	eUHC3ap+CkZK/8Iw9KgNgd3XRcKU2UJAV+g5AU1OUzRytZeB3kgvAUHLvxQYfgwz0DCIwfTm
	JA1VRaUIThkqMFzpmWVgzjFJgWUmAap6xpidO4X6pquEYLg3TwuN1Y1IeB0pR4KhLErniyOE
	0GIeZYQa52GhyRYv1N3wE0JtMEQJzvpiWjAGhgjhRX8/I9yufI2FWr2J3LvqG/lnqZJWkyfp
	NiWlyNP9YyEm+9GHBV7bHNYj63IjkrE8t43/e3KUfs/2sJtZYJr7mPd6w+QCx3Br+KYSH2VE
	cpbk7q/mT4RLF42PuFTe2m/BRsSymFvHt7gLF2QFl8hXBpv/71zNNzjaF+OyqG4ajiyyktvO
	nzXOLnby3EUZP1dchv87WMF32Ly4DClq0JJ6pNRk5mWIGu22jemFmZqCjd9lZThRdHPWI2++
	vY6CHnUn4likWqpoz0/QKCkxL6cwoxPxLKmKUTzXbtYoFali4feSLuuA7rBWyulEcSxWxSq2
	vMpPVXJpYq50SJKyJd17l2BlK/VInTvsWJ7mkKlXjZf4sj5tLlYnJ80uS47xxP6W0nfF3j1Q
	vW+vaf/Fjs4DaVtP7aIeu1xru4/+s6Nyd5x//YYPPn+WWNUaaxe3dxtD7j9bJxyizPxV4tfd
	1oPxtjXqFQVDu1z5c8407ufAWUtbS8RpU/bNoy/UD6s3JPl0li+nUiwqnJMuJsSTuhzxHaYs
	9d1vAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0hTcRTH+917d+/daHlbhpciqkX2oCyjx4keFEReAsP+igqqpZe8OR9t
	Zi6QfLQ0rdDR5mOapjlizpzOLIuVGK2sNM1Ke6gJayVqlrpsU7Np9M/hc77f7zmcPw6Ny+6K
	FtBCTDyvilEo5aSEkOzflrY2Ln2DsD43KwAytOfhU49TBO9SGghwj2YQUFhlIWHSeJeCjJp8
	ETzrSCWg9XYFgh53BoKxcSMO2vopAiZ1DgpGPR8p0KcgmLI7EBjadDh0tj7CwVKbgsGI9Q8J
	/Y+HEeh7nSTk9qUQMGS6jKDAZaSg70kIDPY8EMFU11cMOn4NIDA5/2DgbEhHMGmIguJSm2/c
	8IOE8eZXOOTqWxHc6O3CYbjvM4JaRzcC+61UEr5k38Gh3TkH3riHSGjSZ5Ew2FaIwXcrCSWp
	dhG0vexHUGTUIXB9sGOQVlZFgqGohoD6z/cpaOufwOCTQYdBRU0o9JhcBLzILsV85/pS1QFg
	zE3DfOUbBvrKBxh4TGZqVznixrRXCc5sq8M47etJkrNctyBu3KtD3Gh5Gs5ps33t44EhnLtg
	O8uVvxggOa/7LcnZf5UQ3PNSlrt5yYtxOc1rufqCLips92HJ9gheKSTwqnU7j0si+7rdVNz7
	uYmdt34Tycjkl4nENMtsZKs8DmqaSWYF29npwafZn1nC2q64RJlIQuNM+2I23XN1xpjHRLCm
	liIiE9E0wSxn6x2aaVnKbGbzhmvJfzsXsxXWhpm42KfrO7wzLGM2scWZY6JsJClBs8zIX4hJ
	iFYIyk1B6qhITYyQGBQeG12DfO9kSprIuYdG20MaEUMj+Wxpw9lgQSZSJKg10Y2IpXG5v3RA
	uV6QSSMUmnO8KvaY6oySVzeihTQhD5DuO8gflzEnFfF8FM/H8ar/LkaLFySjL55lR7ZuuCKU
	lacHrqneYd4bbo2ra1ZHBm9ctNI4MrIk9obtdeCBE3cIb/TSM6/E+b3m+WM22JNFhlq767wW
	vNFVXfkw/MJqy9O8WfzPU4eSjHmV/n7B7YqtfmLu2rvAFWEtCckX4+cmy6L42+otv1tWpR4d
	CStLDNEUnG6amN8hJ9SRiuDVuEqt+Avo2QhdSgMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7LXRLRFGT2JBNXGHYSH2Z5OIEVVJQXII
X-Message-ID-Hash: 7LXRLRFGT2JBNXGHYSH2Z5OIEVVJQXII
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:26 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 24/42] locking/lockdep: prevent various lockdep assertions when lockdep_off()'ed
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7LXRLRFGT2JBNXGHYSH2Z5OIEVVJQXII/>
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
	NEURAL_HAM(-0.00)[-0.916];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sk.com:mid,sk.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E0CDE4110FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

lockdep provides APIs for assertion only if lockdep is enabled at the
moment asserting to avoid unnecessary confusion, using the following
condition, debug_locks && !this_cpu_read(lockdep_recursion).

However, lockdep_{off,on}() are also used for disabling and enabling
lockdep for a simular purpose.  Add !lockdep_recursing(current) that is
updated by lockdep_{off,on}() to the condition so that the assertions
are aware of !__lockdep_enabled if lockdep_off()'ed.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/lockdep.h  |  3 ++-
 kernel/locking/lockdep.c | 10 ++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
index ebfc781c3095..9389fc859129 100644
--- a/include/linux/lockdep.h
+++ b/include/linux/lockdep.h
@@ -303,6 +303,7 @@ extern void lock_unpin_lock(struct lockdep_map *lock, struct pin_cookie);
 	lockdep_assert_once(!current->lockdep_depth)
 
 #define lockdep_recursing(tsk)	((tsk)->lockdep_recursion)
+extern bool lockdep_recursing_current(void);
 
 #define lockdep_pin_lock(l)	lock_pin_lock(&(l)->dep_map)
 #define lockdep_repin_lock(l,c)	lock_repin_lock(&(l)->dep_map, (c))
@@ -630,7 +631,7 @@ DECLARE_PER_CPU(int, hardirqs_enabled);
 DECLARE_PER_CPU(int, hardirq_context);
 DECLARE_PER_CPU(unsigned int, lockdep_recursion);
 
-#define __lockdep_enabled	(debug_locks && !this_cpu_read(lockdep_recursion))
+#define __lockdep_enabled	(debug_locks && !this_cpu_read(lockdep_recursion) && !lockdep_recursing_current())
 
 #define lockdep_assert_irqs_enabled()					\
 do {									\
diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index dc97f2753ef8..39b9e3e27c0b 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -6900,3 +6900,13 @@ void lockdep_rcu_suspicious(const char *file, const int line, const char *s)
 	warn_rcu_exit(rcu);
 }
 EXPORT_SYMBOL_GPL(lockdep_rcu_suspicious);
+
+/*
+ * For avoiding header dependency when using (struct task_struct *)current
+ * and lockdep_recursing() at the same time.
+ */
+noinstr bool lockdep_recursing_current(void)
+{
+	return lockdep_recursing(current);
+}
+EXPORT_SYMBOL_GPL(lockdep_recursing_current);
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
