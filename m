Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJxbJiRk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C20943195D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44D4040690
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:36:35 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 803DA402AE
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Apr 2026 09:20:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dZOfZycT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CF46644177;
	Fri,  3 Apr 2026 09:20:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24AB8C4CEF7;
	Fri,  3 Apr 2026 09:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775208033;
	bh=6yQ3vTenqXPoi+0PWTGukMJaYEPSz03tyljhBa6IByM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dZOfZycTXUM3i6iopk6sUfFHNU0/Xqwy/r8HbSQ7CGZvidHZ1Z3vrFRo3K4SCpK22
	 /we6sw2gldNdAVF1lwjBWvDa/GZf/pmNvP3tcFcJMJyu4PI2NmNxfKygepsu5Nlmyd
	 r29qFVbXkGyAWEA6ZQ+r9fqoscaZpyJhPPCBlbpdSKJyk6r/b9EkC7sfyiqKzbGSNp
	 3dMqIBR3UB5nRPZt2U4fQ9PRrKKaUmpHTmfdJ38ZmKRO9U+i3l4nsJXmLqU6M7+UGY
	 CC7h3IPn5r9Dyfjvo7CUEJ1Vg8+EW13P18cgEcIxwbjf+jI/Ihh93Zr9NHd3mOyaXO
	 kWrJy7LRxAjyQ==
From: Barry Song <baohua@kernel.org>
To: urezki@gmail.com
Date: Fri,  3 Apr 2026 17:20:28 +0800
Message-Id: <20260403092028.61257-1-baohua@kernel.org>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <aVvmxGUp2l0Tavwb@milan>
References: <aVvmxGUp2l0Tavwb@milan>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5YQ6XEPTDMK3RXPRUN2L6UGJ2BZCTEU5
X-Message-ID-Hash: 5YQ6XEPTDMK3RXPRUN2L6UGJ2BZCTEU5
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:50 +0000
CC: 21cnbao@gmail.com, akpm@linux-foundation.org, david@kernel.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, mripard@kernel.org, sumit.semwal@linaro.org, xueyuan.chen21@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5YQ6XEPTDMK3RXPRUN2L6UGJ2BZCTEU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[416];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kernel.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,kvack.org,linaro.org];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.941];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 3C20943195D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IEkgdGhpbmsgc28sIGF0IGxlYXN0IHRoZSBwbGFjZToNCj4gDQo+IDxzbmlwPg0KPiBbICAg
IDIuOTU5MDMwXSBPb3BzOiBPb3BzOiAwMDAwIFsjNjZdIFNNUCBOT1BUSQ0KPiBbICAgIDIuOTYw
MDA0XSBDUFU6IDAgVUlEOiAwIFBJRDogMCBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNi4x
OC4wKyAjMjIwIFBSRUVNUFQobm9uZSkNCj4gWyAgICAyLjk2MTc4MV0gSGFyZHdhcmUgbmFtZTog
UUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgMS4xNi4zLWRlYmlh
bi0xLjE2LjMtMiAwNC8wMS8yMDE0DQo+IFsgICAgMi45NjM4NzBdIEJVRzogdW5hYmxlIHRvIGhh
bmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiBmZmZmZmZmZjNmZDY4MTE4DQo+IFsgICAgMi45
NjUzODNdICNQRjogc3VwZXJ2aXNvciByZWFkIGFjY2VzcyBpbiBrZXJuZWwgbW9kZQ0KPiBbICAg
IDIuOTY2NTMyXSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5vdC1wcmVzZW50IHBhZ2UNCj4g
WyAgICAyLjk2NzY4Ml0gQkFEDQo+IDxzbmlwPg0KPiANCj4gYnV0IGl0IGlzIGJyb2tlbiBmb3Ig
c3VyZToNCg0KPiBpICs9IDFVIDw8IHNoaWZ0IC0gImkiIGlzIGFuIGluZGV4IGluIHRoZSBwYWdl
IGFycmF5Lg0KPiBGb3IgZXhhbXBsZSBpZiBvcmRlci0wIHlvdSBqdW1wIDQwOTYgaW5kaWNlcyBh
aGVhZC4NCg0KPiBTaG91bGQgYmU6IGkgKz0gMVUgPDwgKHNoaWZ0IC0gUEFHRV9TSElGVCkNCg0K
WW914oCZcmUgcmlnaHQhIEFuZCBzb3JyeSBmb3IgdGhlIHNsb3cgcmVzcG9uc2XigJRpdOKAmXMg
YmVlbg0KdGhyZWUgbW9udGhzIHNpbmNlIHRoZSBsYXN0IGRpc2N1c3Npb24uDQoNCj4gdm1hcF9w
YWdlX3JhbmdlKCkgZG9lcyBmbHVzaGluZyBhbmQgaXQgaGFzIGluc3RydW1lbnRlZCBLTVNBTiBp
bnNpZGUuDQo+IFdlIHNob3VsZCBmb2xsb3cgc2FtZSBzZW1hbnRpYy4gQWxzbyBpdCB1c2VzIGlv
cmVtYXBfbWF4X3BhZ2Vfc2hpZnQgYXMNCj4gbWF4aW11bSBwYWdlIHNoaWZ0IHBvbGljeS4NCg0K
Tm90IHF1aXRlIHN1cmUgaWYgdm1hcCgpIHNob3VsZCBmb2xsb3cgaW9yZW1hcCgp4oCZcw0KaW9y
ZW1hcF9tYXhfcGFnZV9zaGlmdC4gSWYgbmVlZGVkLCBpdCBzaG91bGRu4oCZdCBiZQ0KZGlmZmlj
dWx0IHRvIGRvIHNvLg0KDQpJIGhhdmUgYSB2ZXJzaW9uIHF1ZXVlZCBmb3IgdGVzdGluZyAoWHVl
eXVhbiBpcyB3b3JraW5nDQpoYXJkIG9uIGl0KS4gTWVhbndoaWxlLCBpZiB5b3UgaGF2ZSBhbnkg
Y29tbWVudHMsIHBsZWFzZQ0KZmVlbCBmcmVlIHRvIHNoYXJlLg0KDQpkaWZmIC0tZ2l0IGEvbW0v
dm1hbGxvYy5jIGIvbW0vdm1hbGxvYy5jDQppbmRleCA1N2VhZTk5ZDk5MDkuLjhkNDQ5ZTc4YTA3
YSAxMDA2NDQNCi0tLSBhL21tL3ZtYWxsb2MuYw0KKysrIGIvbW0vdm1hbGxvYy5jDQpAQCAtMzUx
Myw2ICszNTEzLDYwIEBAIHZvaWQgdnVubWFwKGNvbnN0IHZvaWQgKmFkZHIpDQogfQ0KIEVYUE9S
VF9TWU1CT0wodnVubWFwKTsNCiANCisjaWZkZWYgQ09ORklHX0hBVkVfQVJDSF9IVUdFX1ZNQVAN
CitzdGF0aWMgaW5saW5lIGludCBnZXRfdm1hcF9iYXRjaF9vcmRlcihzdHJ1Y3QgcGFnZSAqKnBh
Z2VzLA0KKwkJdW5zaWduZWQgaW50IG1heF9zdGVwcywgdW5zaWduZWQgaW50IGlkeCkNCit7DQor
CXVuc2lnbmVkIGludCBucl9wYWdlczsNCisNCisJaWYgKGlvcmVtYXBfbWF4X3BhZ2Vfc2hpZnQg
PT0gUEFHRV9TSElGVCkNCisJCXJldHVybiAwOw0KKw0KKwlucl9wYWdlcyA9IGNvbXBvdW5kX25y
KHBhZ2VzW2lkeF0pOw0KKwlpZiAobnJfcGFnZXMgPT0gMSB8fCBtYXhfc3RlcHMgPCBucl9wYWdl
cykNCisJCXJldHVybiAwOw0KKw0KKwlpZiAobnVtX3BhZ2VzX2NvbnRpZ3VvdXMoJnBhZ2VzW2lk
eF0sIG5yX3BhZ2VzKSA9PSBucl9wYWdlcykNCisJCXJldHVybiBjb21wb3VuZF9vcmRlcihwYWdl
c1tpZHhdKTsNCisJcmV0dXJuIDA7DQorfQ0KKyNlbHNlDQorc3RhdGljIGlubGluZSBpbnQgZ2V0
X3ZtYXBfYmF0Y2hfb3JkZXIoc3RydWN0IHBhZ2UgKipwYWdlcywNCisJCXVuc2lnbmVkIGludCBt
YXhfc3RlcHMsIHVuc2lnbmVkIGludCBpZHgpDQorew0KKwlyZXR1cm4gMDsNCit9DQorI2VuZGlm
DQorDQorc3RhdGljIGludCB2bWFwX2NvbnRpZ19wYWdlc19yYW5nZSh1bnNpZ25lZCBsb25nIGFk
ZHIsIHVuc2lnbmVkIGxvbmcgZW5kLA0KKwkJcGdwcm90X3QgcHJvdCwgc3RydWN0IHBhZ2UgKipw
YWdlcykNCit7DQorCXVuc2lnbmVkIGludCBjb3VudCA9IChlbmQgLSBhZGRyKSA+PiBQQUdFX1NI
SUZUOw0KKwlpbnQgZXJyOw0KKw0KKwllcnIgPSBrbXNhbl92bWFwX3BhZ2VzX3JhbmdlX25vZmx1
c2goYWRkciwgZW5kLCBwcm90LCBwYWdlcywNCisJCQkJCQlQQUdFX1NISUZULCBHRlBfS0VSTkVM
KTsNCisJaWYgKGVycikNCisJCWdvdG8gb3V0Ow0KKw0KKwlmb3IgKHVuc2lnbmVkIGludCBpID0g
MDsgaSA8IGNvdW50OyApIHsNCisJCXVuc2lnbmVkIGludCBzaGlmdCA9IFBBR0VfU0hJRlQ7DQor
DQorCQlzaGlmdCArPSBnZXRfdm1hcF9iYXRjaF9vcmRlcihwYWdlcywgY291bnQgLSBpLCBpKTsN
CisJCWVyciA9IHZtYXBfcmFuZ2Vfbm9mbHVzaChhZGRyLCBhZGRyICsgKDFVTCA8PCBzaGlmdCks
DQorCQkJCXBhZ2VfdG9fcGh5cyhwYWdlc1tpXSksIHByb3QsIHNoaWZ0KTsNCisJCWlmIChlcnIp
DQorCQkJZ290byBvdXQ7DQorDQorCQlhZGRyICs9IDFVTCAgPDwgc2hpZnQ7DQorCQlpICs9IDFV
IDw8IChzaGlmdCAtIFBBR0VfU0hJRlQpOw0KKwl9DQorDQorb3V0Og0KKwlmbHVzaF9jYWNoZV92
bWFwKGFkZHIsIGVuZCk7DQorCXJldHVybiBlcnI7DQorfQ0KKw0KIC8qKg0KICAqIHZtYXAgLSBt
YXAgYW4gYXJyYXkgb2YgcGFnZXMgaW50byB2aXJ0dWFsbHkgY29udGlndW91cyBzcGFjZQ0KICAq
IEBwYWdlczogYXJyYXkgb2YgcGFnZSBwb2ludGVycw0KQEAgLTM1NTYsOCArMzYxMCw4IEBAIHZv
aWQgKnZtYXAoc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IGNvdW50LA0KIAkJcmV0
dXJuIE5VTEw7DQogDQogCWFkZHIgPSAodW5zaWduZWQgbG9uZylhcmVhLT5hZGRyOw0KLQlpZiAo
dm1hcF9wYWdlc19yYW5nZShhZGRyLCBhZGRyICsgc2l6ZSwgcGdwcm90X254KHByb3QpLA0KLQkJ
CQlwYWdlcywgUEFHRV9TSElGVCkgPCAwKSB7DQorCWlmICh2bWFwX2NvbnRpZ19wYWdlc19yYW5n
ZShhZGRyLCBhZGRyICsgc2l6ZSwgcGdwcm90X254KHByb3QpLA0KKwkJCQlwYWdlcykgPCAwKSB7
DQogCQl2dW5tYXAoYXJlYS0+YWRkcik7DQogCQlyZXR1cm4gTlVMTDsNCiAJfQ0KLS0gDQoyLjM5
LjMgKEFwcGxlIEdpdC0xNDYpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
