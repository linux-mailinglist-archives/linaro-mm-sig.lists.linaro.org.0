Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBzsHcsC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:39:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C244110F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:39:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 258E744AB2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:39:54 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 2DE853F97A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-b6-693287706903
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:36 +0900
Message-Id: <20251205071855.72743-24-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzXSW0yTdxgGcP/fsTR2fikufNMluCpxgYhAdHszjfNiy/7LNJp4oZELrfIp
	DeWQVkC2bEOYldUMG6V0o0YKlQItWFaOHlBoBBkHLSJQxbKiWOeQRg6WcNygxrtf3ifPc/WK
	SOkQvU6kSDklqFLkShkjpsTjq0u2pJ2LU8QUPYyGvLM/w6KxkQXXNRuCwt6LJOhHRhkYDLxG
	sFiYBMWltQzM9zwgwaB3ISgZ8ZAw+cqLoK59GEHf6Acw3nuZAFNOMw25ZjsD1703WOgdWyDg
	b4uPgi5dKQFGQy4BsxYrC93mpxRYsiPgWUURCwsjseC5oKfg2vgDGv4aHqBhzHeRAcfjNgTT
	j0YIaH4SBa6WLhrsL90EdLV3UDDUc4EFt+4Fgkt+H4KxgIWEM61mCiomDDT4+jUEVBaXI5i8
	GqBAM7VEQ4/xPg2387wE3LU3EtDpmWLh0kMTA3OepuW0oZMF/UIeA8Yz+Qjy7gZIqG+bYaFm
	opyB/PvfwLTNykD14gACv26aBmPbMLt7N7bWNhC46koVwtNluSQ+q1vW3Nt+BjcHTBTuLOXx
	9SIPi3+5/YTFJkc6rq2IxOZbrwhcMvmWxg7rrwwumf+HxNrxR8T+jYfFOxMEpSJDUG3ddVSc
	2KwJS2vdddrWomeykSlOi0JEPLeNr/53iXnvKb+BWjHDbebd7llyxWu5DXztbz5ai8QikusL
	58/N5geDUO5bvq5jFK2Y4iL44Ql9cEjCfcYXXH5JvhsN5201LUGHLN/1g3NBS7ntfLF2JjjK
	c+YQvvxNDvWu8BHfWuGmdEhiQqusSKpIyUiWK5TbohOzUhSno4+nJjvQ8stZflyIb0KTrgNO
	xImQbLWkJTNWIaXlGeqsZCfiRaRsreS1MkYhlSTIs74XVKlHVOlKQe1E60WULEwSF8hMkHIn
	5aeEJEFIE1TvU0IUsi4bSfcU7umWOT7XWQrK93rO/6DU+f3/NWyy3jvEqT+c8GC1RlZ/sMxd
	1nNift9Nr3MD+vqTmdjRjP6+xOy2NZkf//40TFn4wnY8VHPHx0eFGr/wDVUmsQVareF891KN
	3f7l82M4nP7zu69cOfaf4uZ3VEbXeb2Df8T7zJWhkc74qU9llDpRHhtJqtTy/wG1ebWNbgMA
	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSf1CLcRzHfZ/n2bMfzD03sQd/cHOOc6JCPnd+/4EnDv3jHOfY6DlNa7ot
	EefHmmlCt1bPwqJJ7boapeZH3Jik8yuasA61nImuKamk1g8r55/PvT6f9/vzvs8fHwEuucOb
	JlCqk1mNWqGSkSJCtHmZPjwpPUoZ4XMLwWg4AZ98fh6817kJ6O0xEpBX5iBhyHqHD8aKizx4
	6k0joP5GKQJfrxFBX9CKg6FqhIAhcy0fevo/8oHTIRhx1SKweMw4NNY/xMHh1GHQXT5MQvvj
	Xwi4z34Sctt0BHTazyG41GrlQ9uT9fDDd58HI03fMPD+DiCw+4cx8LvTEQxZEiC/oDK0bvlJ
	QrDuNQ65XD2Cq5+bcPjV1oLAWduMwFWcRsJX0y0cGvwT4W1vJwnPuLMk/PDkYdBRToItzcUD
	z8t2BJetZgStH1wY6K+VkWC5XEFAVcs9PnjaBzH4ZDFjUFqxCXz2VgJemAqw0Lkh100pWHP1
	WKh8x4C7fh+DfnsJf3URYvoMmQRTUnkbYwxvhkjGccWBmOCAGTE9RXqcMZhC7eNAJ86cqjzE
	FL0IkMxA7zuScf22EczzApopPDOAMVl14UzVpSZ+7JodouVxrEqZwmoWrpSL4l2npUmPVh4u
	dXPkSWSLykBCAU0tprs7colRJqk5dGNjPz7KYdRMuvJ8Ky8DiQQ41TCDTu/PHBMmUTG086kf
	jTJBzaabuzhylMVUNJ2T9w3/FzqDLi13j7EwNOe8A2MsoZbQ+Rl9PBMS2dC4EhSmVKckKpSq
	JQu0CfGpauXhBXsPJFag0DvZjw1m3UU9DeurESVAsgli96FIpYSnSNGmJlYjWoDLwsQBVYRS
	Io5TpB5hNQd2aw6qWG01mi4gZFLxhm2sXELtUySzCSybxGr+q5hAOO0kejV+RUTOwa49X99q
	1xmX6o4Hiu8Kt0zWPqheFbdoe+GxtTt3wZeP4c1qofNNTkdw/y155JTriUeyC2KsJrncW/a+
	5c/MWk9NzlRpiWor/7it7mfY+e62zOEtWaufD0qjLzhjbJzVm9eYrZ8/9/SuwaC0JvZoQ8Ss
	ruyE5I0Os3FitIzQxisi5+EareIvhK/pGkoDAAA=
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E6RERRKEMAOXDUFYZ4YVA24MSHWCAMI4
X-Message-ID-Hash: E6RERRKEMAOXDUFYZ4YVA24MSHWCAMI4
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:25 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 23/42] dept: print staged wait's stacktrace on report
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E6RERRKEMAOXDUFYZ4YVA24MSHWCAMI4/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: 11C244110F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, print nothing about what event wakes up in report.  However,
it makes hard to interpret dept's report.

Make it print wait's stacktrace that the event wakes up.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/sched.h             |  2 ++
 kernel/dependency/dept.c          | 59 ++++++++++++++++++++++++++-----
 kernel/dependency/dept_internal.h |  5 +++
 3 files changed, 57 insertions(+), 9 deletions(-)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 385c5b3c5b0b..5834555a3d09 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -871,6 +871,7 @@ struct dept_task {
 	const char			*stage_w_fn;
 	unsigned long			stage_ip;
 	bool				stage_timeout;
+	struct dept_stack		*stage_wait_stack;
 	arch_spinlock_t			stage_lock;
 
 	/*
@@ -912,6 +913,7 @@ struct dept_task {
 	.stage_w_fn = NULL,					\
 	.stage_ip = 0UL,					\
 	.stage_timeout = false,					\
+	.stage_wait_stack = NULL,				\
 	.stage_lock = (arch_spinlock_t)__ARCH_SPIN_LOCK_UNLOCKED,\
 	.missing_ecxt = 0,					\
 	.hardirqs_enabled = false,				\
diff --git a/kernel/dependency/dept.c b/kernel/dependency/dept.c
index f928c12111fe..1c6eb0a6d0a6 100644
--- a/kernel/dependency/dept.c
+++ b/kernel/dependency/dept.c
@@ -523,6 +523,7 @@ static void initialize_ecxt(struct dept_ecxt *e)
 	e->enirqf = 0UL;
 	e->event_ip = 0UL;
 	e->event_stack = NULL;
+	e->ewait_stack = NULL;
 }
 SET_CONSTRUCTOR(ecxt, initialize_ecxt);
 
@@ -578,6 +579,8 @@ static void destroy_ecxt(struct dept_ecxt *e)
 		put_stack(e->ecxt_stack);
 	if (e->event_stack)
 		put_stack(e->event_stack);
+	if (e->ewait_stack)
+		put_stack(e->ewait_stack);
 }
 SET_DESTRUCTOR(ecxt, destroy_ecxt);
 
@@ -794,6 +797,11 @@ static void print_dep(struct dept_dep *d)
 
 		pr_warn("[E] %s(%s:%d):\n", e_fn, fc_n, fc->sub_id);
 		print_ip_stack(e->event_ip, e->event_stack);
+
+		if (valid_stack(e->ewait_stack)) {
+			pr_warn("(wait to wake up)\n");
+			print_ip_stack(0, e->ewait_stack);
+		}
 	}
 
 	if (!irqf) {
@@ -807,6 +815,11 @@ static void print_dep(struct dept_dep *d)
 
 		pr_warn("[E] %s(%s:%d):\n", e_fn, fc_n, fc->sub_id);
 		print_ip_stack(e->event_ip, e->event_stack);
+
+		if (valid_stack(e->ewait_stack)) {
+			pr_warn("(wait to wake up)\n");
+			print_ip_stack(0, e->ewait_stack);
+		}
 	}
 }
 
@@ -1657,7 +1670,8 @@ static void add_wait(struct dept_class *c, unsigned long ip,
 
 static struct dept_ecxt_held *add_ecxt(struct dept_map *m,
 		struct dept_class *c, unsigned long ip, const char *c_fn,
-		const char *e_fn, int sub_l)
+		const char *e_fn, int sub_l,
+		struct dept_stack *ewait_stack)
 {
 	struct dept_task *dt = dept_task();
 	struct dept_ecxt_held *eh;
@@ -1691,6 +1705,7 @@ static struct dept_ecxt_held *add_ecxt(struct dept_map *m,
 	e->class = get_class(c);
 	e->ecxt_ip = ip;
 	e->ecxt_stack = ip ? get_current_stack() : NULL;
+	e->ewait_stack = ewait_stack ? get_stack(ewait_stack) : NULL;
 	e->event_fn = e_fn;
 	e->ecxt_fn = c_fn;
 
@@ -1797,7 +1812,7 @@ static int find_hist_pos(unsigned int wg)
 
 static void do_event(struct dept_map *m, struct dept_map *real_m,
 		struct dept_class *c, unsigned int wg, unsigned long ip,
-		const char *e_fn)
+		const char *e_fn, struct dept_stack *ewait_stack)
 {
 	struct dept_task *dt = dept_task();
 	struct dept_wait_hist *wh;
@@ -1825,7 +1840,7 @@ static void do_event(struct dept_map *m, struct dept_map *real_m,
 	 */
 	if (find_ecxt_pos(real_m, c, false) != -1)
 		return;
-	eh = add_ecxt(m, c, 0UL, NULL, e_fn, 0);
+	eh = add_ecxt(m, c, 0UL, NULL, e_fn, 0, ewait_stack);
 
 	if (!eh)
 		return;
@@ -2360,7 +2375,8 @@ static void __dept_wait(struct dept_map *m, unsigned long w_f,
  */
 static void __dept_event(struct dept_map *m, struct dept_map *real_m,
 		unsigned long e_f, unsigned long ip, const char *e_fn,
-		bool sched_map, unsigned int wg)
+		bool sched_map, unsigned int wg,
+		struct dept_stack *ewait_stack)
 {
 	struct dept_class *c;
 	struct dept_key *k;
@@ -2382,7 +2398,7 @@ static void __dept_event(struct dept_map *m, struct dept_map *real_m,
 	c = check_new_class(&m->map_key, k, sub_id(m, e), m->name, sched_map);
 
 	if (c)
-		do_event(m, real_m, c, wg, ip, e_fn);
+		do_event(m, real_m, c, wg, ip, e_fn, ewait_stack);
 }
 
 void dept_wait(struct dept_map *m, unsigned long w_f,
@@ -2498,6 +2514,9 @@ static void __dept_clean_stage(struct dept_task *dt)
 	dt->stage_w_fn = NULL;
 	dt->stage_ip = 0UL;
 	dt->stage_timeout = false;
+	if (dt->stage_wait_stack)
+		put_stack(dt->stage_wait_stack);
+	dt->stage_wait_stack = NULL;
 }
 
 void dept_clean_stage(void)
@@ -2561,6 +2580,14 @@ void dept_request_event_wait_commit(void)
 
 	wg = next_wgen();
 	WRITE_ONCE(dt->stage_m.wgen, wg);
+
+	/*
+	 * __schedule() can be hit multiple times between
+	 * dept_stage_wait() and dept_clean_stage().  In that case,
+	 * keep the first stacktrace only.  That's enough.
+	 */
+	if (!dt->stage_wait_stack)
+		dt->stage_wait_stack = get_current_stack();
 	arch_spin_unlock(&dt->stage_lock);
 
 	__dept_wait(&dt->stage_m, 1UL, ip, w_fn, 0, true, sched_map, timeout);
@@ -2579,6 +2606,7 @@ void dept_ttwu_stage_wait(struct task_struct *requestor, unsigned long ip)
 	struct dept_map m;
 	struct dept_map *real_m;
 	bool sched_map;
+	struct dept_stack *ewait_stack;
 
 	if (unlikely(!dept_working()))
 		return;
@@ -2597,6 +2625,10 @@ void dept_ttwu_stage_wait(struct task_struct *requestor, unsigned long ip)
 	m = dt_req->stage_m;
 	sched_map = dt_req->stage_sched_map;
 	real_m = dt_req->stage_real_m;
+	ewait_stack = dt_req->stage_wait_stack;
+	if (ewait_stack)
+		get_stack(ewait_stack);
+
 	__dept_clean_stage(dt_req);
 	arch_spin_unlock(&dt_req->stage_lock);
 
@@ -2607,8 +2639,12 @@ void dept_ttwu_stage_wait(struct task_struct *requestor, unsigned long ip)
 	if (!m.keys)
 		goto exit;
 
-	__dept_event(&m, real_m, 1UL, ip, "try_to_wake_up", sched_map, m.wgen);
+	__dept_event(&m, real_m, 1UL, ip, "try_to_wake_up", sched_map,
+			m.wgen, ewait_stack);
 exit:
+	if (ewait_stack)
+		put_stack(ewait_stack);
+
 	dept_exit(flags);
 }
 
@@ -2688,7 +2724,7 @@ void dept_map_ecxt_modify(struct dept_map *m, unsigned long e_f,
 	k = m->keys ?: &m->map_key;
 	c = check_new_class(&m->map_key, k, sub_id(m, new_e), m->name, false);
 
-	if (c && add_ecxt(m, c, new_ip, new_c_fn, new_e_fn, new_sub_l))
+	if (c && add_ecxt(m, c, new_ip, new_c_fn, new_e_fn, new_sub_l, NULL))
 		goto exit;
 
 	/*
@@ -2740,7 +2776,7 @@ void dept_ecxt_enter(struct dept_map *m, unsigned long e_f, unsigned long ip,
 	k = m->keys ?: &m->map_key;
 	c = check_new_class(&m->map_key, k, sub_id(m, e), m->name, false);
 
-	if (c && add_ecxt(m, c, ip, c_fn, e_fn, sub_l))
+	if (c && add_ecxt(m, c, ip, c_fn, e_fn, sub_l, NULL))
 		goto exit;
 missing_ecxt:
 	dt->missing_ecxt++;
@@ -2840,7 +2876,7 @@ void dept_event(struct dept_map *m, unsigned long e_f,
 
 	flags = dept_enter();
 
-	__dept_event(m, m, e_f, ip, e_fn, false, READ_ONCE(*wg_p));
+	__dept_event(m, m, e_f, ip, e_fn, false, READ_ONCE(*wg_p), NULL);
 
 	/*
 	 * Keep the map diabled until the next sleep.
@@ -2912,6 +2948,11 @@ void dept_task_exit(struct task_struct *t)
 		dt->stack = NULL;
 	}
 
+	if (dt->stage_wait_stack) {
+		put_stack(dt->stage_wait_stack);
+		dt->stage_wait_stack = NULL;
+	}
+
 	for (i = 0; i < dt->ecxt_held_pos; i++) {
 		if (dt->ecxt_held[i].class) {
 			put_class(dt->ecxt_held[i].class);
diff --git a/kernel/dependency/dept_internal.h b/kernel/dependency/dept_internal.h
index aa1a588805b3..a51ffb6e59c0 100644
--- a/kernel/dependency/dept_internal.h
+++ b/kernel/dependency/dept_internal.h
@@ -194,6 +194,11 @@ struct dept_ecxt {
 			 */
 			unsigned long	event_ip;
 			struct dept_stack *event_stack;
+
+			/*
+			 * wait that this event ttwu
+			 */
+			struct dept_stack *ewait_stack;
 		};
 	};
 };
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
