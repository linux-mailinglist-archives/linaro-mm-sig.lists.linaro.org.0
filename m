Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JBuF84J4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:09:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C682411611
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:09:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16E1D404EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:09:49 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id D77823FDAE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 13:02:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DbQ31GKB;
	spf=pass (lists.linaro.org: domain of david@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=david@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 805E060128;
	Thu, 18 Dec 2025 13:02:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF0FC4CEFB;
	Thu, 18 Dec 2025 13:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766062922;
	bh=5DO6RDJonvikBIJmz3ENuqZ6dln+OBwoslWDMriPCxQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DbQ31GKBFd/oztUBucHbc47Na0LxGXTFx7Pw4Xxwv9sS8M3jt2HPGOLVZmnDoFXAg
	 1lPYxdNXc+mmQETjuJltJAr1vJF0j6466kUMAy5JlN/ZRkJuuZTJxDosJqMv5o4x/C
	 eAJP5rOyEf3PcneZlw0xvV4NbTNPYx7udhFIC8ULB7ljmJrtcZRllxeWEmmiPI0d2y
	 +UagdKor2Ki0nJNKW8wuhmcBpqor2QAHEsRtwemp4FqRFPvBvqLNpC9wbtCxqDW7jr
	 9eSKdG7Xx2CrWyI0COT932fUrYy+93xJaTzkw9EndpEjK9NhLzeOqQulfJ3HHxAsYT
	 Y8VRgutX7DOfw==
Message-ID: <e7c8478b-1ce4-4a15-a185-de9d9121438c@kernel.org>
Date: Thu, 18 Dec 2025 14:01:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Barry Song <21cnbao@gmail.com>, akpm@linux-foundation.org,
 linux-mm@kvack.org
References: <20251215053050.11599-1-21cnbao@gmail.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <20251215053050.11599-1-21cnbao@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: david@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ONFELBLH2PUM6HG5L2CFSCB6U3T5SWKC
X-Message-ID-Hash: ONFELBLH2PUM6HG5L2CFSCB6U3T5SWKC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:52 +0000
CC: dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <mripard@kernel.org>, Tangquan Zheng <zhengtangquan@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ONFELBLH2PUM6HG5L2CFSCB6U3T5SWKC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[2859];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux-foundation.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,oppo.com,gmail.com,linaro.org,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	FROM_NEQ_ENVFROM(0.00)[david@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,oppo.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 0C682411611
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTIvMTUvMjUgMDY6MzAsIEJhcnJ5IFNvbmcgd3JvdGU6DQo+IEZyb206IEJhcnJ5IFNvbmcg
PHYtc29uZ2Jhb2h1YUBvcHBvLmNvbT4NCj4gDQo+IEluIG1hbnkgY2FzZXMsIHRoZSBwYWdlcyBw
YXNzZWQgdG8gdm1hcCgpIG1heSBpbmNsdWRlIGhpZ2gtb3JkZXINCj4gcGFnZXMgYWxsb2NhdGVk
IHdpdGggX19HRlBfQ09NUCBmbGFncy4gRm9yIGV4YW1wbGUsIHRoZSBzeXN0ZW1oZWFwDQo+IG9m
dGVuIGFsbG9jYXRlcyBwYWdlcyBpbiBkZXNjZW5kaW5nIG9yZGVyOiBvcmRlciA4LCB0aGVuIDQs
IHRoZW4gMC4NCj4gQ3VycmVudGx5LCB2bWFwKCkgaXRlcmF0ZXMgb3ZlciBldmVyeSBwYWdlIGlu
ZGl2aWR1YWxseeKAlGV2ZW4gcGFnZXMNCj4gaW5zaWRlIGEgaGlnaC1vcmRlciBibG9jayBhcmUg
aGFuZGxlZCBvbmUgYnkgb25lLg0KPiANCj4gVGhpcyBwYXRjaCBkZXRlY3RzIGhpZ2gtb3JkZXIg
cGFnZXMgYW5kIG1hcHMgdGhlbSBhcyBhIHNpbmdsZQ0KPiBjb250aWd1b3VzIGJsb2NrIHdoZW5l
dmVyIHBvc3NpYmxlLg0KPiANCj4gQW4gYWx0ZXJuYXRpdmUgd291bGQgYmUgdG8gaW1wbGVtZW50
IGEgbmV3IEFQSSwgdm1hcF9zZygpLCBidXQgdGhhdA0KPiBjaGFuZ2Ugc2VlbXMgdG8gYmUgbGFy
Z2UgaW4gc2NvcGUuDQo+IA0KPiBXaGVuIHZtYXBwaW5nIGEgMTI4TUIgZG1hLWJ1ZiB1c2luZyB0
aGUgc3lzdGVtaGVhcCwgdGhpcyBwYXRjaA0KPiBtYWtlcyBzeXN0ZW1faGVhcF9kb192bWFwKCkg
cm91Z2hseSAxN8OXIGZhc3Rlci4NCj4gDQo+IFcvIHBhdGNoOg0KPiBbICAgMTAuNDA0NzY5XSBz
eXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ5NDAwMCBucw0KPiBbICAgMTIuNTI1OTIxXSBzeXN0
ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ2NzAwOCBucw0KPiBbICAgMTQuNTE3MzQ4XSBzeXN0ZW1f
aGVhcF9kb192bWFwIHRvb2sgMjQ3MTAwOCBucw0KPiBbICAgMTYuNTkzNDA2XSBzeXN0ZW1faGVh
cF9kb192bWFwIHRvb2sgMjQ0NDAwMCBucw0KPiBbICAgMTkuNTAxMzQxXSBzeXN0ZW1faGVhcF9k
b192bWFwIHRvb2sgMjQ4OTAwOCBucw0KPiANCj4gVy9vIHBhdGNoOg0KPiBbICAgIDcuNDEzNzU2
XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI2MjYwMDAgbnMNCj4gWyAgICA5LjQyNTYxMF0g
c3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyNTAwOTkyIG5zDQo+IFsgICAxMS44MTA4OThdIHN5
c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MjIxNTAwOCBucw0KPiBbICAgMTQuMzM2NzkwXSBzeXN0
ZW1faGVhcF9kb192bWFwIHRvb2sgNDIxMzQ5OTIgbnMNCj4gWyAgIDE2LjM3Mzg5MF0gc3lzdGVt
X2hlYXBfZG9fdm1hcCB0b29rIDQyNzUwMDAwIG5zDQo+IA0KDQpUaGF0J3MgcXVpdGUgYSBzcGVl
ZHVwLg0KDQo+IENjOiBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAa2VybmVsLm9yZz4NCj4gQ2M6
IFVsYWR6aXNsYXUgUmV6a2kgPHVyZXpraUBnbWFpbC5jb20+DQo+IENjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29v
Z2xlLmNvbT4NCj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4gVGVz
dGVkLWJ5OiBUYW5ncXVhbiBaaGVuZyA8emhlbmd0YW5ncXVhbkBvcHBvLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KPiAtLS0NCj4gICAq
IGRpZmYgd2l0aCByZmM6DQo+ICAgTWFueSBjb2RlIHJlZmluZW1lbnRzIGJhc2VkIG9uIERhdmlk
J3Mgc3VnZ2VzdGlvbnMsIHRoYW5rcyENCj4gICBSZWZpbmUgY29tbWVudCBhbmQgY2hhbmdlbG9n
IGFjY29yZGluZyB0byBVbGFkemlzbGF1LCB0aGFua3MhDQo+ICAgcmZjIGxpbms6DQo+ICAgaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMjAyNTExMjIwOTAzNDMuODEyNDMtMS0yMWNu
YmFvQGdtYWlsLmNvbS8NCj4gDQo+ICAgbW0vdm1hbGxvYy5jIHwgNDUgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM5IGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbW0vdm1hbGxv
Yy5jIGIvbW0vdm1hbGxvYy5jDQo+IGluZGV4IDQxZGQwMWU4NDMwYy4uOGQ1Nzc3NjdhOWU1IDEw
MDY0NA0KPiAtLS0gYS9tbS92bWFsbG9jLmMNCj4gKysrIGIvbW0vdm1hbGxvYy5jDQo+IEBAIC02
NDIsNiArNjQyLDI5IEBAIHN0YXRpYyBpbnQgdm1hcF9zbWFsbF9wYWdlc19yYW5nZV9ub2ZsdXNo
KHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsDQo+ICAgCXJldHVybiBlcnI7
DQo+ICAgfQ0KPiAgIA0KPiArc3RhdGljIGlubGluZSBpbnQgZ2V0X3ZtYXBfYmF0Y2hfb3JkZXIo
c3RydWN0IHBhZ2UgKipwYWdlcywNCj4gKwkJdW5zaWduZWQgaW50IHN0cmlkZSwgdW5zaWduZWQg
aW50IG1heF9zdGVwcywgdW5zaWduZWQgaW50IGlkeCkNCj4gK3sNCj4gKwlpbnQgbnJfcGFnZXMg
PSAxOw0KDQp1bnNpZ25lZCBpbnQsIG1heWJlDQoNCldoeSBhcmUgeW91IGluaXRpYWxpemluZyBu
cl9wYWdlcyB3aGVuIHlvdSBvdmVyd3JpdGUgaXQgYmVsb3c/DQoNCj4gKw0KPiArCS8qDQo+ICsJ
ICogQ3VycmVudGx5LCBiYXRjaGluZyBpcyBvbmx5IHN1cHBvcnRlZCBpbiB2bWFwX3BhZ2VzX3Jh
bmdlDQo+ICsJICogd2hlbiBwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQuDQoNCkkgZG9uJ3Qga25v
dyB0aGUgY29kZSBzbyByZWFsaXppbmcgaG93IHdlIGdvIGZyb20gcGFnZV9zaGlmdCB0byBzdHJp
ZGUgDQp0b28gbWUgYSBzZWNvbmQuIE1heWJlIG9ubHkgdGFsayBhYm91dCBzdHJpZGUgaGVyZT8N
Cg0KT1RPSCwgaXMgInN0cmlkZSIgcmVhbGx5IHRoZSByaWdodCB0ZXJtaW5vbG9neT8NCg0Kd2Ug
Y2FsY3VsYXRlIGl0IGFzDQoNCglzdHJpZGUgPSAxVSA8PCAocGFnZV9zaGlmdCAtIFBBR0VfU0hJ
RlQpOw0KDQpwYWdlX3NoaWZ0IC0gUEFHRV9TSElGVCBzaG91bGQgZ2l2ZSB1cyBhbiAib3JkZXIi
LiBTbyBpcyB0aGlzIGEgDQoiZ3JhbnVsYXJpdHkiIGluIG5yX3BhZ2VzPw0KDQpBZ2FpbiwgSSBk
b24ndCBrbm93IHRoaXMgY29kZSwgc28gc29ycnkgZm9yIHRoZSBxdWVzdGlvbi4NCg0KPiArCSAq
Lw0KPiArCWlmIChzdHJpZGUgIT0gMSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlucl9wYWdl
cyA9IGNvbXBvdW5kX25yKHBhZ2VzW2lkeF0pOw0KPiArCWlmIChucl9wYWdlcyA9PSAxKQ0KPiAr
CQlyZXR1cm4gMDsNCj4gKwlpZiAobWF4X3N0ZXBzIDwgbnJfcGFnZXMpDQo+ICsJCXJldHVybiAw
Ow0KDQpNaWdodCBjb21iaW5lIHRoZXNlIHNpbXBsZSBjaGVja3MNCg0KaWYgKG5yX3BhZ2VzID09
IDEgfHwgbWF4X3N0ZXBzIDwgbnJfcGFnZXMpDQoJcmV0dXJuIDA7DQoNCg0KLS0gDQpDaGVlcnMN
Cg0KRGF2aWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
