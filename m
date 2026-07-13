Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FQ/QN0xdVGqWlAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 05:36:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 28506746F4B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 05:36:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=sk.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2303040A7A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 03:36:43 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 2D0533F7EE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2026 03:36:30 +0000 (UTC)
X-AuditID: a67dfc5b-c45ff70000001609-f9-6a545d3c324c
Date: Mon, 13 Jul 2026 12:36:23 +0900
From: Byungchul Park <byungchul@sk.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <20260713033623.GA79338@system.software.com>
References: <20260706061928.66713-1-byungchul@sk.com>
 <20260706061928.66713-40-byungchul@sk.com>
 <CANiq72kEo=bGcHNaSA9JZhv4iuE+YDvu0kN+Z7aopVp3=2C+Wg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72kEo=bGcHNaSA9JZhv4iuE+YDvu0kN+Z7aopVp3=2C+Wg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sb0wTdxjH87u73l0bm1w7F35AxkwNWcKCHcQlj8u28MqdL9xmXELioluR
	c9RB0VY7MVlCxW5uQ+zq2oZWXC1QSmlAccifrUsFLW5YB8QITjYnqWUIVFcKWyeDHXVmvPvm
	+3yf7+d58bCkspfOYrW6Q4JepylX0TJKNrfOk//a7nf2vzTbhuGWKUTBP65uBobb2xAkU3cY
	WAmGEdhHrCTMDCQQOKZNFDz01iKYvvoGjC3OIvBGlwmIhj5FMGN/RMPjyE8kOGzDCL4J/4og
	6DtGw31LFwlzI2cIcB8LSqDBZUXQ+1sfAxN2KwFDFg8hFtNgv5ABLkcNAdcbJyjwVudCuG2K
	gZmYlYbkzXsEBGpjJJzoW6Ag+POLEO6ZJKBjalxsCF+j4E7kFAPNYyMEnI7HxGMWvSTcdswy
	MBpyE9AajNDQ+nULAmsswUCiaZGCwZMhAj5pukDAlY5uApp9cxKYcjYQMLAwS8DfLVcRJBqW
	JWCuTTHwhdlOwfk/Wmgwzd9FcHziZUi2+WmIW5KSoiLef/ESwQfOBhCfbK4h+R89mP8yks/3
	On9heHfnYf74lTkJf9GXxzd+N03w5xILEr7T/xnNn3v8O8nHb9xg+N57W/joTQfxds4u2aul
	QrnWKOjVr78vKzOt1JEHXNSRyfpOVI0ayc+RlMXcZrzk9kieattQHVrVFJeLT4xeo1Y1zb2A
	x8dT6fx6rhDfGvpW9GUsydlysOfhmfTCM5wWT1mC6ZCcA3w/tZL2lVwrws6Zoie+Av9QH02X
	kmLp0tlRMc+KOhu3LLNP7OdxTZcrXSPlduDGUIRe1c9yG3Ho0iCxysVcXIo9p8P/HZ2JL/vG
	KQtSONcgnGsQzv8RzjUIN6L8SKnVGSs02vLNm8qqdNojm/ZWVnQi8aG9Hy+924MSwzv7Ecci
	1Tr5ecPO/UqJxmioquhHmCVV6+UF2aIlL9VUHRX0le/pD5cLhn6UzVKqDHnh4kelSu4DzSHh
	Q0E4IOifTglWmlWNqp/b9mCvk9u1b3tgbDBorrf5i40DxVl75gs2xnL1IffW+Z7Jg+bbNQoq
	Z8ujg9vZ7zfk9nk8rQ/azdNUypjRLqgV6q7oUVNeXjDQ0545snB9d9PdP980+qXa7pIdb6mz
	ZLa/9vm2mepKdB2Vl9Unw8uFW0eLT5X4Fa9syI9/lamiDGWagjxSb9D8C1H9KO/MAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUxTVxjHPffenl6a1VwRw4lkc3bqlhl1bmKeRLJp/MDN3qJjZsuWRTq5
	WWsBsVUmJoqldtbNNKWm7WgrMBhVsUNWsA6hGYGIVUbkZUNUEFgqjoGACJjyVi81y/hy8j+/
	839+eT4clo6145WsOvOQoM1UpiuwjJF9vM2wIemrT/e/FR5ZByZjLnT3hiTQqa9nYHLCxID7
	shfDnOuqFEy+AgkE7+Qx0FpxCUHvpAnBsxkXDcaaCANz1iYpTITvS8GmRxAJNCGwt1lp6Gr9
	nQZvtZ6Cp5XzGIYaxxHY+kMYHIN6BkY9ZxA4B1xSGLyeDI97ayUQ6XlEwZ2pYQSe0DwFofpT
	CObsGigqqRLH7WMYZlpu0+CwtSL4qb+HhvHBPgTVTQ8QBC7kYXhouUJDR2gp/Dk5iuGm7QcM
	j9vcFIxUYijOC0ig7Y8hBOdcVgQD9wIUGEovY7Cf8zFQ03dNCm1DsxR0260UXPJ9BL2eAQaa
	LSWUuK7Y+jUeXA4DJR7/UGD7pZaCsKdcur0M8c+MZoYvr/JTvLF9DvPeQi/iZ6atiJ8oM9C8
	0SJeG4dHaf5k1bd8WfMw5qcn/8J8YKqY4W+VEP7n09MUn9+yga9x9kh37fhClpQmpKuzBe2m
	d1NlKn3ETGe5mCN/F/jQCVRKf49iWMJtIbZmM1rIDLeWmNqDzELG3Oukqysc7cRxb5PO5lqR
	y1ias71CSkbd0YHlnJo8sgSiJTkH5GE4EuWx3EVEnEPbX/Bl5GZBKCqlRelsYbvYZ8WcQM7P
	sy/wKmK44opqYrjdpLS+BS/kFdxrpN5/g7Kgpc5FJucik/N/k3ORqRgx5ShOnZmdoVSnJ27U
	aVQ5meojG/cdyPAh8bd6js3m/4YmOpIbEMcixUvySl3K/liJMluXk9GACEsr4uSbE0QkT1Pm
	HBW0B/ZqD6cLugaUwDKKePn7nwmpsdw3ykOCRhCyBO1/rxQbs/IECn4i+NHaiuu55j1nD75x
	xvDBj/1POnFa4a01n+s0I1/Ghf9d0mcz5j5ReOMTHRcHXnWM95UuyavcYZ66sDfl6tfF608X
	jfEpLTfcSauPyxP9yp1jsxXBdzSdyVtXn7x/+7vhuvOkruNe1ofBs1t1iZ6RIr9K1Z2ldj/N
	r3j5vWXCg7sKRqdSbn6T1uqUzwG4/G81qQMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: -
Message-ID-Hash: TVFVMBHNBOZUG5FKY6SWUEIFGR2OZ5YM
X-Message-ID-Hash: TVFVMBHNBOZUG5FKY6SWUEIFGR2OZ5YM
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Gary Guo <gary@garyguo.net>, linux-kernel@vger.kernel.org, max.byungchul.park@gmail.com, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kerne
 l.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangsha
 nlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org
 , thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v19 39/40] rust: completion: Add __rust_helper to rust_helper_wait_for_completion()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TVFVMBHNBOZUG5FKY6SWUEIFGR2OZ5YM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sk.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:miguel.ojeda.sandonis@gmail.com,m:gary@garyguo.net,m:linux-kernel@vger.kernel.org,m:max.byungchul.park@gmail.com,m:kernel_team@skhynix.com,m:torvalds@linux-foundation.org,m:damien.lemoal@opensource.wdc.com,m:linux-ide@vger.kernel.org,m:adilger.kernel@dilger.ca,m:linux-ext4@vger.kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:will@kernel.org,m:tglx@linutronix.de,m:rostedt@goodmis.org,m:joel@joelfernandes.org,m:sashal@kernel.org,m:daniel.vetter@ffwll.ch,m:duyuyang@gmail.com,m:johannes.berg@intel.com,m:tj@kernel.org,m:tytso@mit.edu,m:willy@infradead.org,m:david@fromorbit.com,m:amir73il@gmail.com,m:gregkh@linuxfoundation.org,m:kernel-team@lge.com,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:mhocko@kernel.org,m:minchan@kernel.org,m:hannes@cmpxchg.org,m:vdavydov.dev@gmail.com,m:sj@kernel.org,m:jglisse@redhat.com,m:dennis@kernel.org,m:cl@linux.com,m:penberg@kernel.org,m:rientjes@google.com,m:vbabka@suse.cz,m:ngupta@vflare.org,m:linux-block@vger.kernel
 .org,m:josef@toxicpanda.com,m:linux-fsdevel@vger.kernel.org,m:jack@suse.cz,m:jlayton@kerne,m:dan.j.williams@intel.com,m:hch@infradead.org,m:djwong@kernel.org,m:dri-devel@lists.freedesktop.org,m:rodrigosiqueiramelo@gmail.com,m:melissa.srw@gmail.com,m:hamohammed.sa@gmail.com,m:harry.yoo@oracle.com,m:chris.p.wilson@intel.com,m:gwan-gyeong.mun@intel.com,m:boqun.feng@gmail.com,m:longman@redhat.com,m:yunseong.kim@ericsson.com,m:ysk@kzalloc.com,m:yeoreum.yun@arm.com,m:netdev@vger.kernel.org,m:matthew.brost@intel.com,m:her0gyugyu@gmail.com,m:corbet@lwn.net,m:catalin.marinas@arm.com,m:bp@alien8.de,m:x86@kernel.org,m:hpa@zytor.com,m:luto@kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:andi.shyti@kernel.org,m:arnd@arndb.de,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:rppt@kernel.org,m:surenb@google.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.
 upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:mathieu.desnoyers@efficios.com,m:jiangsha nlai@gmail.com,m:qiang.zhang@linux.dev,m:juri.lelli@redhat.com,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:chuck.lever@oracle.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_GT_50(0.00)[165];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[garyguo.net,vger.kernel.org,gmail.com,skhynix.com,linux-foundation.org,opensource.wdc.com,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,kerne,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,protonmail.com,umich.edu];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,system.software.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28506746F4B

T24gU2F0LCBKdWwgMTEsIDIwMjYgYXQgMDI6MTM6MDVQTSArMDIwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOg0KPiBPbiBNb24sIEp1bCA2LCAyMDI2IGF0IDg6MjLigK9BTSBCeXVuZ2NodWwgUGFyayA8
Ynl1bmdjaHVsQHNrLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBUaGlzIGlzIG5lZWRlZCB0byBpbmxp
bmUgdGhlc2UgaGVscGVycyBpbnRvIFJ1c3QgY29kZSwgd2hpY2ggaXMgcmVxdWlyZWQNCj4gPiBm
b3IgREVQVCB0byBwbGF5IHdpdGggd2FpdF9mb3JfY29tcGxldGlvbigpLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogQnl1bmdjaHVsIFBhcmsgPGJ5dW5nY2h1bEBzay5jb20+DQo+IA0KPiBBcGFy
dCBmcm9tIHdoYXQgR2FyeSBzYWlkIC0tIHdoeSBkaWQgeW91IG5lZWQgdG8gZG8gdGhpcyBpbiBh
IHNlcGFyYXRlDQo+IHBhdGNoIGluIHRoZSBzYW1lIHNlcmllcz8NCg0KTm90IG5lY2Vzc2FyeS4g
IEkgd2lsbCBtYWtlIHRoZW0gaW50byBvbmUgcGF0Y2guICBUaGFua3MuDQoNCglCeXVuZ2NodWwN
Cj4gDQo+IENoZWVycywNCj4gTWlndWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
