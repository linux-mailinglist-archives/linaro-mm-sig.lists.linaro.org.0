Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZlVyFa54S2riRwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Jul 2026 11:43:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C82FB70EB3D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Jul 2026 11:43:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=WcvtDMPh;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9BD440A8A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Jul 2026 09:43:08 +0000 (UTC)
Received: from mout-p-199.mailbox.org (mout-p-199.mailbox.org [80.241.56.162])
	by lists.linaro.org (Postfix) with ESMTPS id 109823F798
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 09:42:58 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050:0:465::101])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-199.mailbox.org (Postfix) with ESMTPS id 4gtztS34TszKnTJ;
	Mon, 06 Jul 2026 11:42:56 +0200 (CEST)
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gtztQ5lTCz8skM;
	Mon, 06 Jul 2026 11:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783330974; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tJ9jd7Zxu199hkJd1xLE7QEc/TjACmfRv6CygkoHVoQ=;
	b=WcvtDMPhCBewiHaBykCEOoSvuswegK7PLcuOYlytMHKbFR6ZZUVbBCgpotaZwg3Agw2hWF
	aTI3aIwp6TuopQUTf+yRrpo37hATExHA/kwl4OJ1SArEfPRP5/N2KE+8tMaYbOqlDyym2C
	HVp5Hw4RKl9QIzaI5sSFYtR9IOgIN5T0v9zlXy5AVNXleeBkXUQtv+UoCDv5OjSlQdDPe8
	1j8CNWuNQ01iSSthj/FL3aqJv1eKhVcgX0NUIi1R6tS3yaFOGPSzAWe9cC+Cg0Qkxmg3qm
	psZ7SL+0yWgIcUilk5UyCFTYIgpMNnK5BmNcm3HskTgN0mwJVxjrZwDhc+83ZA==
Message-ID: <0af946b7bef6958f103598083919bbf933423676.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, phasta@kernel.org, Tvrtko
 Ursulin <tursulin@ursulin.net>, Matthew Brost <matthew.brost@intel.com>,
 Danilo Krummrich	 <dakr@kernel.org>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <ckoenig.leichtzumerken@gmail.com>, Maarten Lankhorst	
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Marco Pagani <marco.pagani@linux.dev>, Boris Brezillon	
 <boris.brezillon@collabora.com>
Date: Mon, 06 Jul 2026 11:42:47 +0200
In-Reply-To: <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
References: <20260701085920.3253248-2-phasta@kernel.org>
	 <20260701085920.3253248-3-phasta@kernel.org>
	 <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
	 <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
	 <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
MIME-Version: 1.0
X-MBO-RS-ID: df8126bf0d27855a51c
X-MBO-RS-META: f8ykmoj3beju11nmnkzj8i63r46bck87
X-Spamd-Bar: ---
Message-ID-Hash: 54BWOXGESSUCP2WLYZRP7F5VUPGKYDCB
X-Message-ID-Hash: 54BWOXGESSUCP2WLYZRP7F5VUPGKYDCB
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/54BWOXGESSUCP2WLYZRP7F5VUPGKYDCB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tvrtko.ursulin@igalia.com,m:phasta@kernel.org,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[igalia.com,kernel.org,ursulin.net,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,collabora.com];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C82FB70EB3D

T24gTW9uLCAyMDI2LTA3LTA2IGF0IDA5OjQ1ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDMvMDcvMjAyNiAxNTo0NywgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+IA0KPiA+
IA0KPiA+IEkgdGhpbmsgaXQgY2FuIGRldGFpbCB3aGljaCBmdW5jdGlvbnMgd2lsbCBub3cgYmUg
bG9ja2VkOyBidXQNCj4gPiBtZW50aW9uaW5nIHRoZSB1c2VycyB3b3VsZCBiZSBvdmVya2lsbCBh
bmQgaXMgdW5jb21tb24gZm9yIEFQSSByZXdvcmtzLg0KPiANCj4gSGVyZSBJIGRpc2FncmVlIHF1
aXRlIHN0cm9uZ2x5LiBHaXZlbiB0aGUgcGF0Y2ggaXMgbWFraW5nIHN0cm9uZyBjbGFpbXMgDQo+
IHRoYXQgdGhlIGxvY2tsZXNzIGFjY2VzcyB3YXMgYWRkZWQgZm9yIG5vIG9idmlvdXMgcmVhc29u
LCBhbmQgdGhhdCB3ZQ0KPiBoYXZlIG5vdyBlc3RhYmxpc2hlZCB0aGUgbG9ja2xlc3MgaGVscGVy
IGlzIGluIGZhY3QgdXNlZCBvbiB0aGUgDQo+IHN1Ym1pc3Npb24gcGF0aHMsIGl0IGlzIHJlYWxs
eSByZXF1aXJlZCB0aGF0IHRob3NlIHN0cm9uZyBjbGFpbXMgYXJlIA0KPiBiYWNrZWQgYnkgYSBj
b25jcmV0ZSBhbmFseXNpcyBpbnN0ZWFkIG9mIGp1c3Qgc2F5aW5nICJub3QgcGVyZm9ybWFuY2UN
Cj4gY3JpdGljYWwgaW4gYW55IHdheSIuDQoNClRoaXMgaXMgYSBzdHJvbmcgY2FzZSBmb3IgdGhl
IHJldmVyc2FsIG9mIHRoZSBidXJkZW4gb2YgcHJvb2YuDQoNClRoZSBlbnRpcmUgY29kZSBiYXNl
IG9mIGRybV9zY2hlZCBoYXMgYmVlbiBkZXNpZ25lZCBvbiB0aGUgY29tcHV0ZXINCnNjaWVuY2Ug
cHJlbWlzZSBvZiBsb2NrcyBiZWluZyBldmlsLiBUaGF0J3Mgd2h5IGxpdGVyYWxseSBhbGwNCnN5
bmNocm9uaXphdGlvbiBwcmltaXRpdmVzIGV4Y2VwdCBmb3IgbG9ja3MgaGF2ZSBiZWVuIHVzZWQg
d2hlcmUNCnBvc3NpYmxlLCBpbmNsdWRpbmcgdW5kZWZpbmVkIGJlaGF2aW9yLiBUaGUgZGVzaWdu
ZXJzIHRyaWVkIGFzIGhhcmQgYXMNCnRoZXkgY291bGQgdG8gYXZvaWQgbG9ja3MuDQoNClRoYXQg
aXMgY2xlYXJseSBwcm92ZW4gYnkgdGhlIGZhY3QgdGhhdCBpbiBhbGwgb3JpZ2luYWwgZGF0YSB0
eXBlDQpkZWZpbml0aW9ucywgdGhlIG9ubHkgY29tcG9uZW50cyB0aGF0IHdlcmUgbG9ja2VkIHdl
cmUgYWx3YXlzIGxpc3RzLA0Kc2luY2UgdGhvc2UgYXJlIHRoZSBzdHJ1Y3R1cmVzIHdoZXJlIHlv
dSByZWFsbHkgY2Fubm90IGF2b2lkIGEgbG9jayBpbg0KbW9zdCBjYXNlcy4NCg0KVGhlIGF2ZXJz
aW9uIHRvIGxvY2tpbmcgd2FzIHNvIGdyZWF0IHRoYXQgdGhleSBkZXNpZ25lZCBzcHNjX3F1ZXVl
LA0Kd2hpY2ggdXNlcyBhdCBsZWFzdCBhcyBtYW55IGFzIGV4cGVuc2l2ZSBpbnN0cnVjdGlvbnMg
YXMgYSBsb2NrICsgbGlzdA0Kd291bGQgaGF2ZSBuZWVkZWQsIGFuZCBpdHMgY29ycmVjdG5lc3Mg
aXMgbm90IHByb3Zlbiwgbm9yIGFyZSBpdHMNCmJlaGF2aW9yIGFuZCBydWxlcyBuZWl0aGVyIGRv
Y3VtZW50ZWQgb3IgcHJvdmVuLg0KDQpJdCdzIG5vdCB1cCB0byB0aGUgZmFjdGlvbiB3aG8gd2Fu
dHMgdG8gdXNlIGNvcnJlY3QgbG9ja2luZyBhbmQgcGhhc2UNCm91dCBVQiB0byBwcm92ZSB0aGF0
IHRoZSBsb2NrbGVzc25lc3MgaXMgYmFkLCBidXQgdG8gd2hvbWV2ZXIgYWRkZWQgdGhlDQpsb2Nr
bGVzc25lc3MgdG8gcHJvdmUgd2h5IGl0IGlzIGdvb2QsIGkuZS4sIG5lY2Vzc2FyeSDigJMgd2hp
Y2ggd2FzIG5vdA0KZG9uZSBoZXJlLCBuZWl0aGVyIGluIGNvbW1lbnRzIG5vciBjb21taXQgbWVz
c2FnZS4gU28gdGhlIHJlYXNvbmFibGUNCmFzc3VtcHRpb24gaXMgdGhhdCBpdCdzIHNpbXBseSBh
IGxlZnRvdmVyIGZyb20gYSBmbGF3ZWQsIGJyb2tlbiBkZXNpZ24uDQoNCkFuZCB0aGUga2VybmVs
LXdvcmtmbG93IGlzIHRoYXQgdGhpbmdzIGFyZSBhbHdheXMgb24tbGlzdCBmb3IgYSB3aGlsZQ0K
YmVmb3JlIGJlaW5nIG1lcmdlZCBpcyB0aGF0IHBhcnRpZXMgd2hvIGRvIGhhdmUgY29uY2VybnMg
YW5kIHdobyBjYW4NCnBvaW50IG91dCBwcm9ibGVtcyBoYXZlIHRpbWUgdG8gZG8gc28uIFdoaWNo
IGlzIG9mIGNvdXJzZSBvcGVuIHRvIHlvdToNCmRvIHlvdSBzZWUgYSBwZXJmb3JtYW5jZS1yZWdy
ZXNzaW9uIHByb2JsZW0gd2l0aCB0aGlzIHBhdGNoLCBhbmQgaWYgc28sDQp3aGVyZT8NCg0KQW55
d2F5czoNCiAqIENvcnJlY3QgbWUgaWYgSSdtIHdyb25nLCBidXQgaXQgd291bGQgc2VlbSB0aGUg
b25seSBkcml2ZXItdXNhZ2UNCiAgIHdoaWNoIGNvdWxkIHNlZSBhICpuZXcqIGxvY2sgaW4gaXRz
IHBhdGggaXMNCiAgIGRybV9zY2hlZF9lbnRpdHlfZXJyb3IoKSwgZm9yIHdoaWNoIHlvdSB5b3Vy
c2VsZiBhZ3JlZSB0aGF0IGl0J3MNCiAgIGlycmVsZXZhbnQgcGVyZm9ybWFuY2Utd2lzZS4gU2hv
dWxkIHdlIHN0aWxsIGxpc3QgdGhlIHVzZXIncyBvZiB0aGF0DQogICBmdW5jdGlvbj8NCiAqIFRo
ZSBvdGhlciByZWxldmFudCB1c2VyIHBhdGgsIGRybV9zY2hlZF9qb2JfYXJtKCkgdmlhDQogICBk
cm1fc2NoZWRfZW50aXR5X3NlbGVjdF9ycSgpLCBtdXN0IGFscmVhZHkgYmUgY2FsbGVkIHVuZGVy
IGEgY29tbW9uDQogICBkcml2ZXIgbG9jayBmb3IgZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYigp
LCBhbmQgX3NlbGVjdF9ycSgpDQogICBhbHJlYWR5IHRha2VzIHRoZSBlbnRpdHkgbG9jay4gU28g
YW55IHNpZ25pZmljYW50IHJlZ3Jlc3Npb24gaGVyZSBpcw0KICAgaHlwZXIgdW5saWtlbHkuDQog
KiBUaGUgb25seSBvdGhlciBjb250ZW5kZXIgaXMgdGhlIGpvYiBwdWxsIHBhdGgsIHdoaWNoIHJ1
bnMgc2VyaWFsbHksDQogICBieSAxIHdvcmsgaXRlbSBhdCBvbmUgcG9pbnQgaW4gdGltZS4NCiAq
IGRybV9zY2hlZF9lbnRpdHlfa2lsbCgpIC8gX2ZpbmkoKSBhcmUgdXNlZCBpbiB1c2VyIGNvbnRl
eHQgdGVhcmRvd24NCiAgIHBhdGguIFBlcmZvcm1hbmNlIGlycmVsZXZhbnQuDQoNCkkgY2FuIG9m
ZmVyIHRvIGFkZCB0aGUgbGlzdCBhYm92ZSBmb3IgdGhlIGp1c3RpZmljYXRpb24gb2Ygd2h5IHJl
bW92aW5nDQp0aGUgaGFsZi11bmRlZmluZWQgYmVoYXZpb3IgaXMgZ29vZC4NCg0KT3Igd2hhdCBl
eGFjdGx5IHdvdWxkIHlvdSB3YW50IHRvIHNlZSBkb2N1bWVudGVkPyAiYW1kZ3B1IHVzZXMNCmRy
bV9zY2hlZF9qb2JfYXJtKCkgYW5kIG5vdyBzZWVzIGEgbG9jay1jcml0aWNhbCBzZWN0aW9uIGxv
bmdlciBieSAzDQppbnN0cnVjdGlvbnMuIGV0bmF2aXYgdXNlcyBkcm1fc2NoZWRfam9iX2FybSgp
IGFuZCBub3figKYiPw0KDQoNCg0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
