Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBc/L6AC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:39:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DE54110B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:39:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FF3744A57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:39:11 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id D52343F93E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 07:19:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-00-6932876e9f6b
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:18:30 +0900
Message-Id: <20251205071855.72743-18-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251205071855.72743-1-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0xTZxjHfc+1NHQ5qbejyyKpURcTtSVenkW6MBOTk7hlmmVfZuJo5CAn
	lNYURDDRFbMONFhJkXYDhNNpGqAVsF64iSJK4w3oKJMK9YKW6kYRhxVH7WC1xm+//G95PjwS
	XB4gl0sEXT5v0Gm0CkpKSCeT7ev0JamC8vK/n0DgcZAEb5MTwX8WDw2R2VEa5rs8CFwXizF4
	3TJHwcSNaQTDM2EEjuAcBsHuknjYmgN1v1+Im9ZXFLzrG8Bh6M0UBeLRLhL+mIhhELBaMHC6
	v4HHjhAB1vNLofJcJwb3zgQIqO7zkTAv6sHjfE5D0+QACRMhCwWtxic0uB/0IogMjWHgKgvh
	8FttgAJP21MMfB01FJS1XCLhkWs+fnT3XRIGnV4C7npuETD2xE+Cv3wcwQNbmAbHmyka6v+x
	kRD68xcMGrr64iviEmj5uYqGkhedFPRV95MQMP9NwM3mVgzcrvsUVAyKFEQftpFw31JHwfTp
	ORJMZbM0VMZKKaguNiM4HVHBy/IImZ7OvTWZCc5V60Lcu6gFcabyON0IT+Fce9VDmhPdB7gz
	V/7CuJEJNeduPEZx7mkLzb3s76e59rEvuOCQDePsxkqcq729a2fKD9K0TF4rFPCGDV9mSLOb
	g8Vo/2uq0NZ7ljSiO+RxlCRhmY2so8xGf+TR6LWETjFrWL9/Fn/Pi5gU9sKJUFyXSnDGt4It
	mTUnjIXMdnag0Y69Z4JZxTZbTyXKMmYzaw7biQ+jK1hnS3cinxTXK4ejCZYzm9i6428ToyxT
	ncQa+03oQ2EZe73eT5QjmYgWNCK5oCvI1Qjajeuzi3RC4fq9+lw3iv+c43Bsdxua9n7XgxgJ
	UiTLug+qBDmpKcgryu1BrARXLJKFtUpBLsvUFB3iDfofDQe0fF4P+lRCKJbKUmcOZsqZfZp8
	Pofn9/OGjy4mSVpuRKbVKxvG4KjatBPfcmyzuj7n5PaVaV93Ek31X3k7KpJlvuYq1fCC1TWf
	ize3tMZ6Da6th18plfygmlin6rDH2nu8Wb0VyqsnxpfQ3wrB1JRdWenjupTJZ+pfMwpzbn02
	sgy7nbVqVFn60+LoDuORNP2cOGL/viaydZtsz3xFqehTEHnZGtVa3JCn+R82OI86bwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUhTcRTG+9+3zdHqsgQv9aFYpBBoGiUnktIgvAVJRVTUB73VJYdzymaW
	QdS0ofYia7SNtkqdOmJavpdmI1Oymvky30lNo2WZM61csqnZWvTl8DvP85zD+XCEuKSBXCuU
	KTJ4pYKTSykRIUrYmROuyN0qi/SVhUGe5jKMjLlIGFA3E+CZyyPgbmUFBUvmJwLIq7lDwuvB
	bAK6H5UjGPPkIZhfMOOgaVwmYEnXJoA577AA9GoEy/Y2BAanDoeh7uc4VNSpMfhZ9ZuCqdYf
	CPQfXBQYJ9UEzFhvIDBNmAUw+TIepseaSFge/YzB4C83AqvrNwau5lwES4YUKLTU+scNsxQs
	dHThYNR3Iyj+MIrDj8lxBHVt7xHYH2RT8Elbj0OvaxX0eWYoeKO/TsG08y4G36ooKMq2k+B8
	O4XgnlmHYOKdHYOckkoKDPdqCGgcfyoA59QiBiMGHQblNQdgzDpBQLvWgvnP9aeqQ8BszMH8
	5QsG+odNGHitNkFsGWLnNQUEa6t9jLGaniWKrbhfgdgFnw6xc2U5OKvR+ttW9wzOXq09z5a1
	uynW5+mnWPuvIoJ1WBi2NN+Hsbc6wtlG06jgYNwJUcwZXi7L5JVbdiWJkitdapT+k7pgfFlK
	XkEO8hoKEjL0NmbY9zzAFB3GDA158b8cTG9gam9O+HWREKd71zO53oKAsYbey3TZirG/TNCb
	mErD7cCwmI5mCtzFxL+l65nyquZAPsiv6wd9AZbQ25nCa/OkFomK0AobCpYpMlM5mXx7hCol
	OUshuxBxOi21Bvn/yXpp8VYDmuuNb0G0EElXipvPR8kkJJepykptQYwQlwaL3fJImUR8hsu6
	yCvTEpXn5LyqBa0TEtIQ8f5jfJKEPstl8Ck8n84r/7uYMGjtFXTI+7nAuVJUnWif6frKhTvC
	NsqjYxQeh0m3Of52qGVDf8xibtuhLaUhxtmj1fV79p7y9A0822fc2kmvTniRaioaWZ1V8oqP
	jp3KfNNRXtp3RNt52LI40H39OxO1wzHN5Q+H1uc7ZocLdx9P2P1xU8MDg+lEj2R6wTXZejK8
	ZzzuopRQJXNRm3GlivsDMmueF0sDAAA=
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KLRUUZEOPDCFLJ7PYKA4MSZDYQ2VIQG3
X-Message-ID-Hash: KLRUUZEOPDCFLJ7PYKA4MSZDYQ2VIQG3
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:22 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v18 17/42] dept: apply timeout consideration to swait
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KLRUUZEOPDCFLJ7PYKA4MSZDYQ2VIQG3/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:mid,sk.com:email]
X-Rspamd-Queue-Id: 85DE54110B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that CONFIG_DEPT_AGGRESSIVE_TIMEOUT_WAIT was introduced, apply the
consideration to swait, assuming an input 'ret' in ___swait_event()
macro is used as a timeout value.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/linux/swait.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/swait.h b/include/linux/swait.h
index 277ac74f61c3..233acdf55e9b 100644
--- a/include/linux/swait.h
+++ b/include/linux/swait.h
@@ -162,7 +162,7 @@ extern void finish_swait(struct swait_queue_head *q, struct swait_queue *wait);
 	struct swait_queue __wait;					\
 	long __ret = ret;						\
 									\
-	sdt_might_sleep_start(NULL);					\
+	sdt_might_sleep_start_timeout(NULL, __ret);			\
 	INIT_LIST_HEAD(&__wait.task_list);				\
 	for (;;) {							\
 		long __int = prepare_to_swait_event(&wq, &__wait, state);\
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
