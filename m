Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKE0Kc8S4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E80411FAA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0409344589
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:13 +0000 (UTC)
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3800A3F9BB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 04:43:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.dev header.s=key1 header.b=kcP4+gNS;
	spf=pass (lists.linaro.org: domain of yanjun.zhu@linux.dev designates 91.218.175.172 as permitted sender) smtp.mailfrom=yanjun.zhu@linux.dev;
	dmarc=pass (policy=none) header.from=linux.dev
Message-ID: <7b4d9e08-122b-4c4b-868e-d48ec0f59dce@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1771476212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MzIYd8Bu6oYmjdq1gkTQwThMj3+Mr0OUwvt9JYbMgDg=;
	b=kcP4+gNSFzT9Ojfg+u/nAE86J7X1YCQaUm0MRgc4M1bbjaYv/sUhB2LoobSiDSzjlxTWYK
	cq1k7BbKRZCoRq80TBaGDCvJFTcp1jqbhrIUqKDk6pGLptfmyFaHzocLljJ1A5I4KeSLFf
	KYzXLrMumHfN0sB8IyBtf5Df95DLUeI=
Date: Wed, 18 Feb 2026 20:43:26 -0800
MIME-Version: 1.0
To: Shunsuke Mie <mie@igel.co.jp>, Zhu Yanjun <zyjzyj2000@gmail.com>
References: <20211122110817.33319-1-mie@igel.co.jp>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Zhu Yanjun <yanjun.zhu@linux.dev>
In-Reply-To: <20211122110817.33319-1-mie@igel.co.jp>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Bar: ---
X-MailFrom: yanjun.zhu@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EAICEB3SVO7MNU73A2WIQXGICV5AW5AI
X-Message-ID-Hash: EAICEB3SVO7MNU73A2WIQXGICV5AW5AI
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:32 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, Jianxin Xiong <jianxin.xiong@intel.com>, Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Sean Hefty <sean.hefty@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, dhobsong@igel.co.jp, taki@igel.co.jp, etom@igel.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v4 0/2] RDMA/rxe: Add dma-buf support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAICEB3SVO7MNU73A2WIQXGICV5AW5AI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[1356];
	R_DKIM_REJECT(1.00)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[igel.co.jp,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[yanjun.zhu@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:-];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E8E80411FAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

5ZyoIDIwMjEvMTEvMjIgMzowOCwgU2h1bnN1a2UgTWllIOWGmemBkzoNCj4gVGhpcyBwYXRjaCBz
ZXJpZXMgYWRkIGEgZG1hLWJ1ZiBzdXBwb3J0IGZvciByeGUgZHJpdmVyLg0KPiANCj4gQSBkbWEt
YnVmIGJhc2VkIG1lbW9yeSByZWdpc3RlcmluZyBoYXMgYmVlZCBpbnRyb2R1Y2VkIHRvIHVzZSB0
aGUgbWVtb3J5DQo+IHJlZ2lvbiB0aGF0IGxhY2sgb2YgYXNzb2NpYXRlZCBwYWdlIHN0cnVjdHVy
ZXMgKGUuZy4gZGV2aWNlIG1lbW9yeSBhbmQgQ01BDQo+IG1hbmFnZWQgbWVtb3J5KSBbMV0uIEhv
d2V2ZXIsIHRvIHVzZSB0aGUgZG1hLWJ1ZiBiYXNlZCBtZW1vcnksIGVhY2ggcmRtYQ0KPiBkZXZp
Y2UgZHJpdmVycyByZXF1aXJlIGFkZCBzb21lIGltcGxlbWVudGF0aW9uLiBUaGUgcnhlIGRyaXZl
ciBoYXMgbm90DQo+IHN1cHBvcnQgeWV0Lg0KPiANCj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3Mu
bmV0L2xpc3RzL2xpbnV4LXJkbWEvbXNnOTg1OTIuaHRtbA0KPiANCj4gVG8gZW5hYmxlIHRvIHVz
ZSB0aGUgZG1hLWJ1ZiBtZW1vcnkgaW4gcnhlIHJkbWEgZGV2aWNlLCBhZGQgc29tZSBjaGFuZ2Vz
DQo+IGFuZCBpbXBsZW1lbnRhdGlvbiBpbiB0aGlzIHBhdGNoIHNlcmllcy4NCj4gDQo+IFRoaXMg
c2VyaWVzIGNvbnNpc3RzIG9mIHR3byBwYXRjaGVzLiBUaGUgZmlyc3QgcGF0Y2ggY2hhbmdlcyB0
aGUgSUIgY29yZQ0KPiB0byBzdXBwb3J0IGZvciByZG1hIGRyaXZlcnMgdGhhdCBoYXMgbm90IGRt
YSBkZXZpY2UuIFRoZSBzZWNvdW5kIHBhdGNoIGFkZHMNCj4gdGhlIGRtYS1idWYgc3VwcG9ydCB0
byByeGUgZHJpdmVyLg0KPiANCkhpLCBTaHVuc3VrZSBNaWUNCg0KSSB3YXMgcmV2aXNpdGluZyB5
b3VyIDIwMjEgcHJvcG9zYWwgYXJvdW5kIGRtYS1idWYgaW50ZWdyYXRpb24gd2l0aCBSRE1BIA0K
YW5kIHRoZSByZWxhdGVkIGRpc2N1c3Npb25zIGF0IHRoZSB0aW1lLg0KDQpBcyB5b3Uga25vdywg
ZG1hLWJ1ZiB1c2FnZSBpbiBSRE1BLXJlbGF0ZWQgd29ya2Zsb3dzIGhhcyBnYWluZWQgbW9yZSAN
CnRyYWN0aW9uIHJlY2VudGx5LCBhbmQgd2UgYXJlIHNlZWluZyBpbmNyZWFzaW5nIGludGVyZXN0
IGluIA0KaGV0ZXJvZ2VuZW91cyBtZW1vcnkgYW5kIGNyb3NzLWRldmljZSBidWZmZXIgc2hhcmlu
Zy4gR2l2ZW4gdGhlIGNoYW5nZXMgDQppbiB0aGUgZWNvc3lzdGVtIHNpbmNlIHRoZW4sIEnigJlt
IHdvbmRlcmluZyB3aGV0aGVyIHlvdSB0aGluayB0aGUgDQpvcmlnaW5hbCBkaXJlY3Rpb24gbWln
aHQgYmUgd29ydGggcmVjb25zaWRlcmluZy4NCg0KRG8geW91IGhhdmUgYW55IGludGVyZXN0IGlu
IGNvbnRpbnVpbmcgdGhhdCBsaW5lIG9mIHdvcmssIG9yIHVwZGF0aW5nIA0KdGhlIGRlc2lnbiBi
YXNlZCBvbiB0b2RheeKAmXMgY29udGV4dD8gSWYgbm90LCBJ4oCZZCBzdGlsbCBhcHByZWNpYXRl
IHlvdXIgDQpwZXJzcGVjdGl2ZSBvbiB3aGF0IHlvdSBzZWUgYXMgdGhlIG1haW4gYmxvY2tlcnMg
ZnJvbSB0aGUgcHJldmlvdXMgDQpkaXNjdXNzaW9ucywgYW5kIHdoZXRoZXIgeW91IHRoaW5rIHRo
ZSBsYW5kc2NhcGUgaGFzIGNoYW5nZWQgZW5vdWdoIHRvIA0KanVzdGlmeSBhbm90aGVyIGF0dGVt
cHQuDQoNCkRlcGVuZGluZyBvbiB0aGUgZGlyZWN0aW9uLCB3ZSBtYXkgY29uc2lkZXIgZXhwbG9y
aW5nIGRtYS1idWYgc3VwcG9ydCBpbiANCnJ4ZSBvciBhdCB0aGUgY29yZSBsZXZlbCwgYnV0IEni
gJlkIHByZWZlciB0byBmaXJzdCB1bmRlcnN0YW5kIHlvdXIgdmlldyANCmJlZm9yZSBtb3Zpbmcg
Zm9yd2FyZC4NCg0KWmh1IFlhbmp1bg0KDQo+IFJlbGF0ZWQgdXNlciBzcGFjZSBSRE1BIGxpYnJh
cnkgY2hhbmdlcyBhcmUgcHJvdmlkZWQgYXMgYSBzZXBhcmF0ZSBwYXRjaC4NCj4gDQo+IHY0Og0K
PiAqIEZpeCB3YXJuaW5ncywgdW51c2VkIHZhcmlhYmxlIGFuZCBjYXN0aW5nDQo+IHYzOiBodHRw
czovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1yZG1hL21zZzEwNjc3Ni5odG1sDQo+ICog
UmViYXNlIHRvIHRoZSBsYXRlc3QgbGludXgtcmRtYSAnZm9yLW5leHQnIGJyYW5jaCAoNS4xNS4w
LXJjNispDQo+ICogRml4IHRvIHVzZSBkbWEtYnVmLW1hcCBoZWxwZXJzDQo+IHYyOiBodHRwczov
L3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1yZG1hL21zZzEwNTkyOC5odG1sDQo+ICogUmVi
YXNlIHRvIHRoZSBsYXRlc3QgbGludXgtcmRtYSAnZm9yLW5leHQnIGJyYW5jaCAoNS4xNS4wLXJj
MSspDQo+ICogSW5zdGVhZCBvZiB1c2luZyBhIGR1bW15IGRtYV9kZXZpY2UgdG8gYXR0YWNoIGRt
YS1idWYsIGp1c3Qgc3RvcmUNCj4gICAgZG1hLWJ1ZiB0byB1c2Ugc29mdHdhcmUgUkRNQSBkcml2
ZXINCj4gKiBVc2UgZG1hLWJ1ZiB2bWFwKCkgaW50ZXJmYWNlDQo+ICogQ2hlY2sgdG8gcGFzcyB0
ZXN0cyBvZiByZG1hLWNvcmUNCj4gdjE6IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xp
bnV4LXJkbWEvbXNnMTA1Mzc2Lmh0bWwNCj4gKiBUaGUgaW5pdGlhbCBwYXRjaCBzZXQNCj4gKiBV
c2UgaWJfZGV2aWNlIGFzIGRtYV9kZXZpY2UuDQo+ICogVXNlIGRtYS1idWYgZHluYW1pYyBhdHRh
Y2ggaW50ZXJmYWNlDQo+ICogQWRkIGRtYS1idWYgc3VwcG9ydCB0byByeGUgZGV2aWNlDQo+IA0K
PiBTaHVuc3VrZSBNaWUgKDIpOg0KPiAgICBSRE1BL3VtZW06IENoYW5nZSBmb3IgcmRtYSBkZXZp
Y2VzIGhhcyBub3QgZG1hIGRldmljZQ0KPiAgICBSRE1BL3J4ZTogQWRkIGRtYS1idWYgc3VwcG9y
dA0KPiANCj4gICBkcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jIHwgIDIwICsr
KystDQo+ICAgZHJpdmVycy9pbmZpbmliYW5kL3N3L3J4ZS9yeGVfbG9jLmggICB8ICAgMiArDQo+
ICAgZHJpdmVycy9pbmZpbmliYW5kL3N3L3J4ZS9yeGVfbXIuYyAgICB8IDExMyArKysrKysrKysr
KysrKysrKysrKysrKysrKw0KPiAgIGRyaXZlcnMvaW5maW5pYmFuZC9zdy9yeGUvcnhlX3ZlcmJz
LmMgfCAgMzQgKysrKysrKysNCj4gICBpbmNsdWRlL3JkbWEvaWJfdW1lbS5oICAgICAgICAgICAg
ICAgIHwgICAxICsNCj4gICA1IGZpbGVzIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
