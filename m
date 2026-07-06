Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yfvlBJ5KS2oQOwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Jul 2026 08:26:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD6570CF22
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Jul 2026 08:26:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=sk.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69B9A40A7D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Jul 2026 06:26:36 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id B123940A89
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 06:21:59 +0000 (UTC)
X-AuditID: a67dfc5b-c2dff70000001609-20-6a4b4983b9ef
From: Byungchul Park <byungchul@sk.com>
To: linux-kernel@vger.kernel.org
Date: Mon,  6 Jul 2026 15:19:25 +0900
Message-Id: <20260706061928.66713-38-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260706061928.66713-1-byungchul@sk.com>
References: <20260706061928.66713-1-byungchul@sk.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0xTZxjH9547jV2OlYQz9wHTTEfchGG8PMkW4hKXHTFmRj+o24fZyNEW
	CphykxkjV62kYOlCO1qsCOSsox1l7bZo0WzAQFFUCiglys24GgalBqlGA3SnkGV+efPL8/wv
	b968DK6wU+sZTU6+oMtRaZWUjJCF1jRtqdizN/OTyedyiCzoCWhwuyjQe+pJuDVSRsBAmxPB
	RESPwOw34RAY+AOHF+3LFMx0zyOwTJcSEBYNCKZ7voTQRAcJ0bFnGIy8nEUgPl3GYMmcBZeb
	vJLe/JwCS90AgvnpSQS/9o4juOEoo2A4EqYg5G/AYK6dgsayGyT4+2cQXLKZEJQ3uym4Numj
	wT+ziMFjswkDp2cfTIhBQmqnwGYpx+C12EqDWLIRbHeHSHjisNKwOJUK0cZc6HU+o6EtdJ+E
	vvGHJMwETRR4RnsQLAxPYeAyBHHQ+yIE6JcWEAz5GigYd0VJKLG9khzWn6QHqK0mIWD8G8HP
	c00UfD8XRDBqmZX6ImEaSjubiV0Z/KvKGoJv9f6O8ZWDSxTvsrsQX2mUju7ZMM5XeIv4200c
	33LhDcbX3t3CX7OO0Xyjp4Cv+CtE8l7HZr75+jTGX5mPkPtTvpZ9liFoNYWCLiXtqEztcPSg
	k7NrT3Wcs1MlqP7dKsQwHLuNWxg9XoXiVnDQdJWOMcV+yAUCr/EYx7MbOG91kKxCMgZnhxI5
	g1hNxBbrWBUXnLqAxZhgN3L2kQgZYzm7g+v/xYhWQxM5Z/ufK0Fx0rxt8dKKXsFu5x6FbxKr
	+rVcX/1TInYfXCp22xWxMS5Zy3+z4bFejh2P40Z7DNhq5ntcpyNAGBFrfctu/d9ufcveiPBW
	pNDkFGarNNptyeriHM2p5GO52R4k/VrxzOI3V9H8wMEuxDJIuUYOu9IzFaSqMK84uwtxDK6M
	l29K2pupkGeoir8TdLnf6gq0Ql4Xep8hlAnyrS+LMhTsCVW+kCUIJwXdf1uMiVtfgswfqBu0
	CZi8d1NR+jBZmtr9VfxBeiwxX1x6cT5lMPrpxfqzpw8P8c5z7h8/fvDR5Q74wfSP7M1ggu9o
	bV2otOaxta9A90V6Z11SF+tOE7PC6rZDvcfS/RsmW4rIO/2+A2f3t7yzZ9+R1u1p3UbLzjPH
	lz+nk2suav33ru/WH7BGDUoiT61K3Yzr8lT/AoxJ5laxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0wTWRSA986dTofGkrGQOEFd3GZ9xKi7m4g5icZHjHFWsmY3/jDxj050
	lPKStIBgVgVqsSBuSpOW0EpFlIpQBYuoiF0JBlypRBBZiIKIW4uEIkZbTUsLTjUb/XPz3XO+
	8/hxaKyYlSTQqsxsQZ3JpyspGSnbuV67WvtrcurPd6ZWgV53AoZHPRL4t7CdhIBfT8LZRgcF
	EetNKeidlRL4Z7CIhN6rDQhGA3oEH2esGHStcyREjF1S8AefScFUiGDO1YXA3GfEMNR7F4Pj
	eiEB75tmKZi89w6BacxDQcVEIQnT9jIEFq9VChOd22FqtE0CcyPjBAx+8CGwe2YJ8LSfQhAx
	p8G5mmax3PyWgpmeRxgqTL0Izo+NYHg38QLB9a7nCFx1RRS8MrRg6PfEwpPANAUPTKcpmOo7
	S8CbJgqqi1wS6Hs4iaDKakTgfeoiQHuhkQJzlZOE1he3pdA3GSZg2GwkoMH5G4zavSS4DTWE
	uK5oXVsA1gotIT6vCTBdaSMgaK+Xbq5F3EfdXyRX33yD4HSPIxTnsDkQNxMyIs5fq8WcziB+
	7/mmMXey+QhX6/ZRXCgwQHGuD9Uk113DchdLQgRX3rOaa7WMSH/fske24YCQrsoV1D9t3CdL
	qavrRFm++XltxTaqAFXGlqIYmmXWso+Nt6RRppjl7NBQEEc5nlnCNp/xSkqRjMZMfyJbZj9D
	RhNxDM96x0qIKJPMUtY2GJBEWc6sYx9eM6AvTRPZhqb2z41ixPjVcNVnX8Eksc+m75Nf/Pns
	g0qPyLQ4YDnbaFNEw1gs1bZYsQHJLd9Ylq+W5RurGuF6FK/KzM3gVelJazRpKfmZqrw1+w9n
	OJF4lfZj4fJbyN+/vQMxNFLOk8PmHakKCZ+ryc/oQCyNlfHyZSuSUxXyA3z+UUF9eK86J13Q
	dKCFNKlcIN+xW9inYA7x2UKaIGQJ6v+zBB2TUIDc/SH3wN/2FcGw+whOlI//t3/D4q0q/6ns
	E/rZsLaok36y9sdd53aef2+L7eiu7fTLy5OX3L/rjJMlWkqK12/JebrIl1vwZ0vCywGjMdU/
	Hjn0aLCUPh7nefvHd3k/bJu7nJT1KlS2tFu1yTFsv33cqjp9MFzM56yq6Io/+X2wZ/ElJalJ
	4X9ZidUa/hOqfMNukQMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: /
Message-ID-Hash: OUBNMOVRCT2JQKO3NKGEBNK5U7GNK2MG
X-Message-ID-Hash: OUBNMOVRCT2JQKO3NKGEBNK5U7GNK2MG
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: max.byungchul.park@gmail.com, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@
 kernel.org, dri-devel@lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v19 37/40] SUNRPC: relocate struct rcu_head to the first field of struct rpc_xprt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OUBNMOVRCT2JQKO3NKGEBNK5U7GNK2MG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[sk.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:max.byungchul.park@gmail.com,m:kernel_team@skhynix.com,m:torvalds@linux-foundation.org,m:damien.lemoal@opensource.wdc.com,m:linux-ide@vger.kernel.org,m:adilger.kernel@dilger.ca,m:linux-ext4@vger.kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:will@kernel.org,m:tglx@linutronix.de,m:rostedt@goodmis.org,m:joel@joelfernandes.org,m:sashal@kernel.org,m:daniel.vetter@ffwll.ch,m:duyuyang@gmail.com,m:johannes.berg@intel.com,m:tj@kernel.org,m:tytso@mit.edu,m:willy@infradead.org,m:david@fromorbit.com,m:amir73il@gmail.com,m:gregkh@linuxfoundation.org,m:kernel-team@lge.com,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:mhocko@kernel.org,m:minchan@kernel.org,m:hannes@cmpxchg.org,m:vdavydov.dev@gmail.com,m:sj@kernel.org,m:jglisse@redhat.com,m:dennis@kernel.org,m:cl@linux.com,m:penberg@kernel.org,m:rientjes@google.com,m:vbabka@suse.cz,m:ngupta@vflare.org,m:linux-block@vger.kernel.org,m:josef@toxicpanda.com,m:linux-fsdevel@vger.kern
 el.org,m:jack@suse.cz,m:jlayton@kernel.org,m:dan.j.williams@intel.com,m:hch@infradead.org,m:djwong@ kernel.org,m:dri-devel@lists.freedesktop.org,m:rodrigosiqueiramelo@gmail.com,m:melissa.srw@gmail.com,m:hamohammed.sa@gmail.com,m:harry.yoo@oracle.com,m:chris.p.wilson@intel.com,m:gwan-gyeong.mun@intel.com,m:boqun.feng@gmail.com,m:longman@redhat.com,m:yunseong.kim@ericsson.com,m:ysk@kzalloc.com,m:yeoreum.yun@arm.com,m:netdev@vger.kernel.org,m:matthew.brost@intel.com,m:her0gyugyu@gmail.com,m:corbet@lwn.net,m:catalin.marinas@arm.com,m:bp@alien8.de,m:x86@kernel.org,m:hpa@zytor.com,m:luto@kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:andi.shyti@kernel.org,m:arnd@arndb.de,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:rppt@kernel.org,m:surenb@google.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:j
 osh@joshtriplett.org,m:urezki@gmail.com,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:juri.lelli@redhat.co,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:chuck.lever@oracle.com,m:neil@brown.name,m:okorniev@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sk.com:from_mime,sk.com:email,sk.com:mid,kzalloc.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DD6570CF22

V2hpbGUgY29tcGlsaW5nIExpbnV4IGtlcm5lbCB3aXRoIERFUFQgb24sIHRoZSBmb2xsb3dpbmcg
ZXJyb3Igd2FzDQpvYnNlcnZlZDoNCg0KICAgLi9pbmNsdWRlL2xpbnV4L3JjdXBkYXRlLmg6MTA4
NDoxNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvDQogICDigJhCVUlMRF9CVUdfT07igJkN
CiAgIDEwODQgfCBCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKCoocHRyKSksIHJoZikgPj0g
NDA5Nik7CVwNCiAgICAgICAgfCBefn5+fn5+fn5+fn4NCiAgIC4vaW5jbHVkZS9saW51eC9yY3Vw
ZGF0ZS5oOjEwNDc6Mjk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybw0KICAgJ2t2ZnJlZV9y
Y3VfYXJnXzInDQogICAxMDQ3IHwgI2RlZmluZSBrZnJlZV9yY3UocHRyLCByaGYpIGt2ZnJlZV9y
Y3VfYXJnXzIocHRyLCByaGYpDQogICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+fn4NCiAgIG5ldC9zdW5ycGMveHBydC5jOjE4NTY6OTogbm90ZTogaW4g
ZXhwYW5zaW9uIG9mIG1hY3JvICdrZnJlZV9yY3UnDQogICAxODU2IHwga2ZyZWVfcmN1KHhwcnQs
IHJjdSk7DQogICAgICAgIHwgXn5+fn5+fn5+DQogICAgQ0MgbmV0L2tjbS9rY21wcm9jLm8NCiAg
IG1ha2VbNF06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyMDM6IG5ldC9zdW5ycGMveHBy
dC5vXSBFcnJvciAxDQoNClNpbmNlIGtmcmVlX3JjdSgpIGFzc3VtZXMgJ29mZnNldCBvZiBzdHJ1
Y3QgcmN1X2hlYWQgaW4gYSByY3UtbWFuYWdlZA0Kc3RydWN0IDwgNDA5NicsIHRoZSBvZmZlc3Qg
b2Ygc3RydWN0IHJjdV9oZWFkIGluIHN0cnVjdCBycGNfeHBydCBzaG91bGQNCm5vdCBleGNlZWQg
NDA5NiBidXQgZG9lcywgZHVlIHRvIHRoZSBkZWJ1ZyBpbmZvcm1hdGlvbiBhZGRlZCBieSBERVBU
Lg0KDQpSZWxvY2F0ZSBzdHJ1Y3QgcmN1X2hlYWQgdG8gdGhlIGZpcnN0IGZpZWxkIG9mIHN0cnVj
dCBycGNfeHBydCBmcm9tIGFuDQphcmJpdHJhcnkgbG9jYXRpb24gdG8gYXZvaWQgdGhlIGlzc3Vl
IGFuZCBtZWV0IHRoZSBhc3N1bXB0aW9uLg0KDQpSZXBvcnRlZC1ieTogWXVuc2VvbmcgS2ltIDx5
c2tAa3phbGxvYy5jb20+DQpTaWduZWQtb2ZmLWJ5OiBCeXVuZ2NodWwgUGFyayA8Ynl1bmdjaHVs
QHNrLmNvbT4NClJldmlld2VkLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3JnPg0K
LS0tDQogaW5jbHVkZS9saW51eC9zdW5ycGMveHBydC5oIHwgOSArKysrKysrKy0NCiAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmggYi9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmgN
CmluZGV4IGY0NmQxZmI4ZjcxYS4uNjY2ZTQyYTE3YTMxIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9s
aW51eC9zdW5ycGMveHBydC5oDQorKysgYi9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmgNCkBA
IC0yMTEsNiArMjExLDE0IEBAIGVudW0geHBydF90cmFuc3BvcnRzIHsNCiANCiBzdHJ1Y3QgcnBj
X3N5c2ZzX3hwcnQ7DQogc3RydWN0IHJwY194cHJ0IHsNCisJLyoNCisJICogUGxhY2Ugc3RydWN0
IHJjdV9oZWFkIHdpdGhpbiB0aGUgZmlyc3QgNDA5NiBieXRlcyBvZiBzdHJ1Y3QNCisJICogcnBj
X3hwcnQgaWYgc2l6ZW9mKHN0cnVjdCBycGNfeHBydCkgPiA0MDk2LCBzbyB0aGF0DQorCSAqIGtm
cmVlX3JjdSgpIGNhbiBzaW1wbHkgd29yayBhc3N1bWluZyB0aGF0LiAgU2VlIHRoZSBjb21tZW50
DQorCSAqIGluIGtmcmVlX3JjdSgpLg0KKwkgKi8NCisJc3RydWN0IHJjdV9oZWFkCQlyY3U7DQor
DQogCXN0cnVjdCBrcmVmCQlrcmVmOwkJLyogUmVmZXJlbmNlIGNvdW50ICovDQogCWNvbnN0IHN0
cnVjdCBycGNfeHBydF9vcHMgKm9wczsJCS8qIHRyYW5zcG9ydCBtZXRob2RzICovDQogCXVuc2ln
bmVkIGludAkJaWQ7CQkvKiB0cmFuc3BvcnQgaWQgKi8NCkBAIC0zMTcsNyArMzI1LDYgQEAgc3Ry
dWN0IHJwY194cHJ0IHsNCiAjaWYgSVNfRU5BQkxFRChDT05GSUdfU1VOUlBDX0RFQlVHKQ0KIAlz
dHJ1Y3QgZGVudHJ5CQkqZGVidWdmczsJCS8qIGRlYnVnZnMgZGlyZWN0b3J5ICovDQogI2VuZGlm
DQotCXN0cnVjdCByY3VfaGVhZAkJcmN1Ow0KIAljb25zdCBzdHJ1Y3QgeHBydF9jbGFzcwkqeHBy
dF9jbGFzczsNCiAJc3RydWN0IHJwY19zeXNmc194cHJ0CSp4cHJ0X3N5c2ZzOw0KIAlib29sCQkJ
bWFpbjsgLyptYXJrIGlmIHRoaXMgaXMgdGhlIDFzdCB0cmFuc3BvcnQgKi8NCi0tIA0KMi4xNy4x
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
