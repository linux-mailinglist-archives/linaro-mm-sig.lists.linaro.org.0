Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO2GAmsC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:38:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE4E411042
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:38:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 002074493C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:38:18 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id E63BB3F980
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c45ff70000001609-06-6932876c3129
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:22 +0900
Message-Id: <20251205071855.72743-10-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzXSbUxTZxQH8D33PvfettLlrmK8sgRN0ZgwETG4nA9zGpZsz/xgTKYR4YN2
	coWGgqblRTYlAnN0DBBqKhkVLSBIaHlJwQWBxspmdbKGqyxSXHkzBUQlIwg4Co5Bjd9+Of9z
	/p+OjFYNMWEybXqGqE/X6NSsAiumQ6qj0gp3a3fV2ELBN+Jn4EmeC8P8nBHD1RY7Cw8G8jGM
	zBsRvDW5OVhxuhF4pTs02NvzKHjd+h8LL3+bRWAe87NQMZWH4Z/6YgSVExYOpu59BStDkxT4
	XYUIljx9NLS7hxE4G/JZGC+7RUO//0P4w/wzC9Z8JwNVFhOCiadOCgpqW1i4UuXAcHu0k4NH
	L5cp8F0xUdBbVkOBpaKAAnNTFwWL9Y0cWDz9DDxrqORgeSwG3LZJDoYumTE0T/cx4Bi8h2Du
	rzEK7MUTNBg75zE4n34C1T/ewPDLNR8LxrdzCNwdzygobr3FwLB9hQHJ1cvAY5uEoWXSS8Hf
	nksc9HU2MVA38IiCsVEvA22eP2mQyksY8JaNo/1J5M3FUkzs1+yILAVMiMzVFdDkh7ZsUtf7
	iiUPawRS7okityuHOGJ1ZJK2hkhS2z1FEUfjTyxxzJo4Ur30nCa+J93soagExWdJok6bJeqj
	Pz+hSOkaqcJnxtedHbaWcxfQ7/IiJJcJfKyw0DKI37vWP0+vmeW3C17vYtCh/BahrWSCKUIK
	Gc33bxYKF0uDwXpeI/RPPmfXjPltglQ9w61ZyX8quCqWmXelmwVbqyu4L1+dmwcCQav4PcL1
	ojfBUoG3yIXO9hn63cEm4W6DF5chpRV90IhU2vSsNI1WF7szJSdde3bnydNpDrT6dPXnlxM7
	0Kz0TQ/iZUgdonRlx2hVjCbLkJPWgwQZrQ5VvtLt0qqUSZqc70T96eP6TJ1o6EEfy7B6o3L3
	QnaSik/WZIiponhG1L9PKZk87AL6KHU7HxKQ5BnskfupX4QbStni5l+TFSnhEdga2B8pnv/2
	MohOaZBtPnwOv7h4dN+p3IgNYUdy7TF7bVu/xl05pf7xc8mj8ZnRZHrH9xW8dJOLsMVGj5q6
	khOP+VaauvdKgYNf5kcdGkwoz/33zsnZjviIuHXG9gMuVSSVGPdQjQ0pmphIWm/Q/A+W/F0p
	cAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSWUwTcRDG/e/ZVqtrJWHFB7XRmBA8MB5jPIK+sGi8HoiJL7KRjayUI62C
	mKgcNiAqQk1bpaAIUhCKYIsHkMYGFW8FqtIgUDEFJaAoUgjlsmB8mfxmvm++zMNIcMUjMkgi
	xp8Q1PG8SknJCNm+rRmrVZnrxXVtZcsgS3sOOtweEj6lOQjwDmcRUFBtoWDS9JCGLOt1El60
	pRPQfLcSgdubhWB03ISDtm6agEldEw3DY59p0KchmLY3ITC06HBwNT/GwVKbhsGfmikK+p8M
	IdB3eygw9qURMGi+hCC/10RD37Nw+OFuIGG68xsGbSMDCMyeKQw8jkwEk4ZYuFls868bflEw
	/vY9DkZ9M4Jb3Z04DPV9QVDb1IXAXp5OQU/ufRycnvnwwTtIwUv9RQp+tBRg8LOGgqJ0Owkt
	b/oRFJp0CHrb7RhklFRTYCi0ElD3pZ6Glv4JDDoMOgwqrXvBbe4l4HVuMeY/1++6FwgmYwbm
	L98x0Fc1YDBmrqDDShE3qs0huArbA4zTtk5SnOWGBXHjPh3ihkszcE6b62+fDAzi3HlbMlf6
	eoDifN6PFGcfKSK4V8Usd/uCD+Py3q7m6vI76QM7D8u2RQsqMUlQr90RJYtpcBcSiT1zT3UV
	5dGp6Kk0G0klLLOBLfF48RmmmFWsyzU2ywHMMtZ2uZfMRjIJzjiXspljObPCIoZnnd++UzNM
	MCvZ5lu/6BmWM5tYh3GC/Be6lK2sccz6pf65vs03ywpmI3sze5TMRbIiNKcCBYjxSXG8qNq4
	RhMbkxIvnlpzNCHOivz/ZD4zkfcIDTvDGxEjQcp5ckdyqKgg+SRNSlwjYiW4MkA+oFonKuTR
	fMppQZ1wRH1SJWga0RIJoQyU7z4kRCmYY/wJIVYQEgX1fxWTSINS0ZboEGNVZoHrxfHlwtk9
	tWf2WqwJW3bB4nDzAsXBz+NL7jzX5mzYOTIYRosPtuObo1pbxa/dPeW7nCH7I9QKmeZaEKkP
	iJxfGBpxxZVfZtNPVya9T429WlP/2xCpaFcvxLj6uAP8045reSsi3kljfoeKo+0LDmvKki8G
	uxLDfPuUhCaGDw3G1Rr+L3xIHd1LAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CRGRYVX6XR4OPBX5MXSUBDBDSIPXMZDA
X-Message-ID-Hash: CRGRYVX6XR4OPBX5MXSUBDBDSIPXMZDA
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:18 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 09/42] dept: record the latest one out of consecutive waits of the same class
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CRGRYVX6XR4OPBX5MXSUBDBDSIPXMZDA/>
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
	NEURAL_HAM(-0.00)[-0.929];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email,linaro.org:email]
X-Rspamd-Queue-Id: DBE4E411042
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current code records all the waits for later use to track relation
between waits and events within each context.  However, since the same
class is handled the same way, it'd be okay to record only one on behalf
of the others if they all have the same class.

Even though it's the ideal to search the whole history buffer for that,
since it'd cost too high, alternatively, let's keep the latest one when
the same class'ed waits consecutively appear.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 kernel/dependency/dept.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/kernel/dependency/dept.c b/kernel/dependency/dept.c
index 1b16a6095b3c..f4c08758f8db 100644
--- a/kernel/dependency/dept.c
+++ b/kernel/dependency/dept.c
@@ -1486,9 +1486,28 @@ static struct dept_wait_hist *new_hist(void)
 	return wh;
 }
 
+static struct dept_wait_hist *last_hist(void)
+{
+	int pos_n = hist_pos_next();
+	struct dept_wait_hist *wh_n = hist(pos_n);
+
+	/*
+	 * This is the first try.
+	 */
+	if (!pos_n && !wh_n->wait)
+		return NULL;
+
+	return hist(pos_n + DEPT_MAX_WAIT_HIST - 1);
+}
+
 static void add_hist(struct dept_wait *w, unsigned int wg, unsigned int ctxt_id)
 {
-	struct dept_wait_hist *wh = new_hist();
+	struct dept_wait_hist *wh;
+
+	wh = last_hist();
+
+	if (!wh || wh->wait->class != w->class || wh->ctxt_id != ctxt_id)
+		wh = new_hist();
 
 	if (likely(wh->wait))
 		put_wait(wh->wait);
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
