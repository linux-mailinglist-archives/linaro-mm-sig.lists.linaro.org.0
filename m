Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B91CA7369
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 05 Dec 2025 11:41:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2CCA3F96E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Dec 2025 10:41:44 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by lists.linaro.org (Postfix) with ESMTPS id 5A98D3F8F2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 10:41:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=jYoKK446;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.219.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88246676008so20861996d6.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Dec 2025 02:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764931289; x=1765536089; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pl0KZsEEFyvHk530kg5eqVspRdfF3HFp7SF4AM4hfeM=;
        b=jYoKK446127siTNKIfKJ3NjMTvIMqCQlOqNfDlODRfdAn2mFxkAFVxCSxNVTKzQPh9
         y3mF4UkyriXQ1eCe7nPQuTwvYhtv3Kd/wiJfooULnNbNpsIRnhQxIM48nPVbIw+86mfF
         /jJBBCjeJ+rQyodJm3J9Ec6i8KrzUBwFCSpcB2lBILPCINmf51KSWaPXp/fOT7PDbch0
         Jfr06SZbHiFhQv+VKgmL34xIdDFXB6PDGq2C+7JHJTW7UG5vGNBZ+DeaZ1lNaQyNeRS8
         4+cAsV3rjdQ/cx62vAGtX16PnKY7A/IsUS/U4/AgHDWoCSn6fnBhqiwC7BHXO1jABbZC
         nJ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764931289; x=1765536089;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pl0KZsEEFyvHk530kg5eqVspRdfF3HFp7SF4AM4hfeM=;
        b=jwlNP2Ke8DahPlN7LmceVedssfClIOzt3jXpfOBBok+dtlPcBJmJ5zkoYMYjt2kX7E
         Vqb592hNbbGU2x/5zgfYdPM1P/kGS30hnIe+O32ucmbYJGrnXQouNzTo7u9ICARUpg7k
         9FDwselMCknSISJIjWI2K6GGepH8d9ABQhzq/c5Vw8T1q0WjDPNM5Fe5WOSAlxWraN4v
         lvdcOKp65XfTlnqUsuZxXvpollIa8/Z79oz2TzPaZRdZa6badzQCC5VfmSBh42Sqt8JZ
         eJTnyLW/UuUGEP3dH2T08i32LMBLQS370QPKxuoHWhr6lO8gRy62Yj0yLi8aUpPl8WD2
         k3OA==
X-Forwarded-Encrypted: i=1; AJvYcCVkj2Wba+Zy2ttH9pFJjgDIi8HsuOs+7L0AIhv+LcrTO83SZvEgSFXBr0KVZMqycTiMVdREwlNXejZ3I8JR@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/mHH4NGUqgxcBuSpj7L/GVIzOFMctib+ZMmkQTAzjSimopoY9
	c0lIZol9otVUmxxq7rF9yK7O4UWqZuF/xVfLJs24JmpX63MMhNWiOGOD
X-Gm-Gg: ASbGncvv94CNol0M0VNhLF0z/tKymZpqcE9Lko7SJbSPtWUfcKUViSGNmEcjGCD/77+
	J7LbgSfxORl6DHFhzkbbDBB9JPBN0VMQJ5Mn2u+BcXHn4zXi0WbSVC6SrlpKUW1jW3gvpAoSpUq
	VRHtI4IiWQPpy1lZD+gtNyJn3LLMDBYRqluznuOYgwkk33U1l/zGhaUgHMWBM6Nh7lN2ksPDjRQ
	2lcGKzYHKxng/ZcorU6lPBiEJTehVFpfMwPLdTIly3mOEcAmrIIIvFkRO28zn3Lssaiuy2fSA+U
	77CBXBdB6AAOIosaSztXYlfL6BlXRWbre3Hk+uISP7kA9ZEAOFkk2MxdTS6gF0rdVc418Y2F7r0
	G/wAxHDmGDurY7pNpE34leq630fr792P8so4TbDQkR9H6N14pR6T8ne3YfPnCZN8Vcgp33KdB9r
	eH3xusHCMOCEUU48tVPyIJQpHvUR3H9zRkrbmTnufNTg==
X-Google-Smtp-Source: AGHT+IHNxqFp5G2R7gNMuG1VWImXhi2+k99kfXSMAJ0YiDtIklgT1SoXMb9r1YrkoI4/X88XYCBQTw==
X-Received: by 2002:a05:6214:33c9:b0:882:6797:3a67 with SMTP id 6a1803df08f44-888194838a2mr123350926d6.13.1764931288868;
        Fri, 05 Dec 2025 02:41:28 -0800 (PST)
Received: from [10.254.120.97] (mkmvpn.amd.com. [165.204.54.211])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88827f332a7sm31835936d6.5.2025.12.05.02.41.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:41:28 -0800 (PST)
Message-ID: <e21cc071-0133-4b07-a52f-67ed4d80cbcd@gmail.com>
Date: Fri, 5 Dec 2025 11:41:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthew Auld <matthew.auld@intel.com>, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, simona.vetter@ffwll.ch
References: <20251204145952.7052-1-christian.koenig@amd.com>
 <3e09719d-af1b-4c5d-83fb-6ef5f41739b5@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <3e09719d-af1b-4c5d-83fb-6ef5f41739b5@intel.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.41:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[amd.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5A98D3F8F2
X-Spamd-Bar: ----
Message-ID-Hash: XIF7EYQ5BYIEZVJZOB3LSTF7T3XYROKL
X-Message-ID-Hash: XIF7EYQ5BYIEZVJZOB3LSTF7T3XYROKL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: improve sg_table debugging hack v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XIF7EYQ5BYIEZVJZOB3LSTF7T3XYROKL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvNC8yNSAxNjo1MSwgTWF0dGhldyBBdWxkIHdyb3RlOg0KPiBPbiAwNC8xMi8yMDI1IDE0
OjU5LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gVGhpcyBkZWJ1Z2dpbmcgaGFjayBpcyBp
bXBvcnRhbnQgdG8gZW5mb3JjZSB0aGUgcnVsZSB0aGF0IGltcG9ydGVycw0KPj4gc2hvdWxkICpu
ZXZlciogdG91Y2ggdGhlIHVuZGVybHlpbmcgc3RydWN0IHBhZ2Ugb2YgdGhlIGV4cG9ydGVyLg0K
Pj4NCj4+IEluc3RlYWQgb2YganVzdCBtYW5nbGluZyB0aGUgcGFnZSBsaW5rIGNyZWF0ZSBhIGNv
cHkgb2YgdGhlIHNnX3RhYmxlDQo+PiBidXQgb25seSBjb3B5IG92ZXIgdGhlIERNQSBhZGRyZXNz
ZXMgYW5kIG5vdCB0aGUgcGFnZXMuDQo+Pg0KPj4gVGhpcyB3aWxsIGNhdXNlIGEgTlVMTCBwb2lu
dGVyIGRlLXJlZmVyZW5jZSBpZiB0aGUgaW1wb3J0ZXIgdHJpZXMgdG8NCj4+IHRvdWNoIHRoZSBz
dHJ1Y3QgcGFnZS4gU3RpbGwgcXVpdGUgYSBoYWNrIGJ1dCB0aGlzIGF0IGxlYXN0IGFsbG93cyB0
aGUNCj4+IGV4cG9ydGVyIHRvIHByb3Blcmx5IGtlZXBzIGl0J3Mgc2dfdGFibGUgaW50YWN0IHdo
aWxlIGFsbG93aW5nIHRoZQ0KPj4gRE1BLWJ1ZiBtYWludGFpbmVyIHRvIGZpbmQgYW5kIGZpeCBt
aXNiZWhhdmluZyBpbXBvcnRlcnMgYW5kIGZpbmFsbHkNCj4+IHN3aXRjaCBvdmVyIHRvIHVzaW5n
IGEgZGlmZmVyZW50IGRhdGEgc3RydWN0dXJlIGluIHRoZSBmdXR1cmUuDQo+Pg0KPj4gdjI6IGlt
cHJvdmUgdGhlIGhhY2sgZnVydGhlciBieSB1c2luZyBhIHdyYXBwZXIgc3RydWN0dXJlIGFuZCBl
eHBsYWluaW5nDQo+PiB0aGUgYmFja2dyb3VuZCBhIGJpdCBtb3JlIGluIHRoZSBjb21taXQgbWVz
c2FnZS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQo+PiBSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhsIDxtaWNoYWVs
LmoucnVobEBpbnRlbC5jb20+ICh2MSkNCj4+IC0tLQ0KPj4gwqAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyB8IDcyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQ0KPj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPj4N
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYw0KPj4gaW5kZXggMjMwNWJiMmNjMWYxLi44YzRhZmQzNjBiNzIgMTAwNjQ0
DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQo+PiBAQCAtMzUsNiArMzUsMTIgQEANCj4+IMKgIMKgICNpbmNsdWRl
ICJkbWEtYnVmLXN5c2ZzLXN0YXRzLmgiDQo+PiDCoCArLyogV3JhcHBlciB0byBoaWRlIHRoZSBz
Z190YWJsZSBwYWdlIGxpbmsgZnJvbSB0aGUgaW1wb3J0ZXIgKi8NCj4+ICtzdHJ1Y3QgZG1hX2J1
Zl9zZ190YWJsZV93cmFwcGVyIHsNCj4+ICvCoMKgwqAgc3RydWN0IHNnX3RhYmxlICpvcmlnaW5h
bDsNCj4+ICvCoMKgwqAgc3RydWN0IHNnX3RhYmxlIHdyYXBwZXI7DQo+PiArfTsNCj4+ICsNCj4+
IMKgIHN0YXRpYyBpbmxpbmUgaW50IGlzX2RtYV9idWZfZmlsZShzdHJ1Y3QgZmlsZSAqKTsNCj4+
IMKgIMKgIHN0YXRpYyBERUZJTkVfTVVURVgoZG1hYnVmX2xpc3RfbXV0ZXgpOw0KPj4gQEAgLTgy
OCwyMSArODM0LDU3IEBAIHZvaWQgZG1hX2J1Zl9wdXQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikN
Cj4+IMKgIH0NCj4+IMKgIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfcHV0LCAiRE1BX0JV
RiIpOw0KPj4gwqAgLXN0YXRpYyB2b2lkIG1hbmdsZV9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFibGUg
KnNnX3RhYmxlKQ0KPj4gK3N0YXRpYyBpbnQgZG1hX2J1Zl9tYW5nbGVfc2dfdGFibGUoc3RydWN0
IHNnX3RhYmxlICoqc2dfdGFibGUpDQo+PiDCoCB7DQo+PiAtI2lmZGVmIENPTkZJR19ETUFCVUZf
REVCVUcNCj4+IC3CoMKgwqAgaW50IGk7DQo+PiAtwqDCoMKgIHN0cnVjdCBzY2F0dGVybGlzdCAq
c2c7DQo+PiAtDQo+PiAtwqDCoMKgIC8qIFRvIGNhdGNoIGFidXNlIG9mIHRoZSB1bmRlcmx5aW5n
IHN0cnVjdCBwYWdlIGJ5IGltcG9ydGVycyBtaXgNCj4+IC3CoMKgwqDCoCAqIHVwIHRoZSBiaXRz
LCBidXQgdGFrZSBjYXJlIHRvIHByZXNlcnZlIHRoZSBsb3cgU0dfIGJpdHMgdG8NCj4+IC3CoMKg
wqDCoCAqIG5vdCBjb3JydXB0IHRoZSBzZ3QuIFRoZSBtaXhpbmcgaXMgdW5kb25lIG9uIHVubWFw
DQo+PiAtwqDCoMKgwqAgKiBiZWZvcmUgcGFzc2luZyB0aGUgc2d0IGJhY2sgdG8gdGhlIGV4cG9y
dGVyLg0KPj4gK8KgwqDCoCBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnRvX3NnLCAqZnJvbV9zZzsNCj4+
ICvCoMKgwqAgc3RydWN0IHNnX3RhYmxlICpmcm9tID0gKnNnX3RhYmxlOw0KPj4gK8KgwqDCoCBz
dHJ1Y3QgZG1hX2J1Zl9zZ190YWJsZV93cmFwcGVyICp0bzsNCj4+ICvCoMKgwqAgaW50IGksIHJl
dDsNCj4+ICsNCj4+ICvCoMKgwqAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfREVCVUcp
KQ0KPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOw0KPj4gKw0KPj4gK8KgwqDCoCAvKg0KPj4g
K8KgwqDCoMKgICogVG8gY2F0Y2ggYWJ1c2Ugb2YgdGhlIHVuZGVybHlpbmcgc3RydWN0IHBhZ2Ug
YnkgaW1wb3J0ZXJzIGNvcHkgdGhlDQo+PiArwqDCoMKgwqAgKiBzZ190YWJsZSB3aXRob3V0IGNv
cHlpbmcgdGhlIHBhZ2VfbGluayBhbmQgZ2l2ZSBvbmx5IHRoZSBjb3B5IGJhY2sgdG8NCj4+ICvC
oMKgwqDCoCAqIHRoZSBpbXBvcnRlci4NCj4+IMKgwqDCoMKgwqDCoCAqLw0KPj4gLcKgwqDCoCBm
b3JfZWFjaF9zZ3RhYmxlX3NnKHNnX3RhYmxlLCBzZywgaSkNCj4+IC3CoMKgwqDCoMKgwqDCoCBz
Zy0+cGFnZV9saW5rIF49IH4weGZmVUw7DQo+PiAtI2VuZGlmDQo+PiArwqDCoMKgIHRvID0ga3ph
bGxvYyhzaXplb2YoKnRvKSwgR0ZQX0tFUk5FTCk7DQo+PiArwqDCoMKgIGlmICghdG8pDQo+PiAr
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07DQo+PiArDQo+PiArwqDCoMKgIHJldCA9IHNn
X2FsbG9jX3RhYmxlKCZ0by0+d3JhcHBlciwgZnJvbS0+bmVudHMsIEdGUF9LRVJORUwpOw0KPj4g
K8KgwqDCoCBpZiAocmV0KQ0KPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gZnJlZV90bzsNCj4+ICsN
Cj4+ICvCoMKgwqAgdG9fc2cgPSB0by0+d3JhcHBlci5zZ2w7DQo+PiArwqDCoMKgIGZvcl9lYWNo
X3NndGFibGVfZG1hX3NnKGZyb20sIGZyb21fc2csIGkpIHsNCj4+ICvCoMKgwqDCoMKgwqDCoCBz
Z19zZXRfcGFnZSh0b19zZywgTlVMTCwgMCwgMCk7DQo+IA0KPiBBcmUgd2Ugc3RpbGwgYWxsb3dl
ZCB0byBwYXNzIE5VTEwgcGFnZSBoZXJlPyBUaGVyZSBsb29rcyB0byBiZSB0aGUgcmVjZW50bHkg
YWRkZWQ6DQo+IA0KPiBWTV9XQVJOX09OX09OQ0UoIXBhZ2VfcmFuZ2VfY29udGlndW91cyhwYWdl
LCBBTElHTihsZW4gKyBvZmZzZXQsIFBBR0VfU0laRSkgLyBQQUdFX1NJWkUpKTsNCj4gDQo+IEFu
ZCBpZiBwYWdlX3JhbmdlX2NvbnRpZ3VvdXMoKSBkb2VzIG5vdCBqdXN0IHJldHVybiB0cnVlLCBp
dCBwb3RlbnRpYWxseSB3YW50cyB0byBkZXJlZmVyZW5jZSB0aGUgcGFnZSwgbGlrZSB3aXRoIHBh
Z2VfdG9fcGZuKCk/DQoNCkdvb2QgcG9pbnQuDQoNCkl0IGRvZXNuJ3QgY3Jhc2ggYXQgdGhlIG1v
bWVudCBiZWNhdXNlIHBhZ2VfdG9fcGZuKCkgYWxzbyB3b3JrcyB3aXRoIE5VTEwgYXMgcGFnZSwg
YnV0IGl0IGlzIGNsZWFybHkgbm90IHRoZSBuaWNlc3QgdGhpbmcgdG8gZG8uDQoNCkkgd2lsbCBz
d2l0Y2ggb3ZlciB0byB1c2luZyBzZ19hc3NpZ25fcGFnZSgpIGluc3RlYWQuDQoNCj4gDQo+IA0K
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzZ19kbWFfYWRkcmVzcyh0b19zZykg
PSBzZ19kbWFfYWRkcmVzcyhmcm9tX3NnKTsNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc2dfZG1hX2xlbih0b19zZykgPSBzZ19kbWFfbGVuKGZyb21fc2cpOw0KPiANCj4gTml0
OiBmb3JtYXR0aW5nIGxvb2tzIG9mZiBoZXJlLg0KDQpPaCwgaW5kZWVkLg0KDQpUaGFua3MsDQpD
aHJpc3RpYW4uDQoNCj4gDQo+PiArwqDCoMKgwqDCoMKgwqAgdG9fc2cgPSBzZ19uZXh0KHRvX3Nn
KTsNCj4+ICvCoMKgwqAgfQ0KPj4gwqAgK8KgwqDCoCB0by0+b3JpZ2luYWwgPSBmcm9tOw0KPj4g
K8KgwqDCoCAqc2dfdGFibGUgPSAmdG8tPndyYXBwZXI7DQo+PiArwqDCoMKgIHJldHVybiAwOw0K
Pj4gKw0KPj4gK2ZyZWVfdG86DQo+PiArwqDCoMKgIGtmcmVlKHRvKTsNCj4+ICvCoMKgwqAgcmV0
dXJuIHJldDsNCj4+ICt9DQo+PiArDQo+PiArc3RhdGljIHZvaWQgZG1hX2J1Zl9kZW1hbmdsZV9z
Z190YWJsZShzdHJ1Y3Qgc2dfdGFibGUgKipzZ190YWJsZSkNCj4+ICt7DQo+PiArwqDCoMKgIHN0
cnVjdCBkbWFfYnVmX3NnX3RhYmxlX3dyYXBwZXIgKmNvcHk7DQo+PiArDQo+PiArwqDCoMKgIGlm
ICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkNCj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm47DQo+PiArDQo+PiArwqDCoMKgIGNvcHkgPSBjb250YWluZXJfb2YoKnNnX3RhYmxlLCB0
eXBlb2YoKmNvcHkpLCB3cmFwcGVyKTsNCj4+ICvCoMKgwqAgKnNnX3RhYmxlID0gY29weS0+b3Jp
Z2luYWw7DQo+PiArwqDCoMKgIHNnX2ZyZWVfdGFibGUoJmNvcHktPndyYXBwZXIpOw0KPj4gK8Kg
wqDCoCBrZnJlZShjb3B5KTsNCj4+IMKgIH0NCj4+IMKgIMKgIHN0YXRpYyBpbmxpbmUgYm9vbA0K
Pj4gQEAgLTExMzksNyArMTE4MSw5IEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBfYXR0
YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKHJldCA8IDApDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IGVycm9yX3VubWFwOw0KPj4gwqDCoMKgwqDCoCB9DQo+PiAtwqDCoMKgIG1hbmdsZV9zZ190YWJs
ZShzZ190YWJsZSk7DQo+PiArwqDCoMKgIHJldCA9IGRtYV9idWZfbWFuZ2xlX3NnX3RhYmxlKCZz
Z190YWJsZSk7DQo+PiArwqDCoMKgIGlmIChyZXQpDQo+PiArwqDCoMKgwqDCoMKgwqAgZ290byBl
cnJvcl91bm1hcDsNCj4+IMKgIMKgwqDCoMKgwqAgaWYgKElTX0VOQUJMRUQoQ09ORklHX0RNQV9B
UElfREVCVUcpKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNjYXR0ZXJsaXN0ICpz
ZzsNCj4+IEBAIC0xMjIwLDcgKzEyNjQsNyBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVu
dChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+PiDCoCDCoMKgwqDCoMKgIGRt
YV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4+IMKgIC3CoMKgwqAg
bWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCj4+ICvCoMKgwqAgZG1hX2J1Zl9kZW1hbmdsZV9z
Z190YWJsZSgmc2dfdGFibGUpOw0KPj4gwqDCoMKgwqDCoCBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51
bm1hcF9kbWFfYnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlvbik7DQo+PiDCoCDCoMKgwqDC
oMKgIGlmIChkbWFfYnVmX3Bpbl9vbl9tYXAoYXR0YWNoKSkNCj4gDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
