Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPccMYwM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4B9411A03
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79753406B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:31 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 8F66D3F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 09:03:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=fEDubVkJ;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.54 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee07570deso44613645e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 01:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1768986205; x=1769591005; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tb8Mn8B23oXD3x5lo61XV5oiWaFxeJkWqEBxP3u53ow=;
        b=fEDubVkJIqtG0n5uMtTBLxaAO+ULJ1F+HQVlGsmcud9RfYxet28YaohvmEFYAM3yDC
         nu31IP2EimPQJ8hwON/2K8vpMr3Bwy9DOI9SJiZ2SuJ6LDzOjf0UHmUB5qJlNQVkXXyK
         hruOlo/5w5NTSecFk8NzOwC/uDfpMj7jyt6fUbMbA8akY6tj7oY/63+gAd7sk7wwtNMz
         3IScd0oFLGhE4/CcPw4ASVqzv2TxbdhOkY5izfN3lzHaS379h0BCdWMjI+pZIylcQdIF
         RCbWfz41e+rESyR5QU5ShfKoo3ny29m3OHLKBD9UOxeKD+tVRbbSpCeNcf2EW4WjtcRD
         38NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768986205; x=1769591005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tb8Mn8B23oXD3x5lo61XV5oiWaFxeJkWqEBxP3u53ow=;
        b=ixDoBL/WHv5yJPpSwwgXYwaS8u428Sm35REcpPO0ihakelfK0WaR+4+qKMUZYoRoga
         VV2k5FR4mvtjtQwF6h3FRXAlujDiLqYELzohvESQyKpbl9y17/30fLdj7uBq0DyuwpgR
         nVewe8FuHwd5sbcI3JxaZYSGCdHtustbcOyb6tncQtgtPJDnHviR0r2w2wgXnJY9fKEe
         bgIxOOY6ThcAEcsnVZmS2olst0XZ5gyOq7BZPXAieALv3XghoIDIB2J1voPEJd3/87vC
         gCzmbMJHljU194DbRmdPSxj+x+oqmBK4A/yPGzgOliVfTGTj7hHa0SfHMlknVn/brwMr
         Gp9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUK1BL5SIUF5UowXXNYCfCBOIYSCRn9+/Ejsnxtfo3j6nokcYWhW6ZybXlycdwWnl3kVl5wAfE4QU9vLmT9@lists.linaro.org
X-Gm-Message-State: AOJu0YzcargyEs+uYj5OJImusAkk2sFwny7FPJRaeIrYSWMnodtjT9Z/
	7m6DFgAyF/5YNnqi8RocRc3KmoMKh19t0XjrAVXMrrl5b9sXD6wKG4Aeuz1TFYYyiUY=
X-Gm-Gg: AZuq6aIDUHWwQtoTJ1HH0Qcn/hrf+70Iv5uoCEuCR/f7E+9qXx+aZozuUZoaIWGZUSc
	bmm5qGhyMlyIkYtf20oyAFEGrjrCxRFE+g22CgKN7VNnuvYa3TjCaow8WdXqFoyBLE7XT1uf1n+
	Hhoq0s0hzlcMTujXZACCxsz3VRsngah5ZqgDrjtfcVaJ1S/As846rVwFbUtY0Ds/WA1/R5956SF
	tpbfYDFYGbdzidVXCCu22bIX6SsY3jn7g8ahuzXmy/5vKeZg29+pGZ+LCOLA8P85fwCvnXhilSc
	Wqc/4Zvcth72dB9JaZDJAqIYNM7hKPINPNwZBcEtoWsqyiUxdWTnfX9x4Dc19z5jx1Yy/36pdFX
	sa0619ZhZt9EMYfA/X42ihFftCuJo21BiPI6Yc2Sjs3mAW9FSSvQcpPscWtAeGVlJmf+T6Bu/KS
	Vi8tYNiGfmak40ecBhdyAHghfve3UTwI9a
X-Received: by 2002:a05:600c:1552:b0:477:63a4:88fe with SMTP id 5b1f17b1804b1-4801eab9de6mr188120905e9.2.1768986205218;
        Wed, 21 Jan 2026 01:03:25 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48042c3dbd8sm15321305e9.10.2026.01.21.01.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 01:03:24 -0800 (PST)
Message-ID: <a478f6b8-e0d9-4dcb-8372-4673a7f75571@ursulin.net>
Date: Wed, 21 Jan 2026 09:03:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260120105655.7134-1-christian.koenig@amd.com>
 <20260120105655.7134-6-christian.koenig@amd.com>
 <5de308d9-9ed9-4ae7-8b0e-1ec53282c5e9@ursulin.net>
 <4e5c0b99-bbc1-4785-bee8-52b82d696d59@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <4e5c0b99-bbc1-4785-bee8-52b82d696d59@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H4TXDYPWW4KLPTQ7F5ATYFIH5CXL3NDY
X-Message-ID-Hash: H4TXDYPWW4KLPTQ7F5ATYFIH5CXL3NDY
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:15 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H4TXDYPWW4KLPTQ7F5ATYFIH5CXL3NDY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2047];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.740];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ursulin.net:mid,amd.com:email]
X-Rspamd-Queue-Id: 6F4B9411A03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAyMS8wMS8yMDI2IDA4OjQ4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxLzIw
LzI2IDEyOjQxLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+DQo+PiBPbiAyMC8wMS8yMDI2IDEw
OjU0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEltcGxlbWVudCBwZXItZmVuY2Ugc3Bp
bmxvY2tzLCBhbGxvd2luZyBpbXBsZW1lbnRhdGlvbnMgdG8gbm90IGdpdmUgYW4NCj4+PiBleHRl
cm5hbCBzcGlubG9jayB0byBwcm90ZWN0IHRoZSBmZW5jZSBpbnRlcm5hbCBzdGF0ZWkuIEluc3Rl
YWQgYSBzcGlubG9jaw0KPj4+IGVtYmVkZGVkIGludG8gdGhlIGZlbmNlIHN0cnVjdHVyZSBpdHNl
bGYgaXMgdXNlZCBpbiB0aGlzIGNhc2UuDQo+Pj4NCj4+PiBTaGFyZWQgc3BpbmxvY2tzIGhhdmUg
dGhlIHByb2JsZW0gdGhhdCBpbXBsZW1lbnRhdGlvbnMgbmVlZCB0byBndWFyYW50ZWUNCj4+PiB0
aGF0IHRoZSBsb2NrIGxpdmUgYXQgbGVhc3QgYXMgbG9uZyBhbGwgZmVuY2VzIHJlZmVyZW5jaW5n
IHRoZW0uDQo+Pj4NCj4+PiBVc2luZyBhIHBlci1mZW5jZSBzcGlubG9jayBhbGxvd3MgY29tcGxl
dGVseSBkZWNvdXBsaW5nIHNwaW5sb2NrIHByb2R1Y2VyDQo+Pj4gYW5kIGNvbnN1bWVyIGxpZmUg
dGltZXMsIHNpbXBsaWZ5aW5nIHRoZSBoYW5kbGluZyBpbiBtb3N0IHVzZSBjYXNlcy4NCj4+Pg0K
Pj4+IHYyOiBpbXByb3ZlIG5hbWluZywgY292ZXJhZ2UgYW5kIGZ1bmN0aW9uIGRvY3VtZW50YXRp
b24NCj4+PiB2MzogZml4IG9uZSBhZGRpdGlvbmFsIGxvY2tpbmcgaW4gdGhlIHNlbGZ0ZXN0cw0K
Pj4+IHY0OiBzZXBhcmF0ZSBvdXQgc29tZSBjaGFuZ2VzIHRvIG1ha2UgdGhlIHBhdGNoIHNtYWxs
ZXIsDQo+Pj4gIMKgwqDCoMKgIGZpeCBvbmUgYW1kZ3B1IGNyYXNoIGZvdW5kIGJ5IENJIHN5c3Rl
bXMNCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4+PiAtLS0NCj4+PiAgwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjUgKysrKysrKysrKysrKysrKystLS0tLS0t
DQo+Pj4gIMKgIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoCAyICstDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92
bS5owqAgfMKgIDIgKy0NCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vZHJt
X3dyaXRlYmFjay5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPj4+ICDCoCBkcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMgfMKgIDMgKystDQo+Pj4gIMKgIGRyaXZlcnMv
Z3B1L2RybS9xeGwvcXhsX3JlbGVhc2UuY8KgwqDCoMKgwqDCoCB8wqAgMyArKy0NCj4+PiAgwqAg
ZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZmVuY2UuY8KgwqAgfMKgIDMgKystDQo+Pj4g
IMKgIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jwqDCoMKgwqDCoMKgwqAgfMKgIDMg
KystDQo+Pg0KPj4gaTkxNSBuZWVkZWQgY2hhbmdlcyB0b28sIGJhc2VkIG9uIHRoZSBrYnVpbGQg
cmVwb3J0Lg0KPiANCj4gR29pbmcgdG8gdGFrZSBhIGxvb2sgbm93Lg0KPiAgIA0KPj4gSGF2ZSB5
b3Ugc2VlbiBteSBub3RlIGFib3V0IHRoZSBSQ1Ugc3BhcnNlIHdhcm5pbmcgYXMgd2VsbD8NCj4g
DQo+IE5vcGUsIEkgbXVzdCBoYXZlIG1pc3NlZCB0aGF0IG1haWwuDQoNCk5vIHdvcnJpZXMsIGl0
IHdhcyB0aGlzIG9uZToNCg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL2Q3NGRl
YzMyLTgyZWYtNDcxZi1iMDRjLTJmOTc5NzFlMWYyYUB1cnN1bGluLm5ldC8NCg0KPiAuLi4NCj4+
PiAgwqAgKy8qKg0KPj4+ICsgKiBkbWFfZmVuY2Vfc3BpbmxvY2sgLSByZXR1cm4gcG9pbnRlciB0
byB0aGUgc3BpbmxvY2sgcHJvdGVjdGluZyB0aGUgZmVuY2UNCj4+PiArICogQGZlbmNlOiB0aGUg
ZmVuY2UgdG8gZ2V0IHRoZSBsb2NrIGZyb20NCj4+PiArICoNCj4+PiArICogUmV0dXJuIGVpdGhl
ciB0aGUgcG9pbnRlciB0byB0aGUgZW1iZWRkZWQgb3IgdGhlIGV4dGVybmFsIHNwaW4gbG9jay4N
Cj4+PiArICovDQo+Pj4gK3N0YXRpYyBpbmxpbmUgc3BpbmxvY2tfdCAqZG1hX2ZlbmNlX3NwaW5s
b2NrKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+ICt7DQo+Pj4gK8KgwqDCoCByZXR1cm4g
dGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tfQklULCAmZmVuY2UtPmZsYWdzKSA/
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgICZmZW5jZS0+aW5saW5lX2xvY2sgOiBmZW5jZS0+ZXh0ZXJu
X2xvY2s7DQo+Pj4gK30NCj4+DQo+PiBZb3UgZGlkIG5vdCB3YW50IHRvIG1vdmUgdGhpcyBoZWxw
ZXIgaW50byAiZG1hLWJ1ZjogYWJzdHJhY3QgZmVuY2UgbG9ja2luZyIgPw0KPiANCj4gSSB3YXMg
YXZvaWRpbmcgdGhhdCB0byBrZWVwIHRoZSBwcmUtcmVxdWlzaXRlIHBhdGNoIHNtYWxsZXIsIGNh
dXNlIHRoaXMgY2hhbmdlIGhlcmUgc2VlbWVkIGluZGVwZW5kZW50IHRvIHRoYXQuDQo+IA0KPiBC
dXQgdGhpbmtpbmcgYWJvdXQgaXQgSSBjb3VsZCBtYWtlIGEgdGhpcmQgcGF0Y2ggd2hpY2ggaW50
cm9kdWNlcyBkbWFfZmVuY2Vfc3BpbmxvY2soKSBhbmQgY2hhbmdlcyBhbGwgdGhlIGNvbnRhaW5l
cl9vZiB1c2VzLg0KPiANCj4+IEkgdGhpbmsgdGhhdCB3b3VsZCBoYXZlIGJlZW4gYmV0dGVyIHRv
IGtlZXAgZXZlcnl0aGluZyBtZWNoYW5pY2FsIGluIG9uZSBwYXRjaCwgYW5kIHRoZW4gdGhpcyBw
YXRjaCB3aGljaCBjaGFuZ2VzIGJlaGF2aW91ciBkb2VzIG5vdCB0b3VjaCBhbnkgZHJpdmVycyBi
dXQgb25seSBkbWEtZmVuY2UgY29yZS4NCj4+DQo+PiBBbHNvLCB3aGF0IGFib3V0IGFkZGluZyBz
b21ldGhpbmcgbGlrZSBkbWFfZmVuY2VfY29udGFpbmVyX29mKCkgaW4gdGhhdCBwYXRjaCBhcyB3
ZWxsPw0KPiANCj4gSSB3b3VsZCByYXRoZXIgbGlrZSB0byBhdm9pZCB0aGF0LiBVc2luZyB0aGUg
c3BpbmxvY2sgcG9pbnRlciB3aXRoIGNvbnRhaW5lcl9vZiBzZWVtZWQgdG8gYmUgYSBiaXQgb2Yg
YSBoYWNrIHRvIG1lIGluIHRoZSBmaXJzdCBwbGFjZSBhbmQgSSBkb24ndCB3YW50IHRvIGVuY291
cmFnZSBwZW9wbGUgdG8gZG8gdGhhdCBpbiBuZXcgY29kZSBhcyB3ZWxsLg0KDQpJIGFncmVlIGRt
YV9mZW5jZV9jb250YWluZXJfb2Ygd291bGQgYmUgYSBiaXQgb2YgcXVlc3Rpb25hYmxlIHRhc3Rl
Lg0KDQpNeSB0aGlua2luZyB3YXMgZnJvbSB0aGUgYW5nbGUsIGFzIHlvdSBoYXZlIGRtYV9mZW5j
ZV9zcGlubG9jaygpIHdoaWNoIA0KaXMgZmVuY2UtPmxvY2sgYWNjZXNzb3IgYXQgcnVudGltZSwg
d2hpbGUgY29udGFpbmVyX29mIGlzIHRoZSBzYW1lIGJ1dCANCm5lZWRzIHRvIGJlIGNvbXBpbGUg
dGltZSwgYW5kIHNpbmNlIHRoZXJlIGFyZSB0aGUgcGF0Y2hlcyB3aGljaCB0b3VjaCBhIA0KYnVu
Y2ggb2YgZHJpdmVycyBwdXJlbHkgbWVjaGFuaWNhbCwgbWF5YmUgd3JhcCBib3RoLiBUaGVuIHRo
ZSBwYXRjaCANCndoaWNoIGFkZCB0aGUgaW5saW5lIG1vZGUgb25seSBjaGFuZ2VzIGRtYS1mZW5j
ZS5ofGMgYW5kIHNvIGNhbiBiZSANCmVhc2lseSByZXZlcnRlZCBzaG91bGQgdGhpbmdzIGdvIGJh
ZC4NCg0KSSBkb24ndCBob3dldmVyIHRoaW5rIHRoaXMgcmVhc29uaW5nIGZ1bGx5IGFwcGxpZXMs
IHNpbmNlIHRoZXJlIHdvdWxkIGJlIA0Kbm8gY2hhbmdlIGluIGJlaGF2aW91ciB1bnRpbCBlYWNo
IGFuIGV2ZXJ5IHR1cm5zIG9uIHRoZSBpbmxpbmUgbG9jayANCm1vZGUuIFNvIEkgZ3Vlc3MgZm9y
IG1lIEkgd291bGQgYmUgaGFwcHkgaWYgZG1hX2ZlbmNlX3NwaW5sb2NrKCkgd291bGQgDQpiZSBp
biB0aGUgc2FtZSBwYXRjaCBhcyB0aGUgZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZSgpLiBMb2dpYyBi
ZWluZyANCmFic3RyYWN0aW5nIGFjY2VzcyB0byB0aGUgbG9jayBjYW4gYmUganVzdGlmaWVkIHRv
IGdvIHRvZ2V0aGVyLg0KDQpGb3IgY29udGFpbmVyX29mIEkgZG9uJ3Qga25vdyB3aGF0IHRvIGRv
LiBJIGRvbid0IHNlZSBob3cgaXQgY2FuIGJlIGEgDQpzZXBhcmF0ZSBwYXRjaCBpZiB0aGVyZSBp
cyBubyBhY2Nlc3Nvcj8gSW4gd2hpY2ggY2FzZSBJIGd1ZXNzIGp1c3QgbGVhdmUgDQppdCBhcyBp
cy4NCg0KUmVnYXJkcywNCg0KVHZydGtvDQoNCj4+DQo+PiBSZWdhcmRzLA0KPj4NCj4+IFR2cnRr
bw0KPj4NCj4+PiArDQo+Pj4gIMKgIC8qKg0KPj4+ICDCoMKgICogZG1hX2ZlbmNlX2xvY2tfaXJx
c2F2ZSAtIGlycXNhdmUgbG9jayB0aGUgZmVuY2UNCj4+PiAgwqDCoCAqIEBmZW5jZTogdGhlIGZl
bmNlIHRvIGxvY2sNCj4+PiBAQCAtMzg1LDcgKzQwMyw3IEBAIGRtYV9mZW5jZV9nZXRfcmN1X3Nh
ZmUoc3RydWN0IGRtYV9mZW5jZSBfX3JjdSAqKmZlbmNlcCkNCj4+PiAgwqDCoCAqIExvY2sgdGhl
IGZlbmNlLCBwcmV2ZW50aW5nIGl0IGZyb20gY2hhbmdpbmcgdG8gdGhlIHNpZ25hbGVkIHN0YXRl
Lg0KPj4+ICDCoMKgICovDQo+Pj4gIMKgICNkZWZpbmUgZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZShm
ZW5jZSwgZmxhZ3MpwqDCoMKgIFwNCj4+PiAtwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKGZlbmNl
LT5sb2NrLCBmbGFncykNCj4+PiArwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKGRtYV9mZW5jZV9z
cGlubG9jayhmZW5jZSksIGZsYWdzKQ0KPj4+ICDCoCDCoCAvKioNCj4+PiAgwqDCoCAqIGRtYV9m
ZW5jZV91bmxvY2tfaXJxcmVzdG9yZSAtIHVubG9jayB0aGUgZmVuY2UgYW5kIGlycXJlc3RvcmUN
Cj4+PiBAQCAtMzk1LDcgKzQxMyw3IEBAIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoc3RydWN0IGRt
YV9mZW5jZSBfX3JjdSAqKmZlbmNlcCkNCj4+PiAgwqDCoCAqIFVubG9jayB0aGUgZmVuY2UsIGFs
bG93aW5nIGl0IHRvIGNoYW5nZSBpdCdzIHN0YXRlIHRvIHNpZ25hbGVkIGFnYWluLg0KPj4+ICDC
oMKgICovDQo+Pj4gIMKgICNkZWZpbmUgZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGZlbmNl
LCBmbGFncynCoMKgwqAgXA0KPj4+IC3CoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5j
ZS0+bG9jaywgZmxhZ3MpDQo+Pj4gK8KgwqDCoCBzcGluX3VubG9ja19pcnFyZXN0b3JlKGRtYV9m
ZW5jZV9zcGlubG9jayhmZW5jZSksIGZsYWdzKQ0KPj4+ICDCoCDCoCAjaWZkZWYgQ09ORklHX0xP
Q0tERVANCj4+PiAgwqAgYm9vbCBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyh2b2lkKTsNCj4+
DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
