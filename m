Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 06028A86591
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 20:34:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A96C46235
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 18:34:54 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by lists.linaro.org (Postfix) with ESMTPS id D6F20460F0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Apr 2025 18:34:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=3A7M29eW;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.173) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7be49f6b331so264193085a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Apr 2025 11:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1744396478; x=1745001278; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N0AWpw5PkEqx4rxzE4AWKI4Octup9SsapRwIoW5iY7A=;
        b=3A7M29eWyd1CCORyMNkcYRBra0f2FBUgB0pN+ykJOUBFyQ3pRpQK1m6yynjRvoym1d
         s6fLO9H1gJEUF9BNQFidiJCahEk5XRNuHYHw0zNFE/Qm0JeJl9X5CQHLVtSF/HoqQTcq
         43wuH5DgLo0CrmZiJzQC60hmJ+FrKPrmp0BKfFx/1WWOCh5SBbTmOwdNeyu/uv3sE4hS
         J+NI1AKrF3M/uKnPQTMyDX14ULi8BIVetVfMekjwRXGbXrn2PlaVoidzTXMHi/AFHKJK
         mC+ls6EkLx0zaDCB9qhf+ExZ9TH7vGiFzzBznu5sC3hx1WuuCUeuxoHoEZeUm2FCIHhi
         RDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744396478; x=1745001278;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N0AWpw5PkEqx4rxzE4AWKI4Octup9SsapRwIoW5iY7A=;
        b=rXH3SmFKkHiYBO4OvdPqWvK/9uYMKdhif62UB8NYccZOscaUcNCUZEav9p4K29PbUS
         748TsH7SIbuzQcoprYurA4g9h/77NgqRrTpkOPvDLpYK/USuMd0y6BDpo6oUhjQUSZZr
         xy1HawHFk6NSen2ECE6TAP2Y5EbNPS0CiRnYjjoLiiQdIFYxXJoFluC14INYd651DEMO
         LdbB20VX7zHPPWL/nR6AILRB/YX95a5utrvkEh2sXDb1q3kElYjeij1+c7a98Kn7uLi2
         YS4/YnbpTTilgTdNSisG1vn24KVsB7omt58GEtueZt7NhxuVGgZE7kI/O1TmJFd+0jzV
         fcwg==
X-Forwarded-Encrypted: i=1; AJvYcCUenMIJwCoZb7qWSyZ9MwryOUy8Eza3FSqGbMl81VcWlj1h6R/PF/ETCKNWdT3huudkAVnCD/qY+NF+o2g+@lists.linaro.org
X-Gm-Message-State: AOJu0YxG0SXpGWImmc4f4emn+qgaM+/Lc/HScOSvViTMUblaBbLSDjig
	uE4j8lvZP9by52H4J64BIm6HBMl9K6PG+qtOKdHEEcZRWHl76a5RcAIzc9yA114=
X-Gm-Gg: ASbGncvPHTtb3+qV5PsV+EL6zhtxClNu+KxNKtYQPxDnv/j+VdBZNIznPyJoXdP4fEM
	cToJoi4g1Mk0qEEzZm/YSkgzaLtWYofWvm9ot1nqF8YCAgByEy8BzoRi28ocbqrj6H/qJ0qXCJL
	FYDAh7B5dIpXX73UDiG0/eAYyTFESypS0lRQR4eu2sRcOoN0kgHDNYyyLI7Ii1X10A+sOeJQMZL
	tywp16y7cG5jd2o2cHRKW0sUVCH9E+b3WSXblJdJDMEYpwvRCvx/Va7sEWP5Y3oI2P03GDgE4fv
	8MSXav5ZMqgYOQ2/8xYqm+4YOqY87J+EYkpEzgoAiAh1Rw==
X-Google-Smtp-Source: AGHT+IFdO0dOsTvQQgEwYJzn7H07oQLyZuXyp8SlGmVZfE23qvHiI5+GWs8xrNT3RdytwsmGS6VF0w==
X-Received: by 2002:a05:620a:4694:b0:7c7:95ee:77bf with SMTP id af79cd13be357-7c7af0ce3bbmr510403485a.19.1744396478456;
        Fri, 11 Apr 2025 11:34:38 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:e976::5ac? ([2606:6d00:11:e976::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4796edd3e7fsm29533341cf.81.2025.04.11.11.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 11:34:37 -0700 (PDT)
Message-ID: <d19639fb0fbe5c0992a69d7783e6fad91c50561b.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal	
 <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 11 Apr 2025 14:34:37 -0400
In-Reply-To: <20250410-uio-dma-v1-2-6468ace2c786@bootlin.com>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
	 <20250410-uio-dma-v1-2-6468ace2c786@bootlin.com>
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: D6F20460F0
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.222.173:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.173:from];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_NA(0.00)[ndufresne.ca];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[2606:6d00:11:e976::5ac:received,209.85.222.173:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 35LWJ4QJPDHWVTMB22F7CIRQ7JJ3576J
X-Message-ID-Hash: 35LWJ4QJPDHWVTMB22F7CIRQ7JJ3576J
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf: Add DMA_BUF_IOCTL_GET_DMA_ADDR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/35LWJ4QJPDHWVTMB22F7CIRQ7JJ3576J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQmFzdGllbiwNCg0KTGUgamV1ZGkgMTAgYXZyaWwgMjAyNSDDoCAxNjo1MyArMDIwMCwgQmFz
dGllbiBDdXJ1dGNoZXQgYSDDqWNyaXTCoDoNCj4gVGhlcmUgaXMgbm8gd2F5IHRvIHRyYW5zbWl0
IHRoZSBETUEgYWRkcmVzcyBvZiBhIGJ1ZmZlciB0byB1c2Vyc3BhY2UuDQo+IFNvbWUgVUlPIHVz
ZXJzIG5lZWQgdGhpcyB0byBoYW5kbGUgRE1BIGZyb20gdXNlcnNwYWNlLg0KDQpUbyBtZSB0aGlz
IEFQSSBpcyBhZ2FpbnN0IGFsbCBzYWZlIHByYWN0aWNlIHdlJ3ZlIGJlZW4gcHVzaGluZyBmb3J3
YXJkDQphbmQgaGFzIG5vIHBsYWNlIGluIERNQV9CVUYgQVBJLg0KDQpJZiB0aGlzIGlzIGZpbmUg
Zm9yIHRoZSBVSU8gc3Vic3lzdGVtIHRvIHBhc3MgYXJvdW5kIHBoeXNpY2lhbA0KYWRkcmVzc2Vz
LCB0aGVuIG1ha2UgdGhpcyBwYXJ0IG9mIHRoZSBVSU8gZGV2aWNlIGlvY3RsLg0KDQpyZWdhcmRz
LA0KTmljb2xhcw0KDQo+IA0KPiBBZGQgYSBuZXcgZG1hX2J1Zl9vcHMgb3BlcmF0aW9uIHRoYXQg
cmV0dXJucyB0aGUgRE1BIGFkZHJlc3MuDQo+IEFkZCBhIG5ldyBpb2N0bCB0byB0cmFuc21pdCB0
aGlzIERNQSBhZGRyZXNzIHRvIHVzZXJzcGFjZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEJhc3Rp
ZW4gQ3VydXRjaGV0IDxiYXN0aWVuLmN1cnV0Y2hldEBib290bGluLmNvbT4NCj4gLS0tDQo+IMKg
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuY8KgwqDCoCB8IDIxICsrKysrKysrKysrKysrKysrKysr
Kw0KPiDCoGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5owqDCoMKgwqDCoCB8wqAgMSArDQo+IMKgaW5j
bHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaCB8wqAgMSArDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gaW5kZXgNCj4gMzk4NDE4YmQ5NzMx
YWQ3YTNhMWYxMmVhZWE2YTE1NWZhNzdhMjJmZS4uY2JiYjUxODk4MWU1NGU1MGY0NzljM2QxZmNm
DQo+IDZkYTY5NzFmNjM5YzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtNDU0LDYgKzQ1NCwy
NCBAQCBzdGF0aWMgbG9uZyBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUoc3RydWN0DQo+IGRtYV9i
dWYgKmRtYWJ1ZiwNCj4gwqB9DQo+IMKgI2VuZGlmDQo+IMKgDQo+ICtzdGF0aWMgaW50IGRtYV9i
dWZfZ2V0X2RtYV9hZGRyKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHU2NCBfX3VzZXINCj4gKmFy
ZykNCj4gK3sNCj4gKwl1NjQgYWRkcjsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJaWYgKCFkbWFi
dWYtPm9wcy0+Z2V0X2RtYV9hZGRyKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArCXJl
dCA9IGRtYWJ1Zi0+b3BzLT5nZXRfZG1hX2FkZHIoZG1hYnVmLCAmYWRkcik7DQo+ICsJaWYgKHJl
dCkNCj4gKwkJcmV0dXJuIHJldDsNCj4gKw0KPiArCWlmIChjb3B5X3RvX3VzZXIoYXJnLCAmYWRk
ciwgc2l6ZW9mKHU2NCkpKQ0KPiArCQlyZXR1cm4gLUVGQVVMVDsNCj4gKw0KPiArCXJldHVybiAw
Ow0KPiArfQ0KPiArDQo+IMKgc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bChzdHJ1Y3QgZmlsZSAq
ZmlsZSwNCj4gwqAJCQnCoCB1bnNpZ25lZCBpbnQgY21kLCB1bnNpZ25lZCBsb25nIGFyZykNCj4g
wqB7DQo+IEBAIC01MDQsNiArNTIyLDkgQEAgc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bChzdHJ1
Y3QgZmlsZSAqZmlsZSwNCj4gwqAJCXJldHVybiBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUoZG1h
YnVmLCAoY29uc3Qgdm9pZA0KPiBfX3VzZXIgKilhcmcpOw0KPiDCoCNlbmRpZg0KPiDCoA0KPiAr
CWNhc2UgRE1BX0JVRl9JT0NUTF9HRVRfRE1BX0FERFI6DQo+ICsJCXJldHVybiBkbWFfYnVmX2dl
dF9kbWFfYWRkcihkbWFidWYsICh1NjQgX191c2VyDQo+ICopYXJnKTsNCj4gKw0KPiDCoAlkZWZh
dWx0Og0KPiDCoAkJcmV0dXJuIC1FTk9UVFk7DQo+IMKgCX0NCj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gaW5kZXgNCj4g
MzYyMTZkMjhkOGJkYzAxYTljOWM0N2UyN2MzOTI0MTNmN2Y2YzVmYi4uZWQ0YmYxNWQzY2U4MmU3
YTg2MzIzZmZmNDU5DQo+IDY5OWE5YmM4YmFhM2IgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+IEBAIC0yODUs
NiArMjg1LDcgQEAgc3RydWN0IGRtYV9idWZfb3BzIHsNCj4gwqANCj4gwqAJaW50ICgqdm1hcCko
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCj4gwqAJdm9p
ZCAoKnZ1bm1hcCkoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcA0KPiAq
bWFwKTsNCj4gKwlpbnQgKCpnZXRfZG1hX2FkZHIpKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHU2
NCAqYWRkcik7DQo+IMKgfTsNCj4gwqANCj4gwqAvKioNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWFwaS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLQ0KPiBidWYuaA0K
PiBpbmRleA0KPiA1YTZmZGE2NmQ5YWRmMDE0Mzg2MTllN2U2N2ZhNjlmMGZlYzJkODhkLi5mM2Fi
YTQ2OTQyMDQyZGU2YTJlM2E0Y2NhM2UNCj4gYjNmODcxNzVlMjljOSAxMDA2NDQNCj4gLS0tIGEv
aW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaA0KPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgv
ZG1hLWJ1Zi5oDQo+IEBAIC0xNzgsNSArMTc4LDYgQEAgc3RydWN0IGRtYV9idWZfaW1wb3J0X3N5
bmNfZmlsZSB7DQo+IMKgI2RlZmluZSBETUFfQlVGX1NFVF9OQU1FX0IJX0lPVyhETUFfQlVGX0JB
U0UsIDEsIF9fdTY0KQ0KPiDCoCNkZWZpbmUgRE1BX0JVRl9JT0NUTF9FWFBPUlRfU1lOQ19GSUxF
CV9JT1dSKERNQV9CVUZfQkFTRSwgMiwNCj4gc3RydWN0IGRtYV9idWZfZXhwb3J0X3N5bmNfZmls
ZSkNCj4gwqAjZGVmaW5lIERNQV9CVUZfSU9DVExfSU1QT1JUX1NZTkNfRklMRQlfSU9XKERNQV9C
VUZfQkFTRSwgMywgc3RydWN0DQo+IGRtYV9idWZfaW1wb3J0X3N5bmNfZmlsZSkNCj4gKyNkZWZp
bmUgRE1BX0JVRl9JT0NUTF9HRVRfRE1BX0FERFIJX0lPUihETUFfQlVGX0JBU0UsIDQsIF9fdTY0
DQo+ICopDQo+IMKgDQo+IMKgI2VuZGlmDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
