Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eMEFHBpyVmrR5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7D2757711
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=N3NNMC9W;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1D1740165
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:30:00 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 31082409AC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2026 08:58:20 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8864A419DF;
	Mon, 13 Jul 2026 08:58:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 036DC1F00A3A;
	Mon, 13 Jul 2026 08:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783933099;
	bh=pAxpR9NFI9JqViz0jR02B8aYT21eVB9CVzgTB/HUmi0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=N3NNMC9WSVYvF0vTtvzbtTafU1C12Iav1SrwC0EHDSgNyIBN3QsjFcLHNCW0WuoOs
	 HOKJk3TUhYJCgmvf+A6m7dKz7tF0TFWRlgGOIhP1zBFhk991wcoUHyemBtQscZaSPF
	 grIi3qMtqMn45RAGuDAkEC6/nboWA9bdQvcIKdnVHm6KcvwBBMoWLYHGqXkY9oyJlr
	 oFjNtNpk0uY2HsjWXWv5zbfX3/Gg2DBPhVIFf0bTB7ubjntp0SFesmP8h8I0Gt/xSN
	 88OJJdFZ5SRjeF4qJaK+pQ618pedRSX36I/wbzJ4WVmBP5i5SKWsA4ipG29xZnTQB2
	 Lc4KSxIsFJSJQ==
Message-ID: <0d40243b-0929-46d2-be85-e3248d4bd09c@kernel.org>
Date: Mon, 13 Jul 2026 10:58:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, tursulin@ursulin.net, matthew.brost@intel.com,
 sumit.semwal@linaro.org
References: <20260120105655.7134-1-christian.koenig@amd.com>
 <20260120105655.7134-2-christian.koenig@amd.com>
Content-Language: en-US
From: Jiri Slaby <jirislaby@kernel.org>
Autocrypt: addr=jirislaby@kernel.org; keydata=
 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
In-Reply-To: <20260120105655.7134-2-christian.koenig@amd.com>
X-Spamd-Bar: ------
X-MailFrom: jirislaby@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: THVY75TXJUAXYRST4K4L25ECZHPOSETM
X-Message-ID-Hash: THVY75TXJUAXYRST4K4L25ECZHPOSETM
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:05 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dma-buf: add dma_fence_was_initialized function v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/THVY75TXJUAXYRST4K4L25ECZHPOSETM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[32];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ckoenig.leichtzumerken@gmail.com,m:phasta@mailbox.org,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ursulin.net,intel.com,linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jirislaby@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jirislaby@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA7D2757711

SGksDQoNCk9uIDIwLiAwMS4gMjYsIDExOjU0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBT
b21lIGRyaXZlciB1c2UgZmVuY2UtPm9wcyB0byB0ZXN0IGlmIGEgZmVuY2Ugd2FzIGluaXRpYWxp
emVkIG9yIG5vdC4NCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGlzIHV0aWxpemVzIGludGVybmFs
IGJlaGF2aW9yIG9mIHRoZSBkbWFfZmVuY2UNCj4gaW1wbGVtZW50YXRpb24uDQo+IA0KPiBTbyBi
ZXR0ZXIgYWJzdHJhY3QgdGhhdCBpbnRvIGEgZnVuY3Rpb24uDQo+IA0KPiB2MjogdXNlIGEgZmxh
ZyBpbnN0ZWFkIG9mIHRlc3RpbmcgZmVuY2UtPm9wcywgcmVuYW1lIHRoZSBmdW5jdGlvbiwgbW92
ZQ0KPiAgICAgIHRvIHRoZSBiZWdpbm5pbmcgb2YgdGhlIHBhdGNoIHNldC4NCi4uLg0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQo+IEBAIC0xNDYsNyArMTQ2LDcgQEAgcXhsX3JlbGVhc2Vf
ZnJlZShzdHJ1Y3QgcXhsX2RldmljZSAqcWRldiwNCj4gICAJaWRyX3JlbW92ZSgmcWRldi0+cmVs
ZWFzZV9pZHIsIHJlbGVhc2UtPmlkKTsNCj4gICAJc3Bpbl91bmxvY2soJnFkZXYtPnJlbGVhc2Vf
aWRyX2xvY2spOw0KPiAgIA0KPiAtCWlmIChyZWxlYXNlLT5iYXNlLm9wcykgew0KPiArCWlmIChk
bWFfZmVuY2Vfd2FzX2luaXRpYWxpemVkKCZyZWxlYXNlLT5iYXNlKSkgew0KPiAgIAkJV0FSTl9P
TihsaXN0X2VtcHR5KCZyZWxlYXNlLT5ib3MpKTsNCj4gICAJCXF4bF9yZWxlYXNlX2ZyZWVfbGlz
dChyZWxlYXNlKTsNCj4gICANCg0KVGhpcyBsaWtlbHkgYnJlYWtzIHF4bDoNCmh0dHBzOi8vYnVn
emlsbGEuc3VzZS5jb20vc2hvd19idWcuY2dpP2lkPTEyNzEwODENCg0KID4gcmVmY291bnRfdDog
dW5kZXJmbG93OyB1c2UtYWZ0ZXItZnJlZS4NCiA+IFdBUk5JTkc6IGxpYi9yZWZjb3VudC5jOjI4
IGF0IHJlZmNvdW50X3dhcm5fc2F0dXJhdGUrMHg1OS8weDkwLCANCkNQVSMwOiBrd29ya2VyLzA6
MC8xNTM0DQogPiBNb2R1bGVzIGxpbmtlZCBpbjogYWZfcGFja2V0IG5mdF9maWJfaW5ldCAuLi4N
CiA+IENQVTogMCBVSUQ6IDAgUElEOiAxNTM0IENvbW06IGt3b3JrZXIvMDowIE5vdCB0YWludGVk
IDcuMS4zLTEtZGVmYXVsdCANCiMxIFBSRUVNUFQoZnVsbCkgb3BlblNVU0UgVHVtYmxld2VlZCAN
CmIwNDFhNjUyN2Y2ZTU4NDI0ZjRjZDNkZTBmYWRlOGQ0MDhiMzc4ZmQNCiA+IEhhcmR3YXJlIG5h
bWU6IFFFTVUgU3RhbmRhcmQgUEMgKFEzNSArIElDSDksIDIwMDkpLCBCSU9TIA0KcmVsLTEuMTYu
My0yLWdjMTNmZjJjZC1wcmVidWlsdC5xZW11Lm9yZyAwNC8wMS8yMDE0DQogPiBXb3JrcXVldWU6
IGV2ZW50cyBxeGxfZ2Nfd29yayBbcXhsXQ0KID4gUklQOiAwMDEwOnJlZmNvdW50X3dhcm5fc2F0
dXJhdGUrMHg1OS8weDkwDQogPiBDb2RlOiA0NCA0OCA4ZCAzZCBhOSA3MiBiNyAwMSA2NyA0OCAw
ZiBiOSAzYSBjMyBjYyBjYyBjYyBjYyA0OCA4ZCAzZCANCmE4IDcyIGI3IDAxIDY3IDQ4IDBmIGI5
IDNhIGMzIGNjIGNjIGNjIGNjIDQ4IDhkIDNkIGE3IDcyIGI3IDAxIDw2Nz4gNDggDQowZiBiOSAz
YSBjMyBjYyBjYyBjYyBjYyA0OCA4ZCAzZCBhNiA3MiBiNyAwMSA2NyA0OCAwZiBiOSAzYQ0KID4g
UlNQOiAwMDE4OmZmZmZjZTA5MDE5ZWZlMDAgRUZMQUdTOiAwMDAxMDI0Ng0KID4gUkFYOiAwMDAw
MDAwMDAwMDAwMDAwIFJCWDogZmZmZjhiNWE1NmY4MTljMCBSQ1g6IDAwMDAwMDAwMDAwMDAwMTcN
CiA+IFJEWDogMDAwMDAwMDAwMDAxMTY5NiBSU0k6IDAwMDAwMDAwMDAwMDAwMDMgUkRJOiBmZmZm
ZmZmZmJjOTUzYjcwDQogPiBSQlA6IGZmZmY4YjVhNGEzMTQwMDAgUjA4OiAwMDAwMDAwMDAwMDAw
MDAxIFIwOTogZmZmZmZmZmZjMDdkNDg4YQ0KID4gUjEwOiBmZmZmZmE2ZmM0Nzg3ZDgwIFIxMTog
ZmZmZjhiNWE0MDA0NDAwMCBSMTI6IDAwMDAwMDAwMDAwMDAwMDQNCiA+IFIxMzogMDAwMDAwMDAw
MDAwMDAwMyBSMTQ6IGZmZmZjZTA5MDAzZjE0MzQgUjE1OiBmZmZmOGI1YTQxMGM0NjQwDQogPiBG
UzogIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjhiNWFmZTk1NDAwMCgwMDAwKSANCmtu
bEdTOjAwMDAwMDAwMDAwMDAwMDANCiA+IENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6
IDAwMDAwMDAwODAwNTAwMzMNCiA+IENSMjogMDAwMDdmZjQ2M2Q2NTAwMCBDUjM6IDAwMDAwMDAx
MmI0NzYwMDQgQ1I0OiAwMDAwMDAwMDAwNzcyZWYwDQogPiBQS1JVOiA1NTU1NTU1NA0KID4gQ2Fs
bCBUcmFjZToNCiA+ICA8VEFTSz4NCiA+ICBxeGxfcmVsZWFzZV9mcmVlKzB4ZWUvMHhmMCBbcXhs
IA0KZDkzZTkzODEzNTNlNjE5Nzk5ZDU2NzkwZjVmOGRkYTZjY2U0OTFmNl0NCiA+ICBxeGxfZ2Fy
YmFnZV9jb2xsZWN0KzB4ZDEvMHgxYjAgW3F4bCANCmQ5M2U5MzgxMzUzZTYxOTc5OWQ1Njc5MGY1
ZjhkZGE2Y2NlNDkxZjZdDQogPiAgcHJvY2Vzc19vbmVfd29yaysweDE5ZS8weDNhMA0KID4gLi4u
DQoNClRoZSBmdW5jdGlvbiBkb2VzIG5vdzoNCg0KID4gdm9pZA0KID4gcXhsX3JlbGVhc2VfZnJl
ZShzdHJ1Y3QgcXhsX2RldmljZSAqcWRldiwNCiA+ICAgICAgICAgICAgICAgICAgc3RydWN0IHF4
bF9yZWxlYXNlICpyZWxlYXNlKQ0KID4gew0KID4gLi4uDQogPiAgICAgICAgIGlmIChkbWFfZmVu
Y2Vfd2FzX2luaXRpYWxpemVkKCZyZWxlYXNlLT5iYXNlKSkgew0KID4gICAgICAgICAgICAgICAg
IFdBUk5fT04obGlzdF9lbXB0eSgmcmVsZWFzZS0+Ym9zKSk7IA0KDQogPiAgICAgICAgICAgICAg
ICAgcXhsX3JlbGVhc2VfZnJlZV9saXN0KHJlbGVhc2UpOyANCg0KID4gDQoNCiA+ICAgICAgICAg
ICAgICAgICBkbWFfZmVuY2Vfc2lnbmFsKCZyZWxlYXNlLT5iYXNlKTsgDQoNCiA+ICAgICAgICAg
ICAgICAgICBkbWFfZmVuY2VfcHV0KCZyZWxlYXNlLT5iYXNlKTsgDQoNCiAgDQoNCnJlZmNvdW50
X2RlY19hbmRfdGVzdCgpIGluIGtyZWZfcHV0KCkgaW4gdGhpcyBeXiBjcmFzaGVzLiBBcHBhcmVu
dGx5LCANCnRoZSByZWZlcmVuY2UgY291bnQgd2FzIG5vdCBpbmNyZWFzZWQgYW55d2hlcmUuIFFY
TCBkb2VzIG5vdCBjYWxsIA0KZG1hX2ZlbmNlX2dldCgpIC0tIHdobyBpcyBzdXBwb3NlZCB0byBp
bmNyZWFzZSB0aGUgcmVmY291bnQuIEFuZCB3aHkgaXQgDQpkaWQgbm90IGZhaWwgYmVmb3JlPw0K
ICANCg0KID4gICAgICAgICB9IGVsc2UgeyANCg0KID4gICAgICAgICAgICAgICAgIHF4bF9yZWxl
YXNlX2ZyZWVfbGlzdChyZWxlYXNlKTsgDQoNCiA+ICAgICAgICAgICAgICAgICBrZnJlZShyZWxl
YXNlKTsgDQoNCiA+ICAgICAgICAgfSANCg0KID4gICAgICAgICBhdG9taWNfZGVjKCZxZGV2LT5y
ZWxlYXNlX2NvdW50KTsgDQoNCiA+IH0NCg0KdGhhbmtzLA0KLS0gDQpqcw0Kc3VzZSBsYWJzDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
