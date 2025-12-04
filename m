Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7215DCA494E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 17:45:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8805E400FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 16:45:28 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 453373F92C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 16:45:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=lFcmHa15;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779e2ac121so67235e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Dec 2025 08:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764866712; x=1765471512; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0CyQocRCpW9wkr09JiCgFa32QuaN7pvC+ueWitNv43g=;
        b=lFcmHa152jDuni4NftfsY4Se1y1gUdM4kPt9z/T7CTNbB9i1SwlPjo+XZCALW7+gmd
         F/LeC0pYNdkkGD3VatDVY04HH6sQFWveRCcTEhHtYrpuKzMB3OmUz6e1WozSxF/AfewZ
         Y6usStwiSdMmb9vdQgCt72oAUI7JHRZ52VOkRg5YF0usIl+LdBOo4275ElurCevJ1xPn
         FuOdJtbhG9KB5SSlKfg4kN6/0eAO/wjyNoYl2GsQx1P89JpTQndzk/8bBlUPBNVZMOjb
         SzUnczEYhg98j7gl40IjJ/9zGMo3A5TIl2RNGQBXiZg3gIsVDlJfD48DNHxRcWJMDYRN
         7Xiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764866712; x=1765471512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0CyQocRCpW9wkr09JiCgFa32QuaN7pvC+ueWitNv43g=;
        b=H3l5tdR9AuJDuvVQns3fbcLE/rf5MzrG8jdOm2hFCKtm+75XJAzoGOCip3YFBZw4hS
         auMJ7/8Uk5WcIu4Xgo4TN4Xh5wj2bnBc9YcP96pm6vUwXWnh+YhbKCwY8V7LklcsRgpe
         F4zUKwZz2lbPId/DxI7WeDU3EneVzDfz9qyNmtc5jKWQhS7IjkP2DtHHcht6HaTK7Wd8
         kbLDEv7BhwH8OyearAXTx0j6FTXCH8US7+aU2HhutKvfzmQhgdBRz+eyHrW+tI+w6156
         UNJ8QaXmQBJGrOit8eMF+R1rG3GtjmOe2RhR2YpwHt/mNyIxsedTwpR7wehsk4hVpbQU
         ANIw==
X-Forwarded-Encrypted: i=1; AJvYcCVX+zRiSRTGNi1VG6+jbFDTgNm/ofSznJJjritZrlypYW6qNapYnkPKfh9+oBLPomaEKbKUfc2m2x3gHf3h@lists.linaro.org
X-Gm-Message-State: AOJu0YzwoApo2qLgKKOrAQgalIjAjasfXgF+AiRsq6no2J1Ex0dIujsx
	IkmHOnfwG39nTPXz0Df0alVABCXRWYLlxxnVohlFTbQZ567T3FAE4gOrJCL5KMJowyLJ1vIwOKP
	MBslFmGK7Pug54f0uX0O0ihoosmejuyKJWa9iORRf
X-Gm-Gg: ASbGncslxDgNQXP3uW9nysoh4gzL6b1hy9/PEvd2GDgxSbCanvI4+hsjy+LEyYkHaa2
	NXDkOVOfvPPYpBQNBmFvIeEolnC5la7ODdUZemPI6cB4dGEJ3Ajnk5cRlY1AhskkolbndV9UKKZ
	cHzMwqysWjE2rt6mBWwdBDnF2O37TtdCL2+xFUj8mtuPU0YtSKbVMMBlG+hW+U3C8d/JQMIwZgu
	O9wnPjYVnwB+9/IGS2pG5Z8jEdXMB1g7Zbp8GCPmPRU1h+v6qj2hf9SiwlhbagqWdboGlo2p4XZ
	McWnfROaBQ0Xv6RfggfOPIJg2gAEgaObjJavIx0QVM2ltdBeXpOmn1lSOo7JGg==
X-Google-Smtp-Source: AGHT+IE0KMhH3k7qWdeBVVuAP+IUq1UipXwO7m3nwOYJmd54XwgIknZR5FukbGSdeibG3Qv+NPqrhPE4p5p9ITMRKrU=
X-Received: by 2002:a05:600c:581a:b0:477:86fd:fb18 with SMTP id
 5b1f17b1804b1-47932e04338mr205795e9.8.1764866712062; Thu, 04 Dec 2025
 08:45:12 -0800 (PST)
MIME-Version: 1.0
References: <20251204000348.1413593-1-tjmercier@google.com> <20251204000348.1413593-2-tjmercier@google.com>
In-Reply-To: <20251204000348.1413593-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 4 Dec 2025 08:44:59 -0800
X-Gm-Features: AWmQ_bnxDs0Em9c_P-3hJ2uCc6BRD7h1aEC-DbAd-yhfuFNLkrr8DTNbaj0gPCw
Message-ID: <CABdmKX0LxoPJPA755bzN8vRjUOQ0c4XucGhDX8QgbxqYXdB1pA@mail.gmail.com>
To: yonghong.song@linux.dev, ast@kernel.org, daniel@iogearbox.net,
	andrii@kernel.org, martin.lau@linux.dev, eddyz87@gmail.com, song@kernel.org,
	john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me,
	haoluo@google.com, jolsa@kernel.org, shuah@kernel.org, bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	android-mm@google.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.46:server fail];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_TO(0.00)[linux.dev,kernel.org,iogearbox.net,gmail.com,fomichev.me,google.com,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 453373F92C
X-Spamd-Bar: ---
Message-ID-Hash: RNCJNWE6QOLRIHIW22RY7KGKUFJUDTN7
X-Message-ID-Hash: RNCJNWE6QOLRIHIW22RY7KGKUFJUDTN7
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf 2/2] selftests/bpf: Add test for truncated dmabuf_iter reads
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNCJNWE6QOLRIHIW22RY7KGKUFJUDTN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBEZWMgMywgMjAyNSBhdCA0OjA14oCvUE0gVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJA
Z29vZ2xlLmNvbT4gd3JvdGU6DQo+DQo+IElmIG1hbnkgZG1hYnVmcyBhcmUgcHJlc2VudCwgcmVh
ZHMgb2YgdGhlIGRtYWJ1ZiBpdGVyYXRvciBjYW4gYmUNCj4gdHJ1bmNhdGVkIGF0IFBBR0VfU0la
RSBvciB1c2VyIGJ1ZmZlciBzaXplIGJvdW5kYXJpZXMgYmVmb3JlIHRoZSBmaXggaW4NCj4gInNl
bGZ0ZXN0cy9icGY6IEFkZCB0ZXN0IGZvciBvcGVuIGNvZGVkIGRtYWJ1Zl9pdGVyIi4NCg0KQ29w
eS9wYXN0ZSBlcnJvciBoZXJlLiBUaGlzIHNob3VsZCBiZSAiYnBmOiBGaXggdHJ1bmNhdGVkIGRt
YWJ1Zg0KaXRlcmF0b3IgcmVhZHMiIGZyb20gdGhlIHByZXZpb3VzIGNvbW1pdCBpbiBwYXRjaCAx
LiBJIGRpZG4ndCBpbmNsdWRlDQp0aGUgc2hhIGJlY2F1c2UgSSBkb24ndCB0aGluayB0aGV5J3Jl
IGd1YXJhbnRlZWQgdG8gYmUgc3RhYmxlIGF0IHRoaXMNCnBvaW50Lg0KDQpJIGFsc28gc2F3IHRo
ZSB3YXJuaW5nIGZyb20gQ0kgYWJvdXQgdGhlIGV4dHJhIG5ld2xpbmUgYmVmb3JlDQpzdWJ0ZXN0
X2RtYWJ1Zl9pdGVyX2NoZWNrX29wZW5fY29kZWQsIGJ1dCB0aGUgY3VycmVudCBDSSBmYWlsdXJl
cyBsb29rDQp1bnJlbGF0ZWQgdG8gdGhpcyBjaGFuZ2UuDQoNCkFkZCBhIHRlc3QgdG8NCj4gY29u
ZmlybSB0cnVuY2F0aW9uIGRvZXMgbm90IG9jY3VyLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBULkou
IE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiAtLS0NCj4gIC4uLi9zZWxmdGVzdHMv
YnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIuYyAgICB8IDQ3ICsrKysrKysrKysrKysrKysrLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPg0K
PiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1h
YnVmX2l0ZXIuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1
Zl9pdGVyLmMNCj4gaW5kZXggNmMyYjBjM2RiY2Q4Li5lNDQyYmU5ZGRlN2UgMTAwNjQ0DQo+IC0t
LSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMN
Cj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0
ZXIuYw0KPiBAQCAtNzMsMTIgKzczLDEwIEBAIHN0YXRpYyBpbnQgY3JlYXRlX3VkbWFidWYodm9p
ZCkNCj4gICAgICAgICByZXR1cm4gLTE7DQo+ICB9DQo+DQo+IC1zdGF0aWMgaW50IGNyZWF0ZV9z
eXNfaGVhcF9kbWFidWYodm9pZCkNCj4gK3N0YXRpYyBpbnQgY3JlYXRlX3N5c19oZWFwX2RtYWJ1
ZihzaXplX3QgYnl0ZXMpDQo+ICB7DQo+IC0gICAgICAgc3lzaGVhcF90ZXN0X2J1ZmZlcl9zaXpl
ID0gMjAgKiBnZXRwYWdlc2l6ZSgpOw0KPiAtDQo+ICAgICAgICAgc3RydWN0IGRtYV9oZWFwX2Fs
bG9jYXRpb25fZGF0YSBkYXRhID0gew0KPiAtICAgICAgICAgICAgICAgLmxlbiA9IHN5c2hlYXBf
dGVzdF9idWZmZXJfc2l6ZSwNCj4gKyAgICAgICAgICAgICAgIC5sZW4gPSBieXRlcywNCj4gICAg
ICAgICAgICAgICAgIC5mZCA9IDAsDQo+ICAgICAgICAgICAgICAgICAuZmRfZmxhZ3MgPSBPX1JE
V1IgfCBPX0NMT0VYRUMsDQo+ICAgICAgICAgICAgICAgICAuaGVhcF9mbGFncyA9IDAsDQo+IEBA
IC0xMTAsNyArMTA4LDkgQEAgc3RhdGljIGludCBjcmVhdGVfc3lzX2hlYXBfZG1hYnVmKHZvaWQp
DQo+ICBzdGF0aWMgaW50IGNyZWF0ZV90ZXN0X2J1ZmZlcnModm9pZCkNCj4gIHsNCj4gICAgICAg
ICB1ZG1hYnVmID0gY3JlYXRlX3VkbWFidWYoKTsNCj4gLSAgICAgICBzeXNoZWFwX2RtYWJ1ZiA9
IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoKTsNCj4gKw0KPiArICAgICAgIHN5c2hlYXBfdGVzdF9i
dWZmZXJfc2l6ZSA9IDIwICogZ2V0cGFnZXNpemUoKTsNCj4gKyAgICAgICBzeXNoZWFwX2RtYWJ1
ZiA9IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoc3lzaGVhcF90ZXN0X2J1ZmZlcl9zaXplKTsNCj4N
Cj4gICAgICAgICBpZiAodWRtYWJ1ZiA8IDAgfHwgc3lzaGVhcF9kbWFidWYgPCAwKQ0KPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIC0xOw0KPiBAQCAtMjE5LDYgKzIxOSwyNiBAQCBzdGF0aWMgdm9p
ZCBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX2RlZmF1bHRfaXRlcihzdHJ1Y3QgZG1hYnVmX2l0
ZXIgKnNrZWwpDQo+ICAgICAgICAgY2xvc2UoaXRlcl9mZCk7DQo+ICB9DQo+DQo+ICtzdGF0aWMg
dm9pZCBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX2xvdHNfb2ZfYnVmZmVycyhzdHJ1Y3QgZG1h
YnVmX2l0ZXIgKnNrZWwpDQo+ICt7DQo+ICsgICAgICAgaW50IGl0ZXJfZmQ7DQo+ICsgICAgICAg
Y2hhciBidWZbMTAyNF07DQo+ICsgICAgICAgc2l6ZV90IHRvdGFsX2J5dGVzX3JlYWQgPSAwOw0K
PiArICAgICAgIHNzaXplX3QgYnl0ZXNfcmVhZDsNCj4gKw0KPiArICAgICAgIGl0ZXJfZmQgPSBi
cGZfaXRlcl9jcmVhdGUoYnBmX2xpbmtfX2ZkKHNrZWwtPmxpbmtzLmRtYWJ1Zl9jb2xsZWN0b3Ip
KTsNCj4gKyAgICAgICBpZiAoIUFTU0VSVF9PS19GRChpdGVyX2ZkLCAiaXRlcl9jcmVhdGUiKSkN
Cj4gKyAgICAgICAgICAgICAgIHJldHVybjsNCj4gKw0KPiArICAgICAgIHdoaWxlICgoYnl0ZXNf
cmVhZCA9IHJlYWQoaXRlcl9mZCwgYnVmLCBzaXplb2YoYnVmKSkpID4gMCkNCj4gKyAgICAgICAg
ICAgICAgIHRvdGFsX2J5dGVzX3JlYWQgKz0gYnl0ZXNfcmVhZDsNCj4gKw0KPiArICAgICAgIEFT
U0VSVF9HVCh0b3RhbF9ieXRlc19yZWFkLCBnZXRwYWdlc2l6ZSgpLCAidG90YWxfYnl0ZXNfcmVh
ZCIpOw0KPiArDQo+ICsgICAgICAgY2xvc2UoaXRlcl9mZCk7DQo+ICt9DQo+ICsNCj4gKw0KPiAg
c3RhdGljIHZvaWQgc3VidGVzdF9kbWFidWZfaXRlcl9jaGVja19vcGVuX2NvZGVkKHN0cnVjdCBk
bWFidWZfaXRlciAqc2tlbCwgaW50IG1hcF9mZCkNCj4gIHsNCj4gICAgICAgICBMSUJCUEZfT1BU
UyhicGZfdGVzdF9ydW5fb3B0cywgdG9wdHMpOw0KPiBAQCAtMjc1LDYgKzI5NSwyMyBAQCB2b2lk
IHRlc3RfZG1hYnVmX2l0ZXIodm9pZCkNCj4gICAgICAgICAgICAgICAgIHN1YnRlc3RfZG1hYnVm
X2l0ZXJfY2hlY2tfbm9faW5maW5pdGVfcmVhZHMoc2tlbCk7DQo+ICAgICAgICAgaWYgKHRlc3Rf
X3N0YXJ0X3N1YnRlc3QoImRlZmF1bHRfaXRlciIpKQ0KPiAgICAgICAgICAgICAgICAgc3VidGVz
dF9kbWFidWZfaXRlcl9jaGVja19kZWZhdWx0X2l0ZXIoc2tlbCk7DQo+ICsgICAgICAgaWYgKHRl
c3RfX3N0YXJ0X3N1YnRlc3QoImxvdHNfb2ZfYnVmZmVycyIpKSB7DQo+ICsgICAgICAgICAgICAg
ICBzaXplX3QgTlVNX0JVRlMgPSAxMDA7DQo+ICsgICAgICAgICAgICAgICBpbnQgYnVmZmVyc1tO
VU1fQlVGU107DQo+ICsgICAgICAgICAgICAgICBpbnQgaTsNCj4gKw0KPiArICAgICAgICAgICAg
ICAgZm9yIChpID0gMDsgaSA8IE5VTV9CVUZTOyArK2kpIHsNCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgYnVmZmVyc1tpXSA9IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoZ2V0cGFnZXNpemUoKSk7
DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICghQVNTRVJUX09LX0ZEKGJ1ZmZlcnNbaV0s
ICJkbWFidWZfZmQiKSkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGNs
ZWFudXBfYnVmczsNCj4gKyAgICAgICAgICAgICAgIH0NCj4gKw0KPiArICAgICAgICAgICAgICAg
c3VidGVzdF9kbWFidWZfaXRlcl9jaGVja19sb3RzX29mX2J1ZmZlcnMoc2tlbCk7DQo+ICsNCj4g
K2NsZWFudXBfYnVmczoNCj4gKyAgICAgICAgICAgICAgIGZvciAoLS1pOyBpID49IDA7IC0taSkN
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvc2UoYnVmZmVyc1tpXSk7DQo+ICsgICAgICAg
fQ0KPiAgICAgICAgIGlmICh0ZXN0X19zdGFydF9zdWJ0ZXN0KCJvcGVuX2NvZGVkIikpDQo+ICAg
ICAgICAgICAgICAgICBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX29wZW5fY29kZWQoc2tlbCwg
bWFwX2ZkKTsNCj4NCj4gLS0NCj4gMi41Mi4wLjE3Ny5nOWY4Mjk1ODdhZi1nb29nDQo+DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
