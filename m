Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAFjA2wD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A00B4111BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AFF244664
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:42:34 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 35BAF3F8EF
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 09:28:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YRrD1Ibi;
	spf=pass (lists.linaro.org: domain of jlayton@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1264E44290;
	Fri,  5 Dec 2025 09:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3F54C4CEF1;
	Fri,  5 Dec 2025 09:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764926885;
	bh=/3K8i488KBtohoPjUWcmwxOuPxkVYp8UF2/iPAPxq7Y=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=YRrD1IbijzZtM+qkYdKqMCtJSY7HW/b2RS+RGwoFe9bPK/qWFg3n6jePfSjkEJ252
	 CAstxESV1t5hIfHaNpivukj3cMXOpAMg0/UqoCgsIZzotoaILL21oKFa9ikkMb7YNl
	 qqNVditrpYtGa7rGlqrjiS8gpKMFlw9u1U78kVXNQ6fZ18DGyDH2qOcSrxYOJtk1WN
	 dF0rZn265IWR71TmnUtnGq8SAs1Q/6QTETPixkqjPtVt06ZheKAgeGXqIyF47v2gee
	 2OnhEW5m8+31fx4RYUVZM3XYN7ukMj5estutAcl9/Ron0WYtClPzGLKIvzh03vv/vR
	 FOpwVUcjkVvvA==
Message-ID: <cd65b963dd4edade3afb2e7d27eb33af1c62682e.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Byungchul Park <byungchul@sk.com>, linux-kernel@vger.kernel.org
Date: Fri, 05 Dec 2025 04:27:52 -0500
In-Reply-To: <20251205071855.72743-42-byungchul@sk.com>
References: <20251205071855.72743-1-byungchul@sk.com>
	 <20251205071855.72743-42-byungchul@sk.com>
Autocrypt: addr=jlayton@kernel.org; prefer-encrypt=mutual;
 keydata=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
 QZIQXVeAA+smfTT0tDrisj1U5x6ZB9b3nBg65kc=
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jlayton@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JBWUPTT5LUKKRIUSUGXVSUQSYLA4SJA3
X-Message-ID-Hash: JBWUPTT5LUKKRIUSUGXVSUQSYLA4SJA3
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:36 +0000
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.freedesktop.org, rodri
 gosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.com, vincent.guittot@l
 inaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik@gmail.com, andrii@k
 ernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 41/42] SUNRPC: relocate struct rcu_head to the first field of struct rpc_xprt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JBWUPTT5LUKKRIUSUGXVSUQSYLA4SJA3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3174];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.843];
	RCPT_COUNT_GT_50(0.00)[165];
	FROM_NEQ_ENVFROM(0.00)[jlayton@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[skhynix.com,linux-foundation.org,opensource.wdc.com,vger.kernel.org,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,l,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,k,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,garyguo.net,protonmail.com,umich.edu];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,sk.com:email,kzalloc.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 7A00B4111BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI1LTEyLTA1IGF0IDE2OjE4ICswOTAwLCBCeXVuZ2NodWwgUGFyayB3cm90ZToN
Cj4gV2hpbGUgY29tcGlsaW5nIExpbnV4IGtlcm5lbCB3aXRoIERFUFQgb24sIHRoZSBmb2xsb3dp
bmcgZXJyb3Igd2FzDQo+IG9ic2VydmVkOg0KPiANCj4gICAgLi9pbmNsdWRlL2xpbnV4L3JjdXBk
YXRlLmg6MTA4NDoxNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvDQo+ICAgIOKAmEJVSUxE
X0JVR19PTuKAmQ0KPiAgICAxMDg0IHwgQlVJTERfQlVHX09OKG9mZnNldG9mKHR5cGVvZigqKHB0
cikpLCByaGYpID49IDQwOTYpOwlcDQo+ICAgICAgICAgfCBefn5+fn5+fn5+fn4NCj4gICAgLi9p
bmNsdWRlL2xpbnV4L3JjdXBkYXRlLmg6MTA0NzoyOTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1h
Y3JvDQo+ICAgICdrdmZyZWVfcmN1X2FyZ18yJw0KPiAgICAxMDQ3IHwgI2RlZmluZSBrZnJlZV9y
Y3UocHRyLCByaGYpIGt2ZnJlZV9yY3VfYXJnXzIocHRyLCByaGYpDQo+ICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fg0KPiAgICBuZXQvc3VucnBj
L3hwcnQuYzoxODU2Ojk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAna2ZyZWVfcmN1Jw0K
PiAgICAxODU2IHwga2ZyZWVfcmN1KHhwcnQsIHJjdSk7DQo+ICAgICAgICAgfCBefn5+fn5+fn4N
Cj4gICAgIENDIG5ldC9rY20va2NtcHJvYy5vDQo+ICAgIG1ha2VbNF06ICoqKiBbc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDoyMDM6IG5ldC9zdW5ycGMveHBydC5vXSBFcnJvciAxDQo+IA0KPiBTaW5j
ZSBrZnJlZV9yY3UoKSBhc3N1bWVzICdvZmZzZXQgb2Ygc3RydWN0IHJjdV9oZWFkIGluIGEgcmN1
LW1hbmFnZWQNCj4gc3RydWN0IDwgNDA5NicsIHRoZSBvZmZlc3Qgb2Ygc3RydWN0IHJjdV9oZWFk
IGluIHN0cnVjdCBycGNfeHBydCBzaG91bGQNCj4gbm90IGV4Y2VlZCA0MDk2IGJ1dCBkb2VzLCBk
dWUgdG8gdGhlIGRlYnVnIGluZm9ybWF0aW9uIGFkZGVkIGJ5IERFUFQuDQo+IA0KPiBSZWxvY2F0
ZSBzdHJ1Y3QgcmN1X2hlYWQgdG8gdGhlIGZpcnN0IGZpZWxkIG9mIHN0cnVjdCBycGNfeHBydCBm
cm9tIGFuDQo+IGFyYml0cmFyeSBsb2NhdGlvbiB0byBhdm9pZCB0aGUgaXNzdWUgYW5kIG1lZXQg
dGhlIGFzc3VtcHRpb24uDQo+IA0KPiBSZXBvcnRlZC1ieTogWXVuc2VvbmcgS2ltIDx5c2tAa3ph
bGxvYy5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEJ5dW5nY2h1bCBQYXJrIDxieXVuZ2NodWxAc2su
Y29tPg0KPiAtLS0NCj4gIGluY2x1ZGUvbGludXgvc3VucnBjL3hwcnQuaCB8IDkgKysrKysrKyst
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9zdW5ycGMveHBydC5oIGIvaW5jbHVkZS9saW51
eC9zdW5ycGMveHBydC5oDQo+IGluZGV4IGY0NmQxZmI4ZjcxYS4uNjY2ZTQyYTE3YTMxIDEwMDY0
NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3N1bnJwYy94cHJ0LmgNCj4gKysrIGIvaW5jbHVkZS9s
aW51eC9zdW5ycGMveHBydC5oDQo+IEBAIC0yMTEsNiArMjExLDE0IEBAIGVudW0geHBydF90cmFu
c3BvcnRzIHsNCj4gIA0KPiAgc3RydWN0IHJwY19zeXNmc194cHJ0Ow0KPiAgc3RydWN0IHJwY194
cHJ0IHsNCj4gKwkvKg0KPiArCSAqIFBsYWNlIHN0cnVjdCByY3VfaGVhZCB3aXRoaW4gdGhlIGZp
cnN0IDQwOTYgYnl0ZXMgb2Ygc3RydWN0DQo+ICsJICogcnBjX3hwcnQgaWYgc2l6ZW9mKHN0cnVj
dCBycGNfeHBydCkgPiA0MDk2LCBzbyB0aGF0DQo+ICsJICoga2ZyZWVfcmN1KCkgY2FuIHNpbXBs
eSB3b3JrIGFzc3VtaW5nIHRoYXQuICBTZWUgdGhlIGNvbW1lbnQNCj4gKwkgKiBpbiBrZnJlZV9y
Y3UoKS4NCj4gKwkgKi8NCj4gKwlzdHJ1Y3QgcmN1X2hlYWQJCXJjdTsNCj4gKw0KPiAgCXN0cnVj
dCBrcmVmCQlrcmVmOwkJLyogUmVmZXJlbmNlIGNvdW50ICovDQo+ICAJY29uc3Qgc3RydWN0IHJw
Y194cHJ0X29wcyAqb3BzOwkJLyogdHJhbnNwb3J0IG1ldGhvZHMgKi8NCj4gIAl1bnNpZ25lZCBp
bnQJCWlkOwkJLyogdHJhbnNwb3J0IGlkICovDQo+IEBAIC0zMTcsNyArMzI1LDYgQEAgc3RydWN0
IHJwY194cHJ0IHsNCj4gICNpZiBJU19FTkFCTEVEKENPTkZJR19TVU5SUENfREVCVUcpDQo+ICAJ
c3RydWN0IGRlbnRyeQkJKmRlYnVnZnM7CQkvKiBkZWJ1Z2ZzIGRpcmVjdG9yeSAqLw0KPiAgI2Vu
ZGlmDQo+IC0Jc3RydWN0IHJjdV9oZWFkCQlyY3U7DQo+ICAJY29uc3Qgc3RydWN0IHhwcnRfY2xh
c3MJKnhwcnRfY2xhc3M7DQo+ICAJc3RydWN0IHJwY19zeXNmc194cHJ0CSp4cHJ0X3N5c2ZzOw0K
PiAgCWJvb2wJCQltYWluOyAvKm1hcmsgaWYgdGhpcyBpcyB0aGUgMXN0IHRyYW5zcG9ydCAqLw0K
DQpTZWVtcyBmaW5lIHRvIG1lLg0KDQpSZXZpZXdlZC1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25A
a2VybmVsLm9yZz4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
