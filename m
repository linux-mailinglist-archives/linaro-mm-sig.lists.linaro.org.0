Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E0EA865A4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 20:41:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C73D046236
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 18:41:28 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by lists.linaro.org (Postfix) with ESMTPS id CECBD43E96
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Apr 2025 18:41:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=q5XarxhD;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.53) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6e8f254b875so21113166d6.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Apr 2025 11:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1744396872; x=1745001672; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l0WkjI1RT93u5XgdiSSA60ZXeKfvXZmRgF+shu9tTxQ=;
        b=q5XarxhD5/6MjNQqiOq1FDP5XxstitZMibwdOfR6o0f3ZMWWij9mxVrjTWta0glYJ1
         wv+uK8hPRVVAK7L5m0FE6R0BLQVJnSveK/7ZnYM+lI5fS2MwrWwfN7lwfSIddty0PP3W
         ano8HkQPXNfwStiVnczgvJCji68K0BQKhPsJX/fe8otKfR+2M0BcCyUrjEuLlI/AsYGk
         E40nLjC7zhS2BpwqgkWkUj5miJfNTXQGRA2zHTZP2f4cfh71hH4dfWwOUSyod11yeSB5
         X/vDdjZWcqdS+ib8NmAuJH5XC07MyQBFzMJgbp6N6VD6bqHsH5MYRHY3WlqbCBDCo7Lq
         OkKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744396872; x=1745001672;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l0WkjI1RT93u5XgdiSSA60ZXeKfvXZmRgF+shu9tTxQ=;
        b=UqenbrYQruuy91EYsUX1yJ7Qj/9pJvBAVvXv5lcVjYVBzU9B5bRVp9FfPpkU2a73N1
         G+wZajdPaK1J1yej3XCIocQXRBk9Y8B9Pg51/XE0YXj9rWmyaFQUWaaNGBCrjFq+Ze7K
         6ZZblSxZYtjLdtyBx8nMn4rjNviOiMT6h/D3dL5tzc1Thl70F0ZxI5Wy02tPmu3/M/2Z
         6Epq0ODhrdOTVZP/IrWjq17x2+ArhH3mh2SlVabd3sIZkpYEk0C11DgiB6GC4Lov8jxR
         gJIa57arOYYDTSX2X2CWUpGA1p0tgK+eDTgH/3JlkfH17Ab7u1TUSU1/yYMMG65xffWC
         b+xA==
X-Forwarded-Encrypted: i=1; AJvYcCU41XMC2gp/aH3l2Gzogi+zRB7SZYC/0G63Zsw6nl+BbF1OjLYh+soE8itLloDwisD7Ww62vYG8Eja0c4Dv@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/vOVkAKbs0NYL2rNE+zawE2OyC8k0xjG+qlV4bL0fmp4mUxJR
	G/Aeqe2sh5wN0cR+bXK4ViHettMXkDVbXozZ9hPZ7DYXBErgcf8QDL8S+2QWG/M=
X-Gm-Gg: ASbGncsF0licL5kppra2Tfw8OC7BLJszzlhvvBM7NV0imtn9+/54ya17+TNvt1kUSSn
	Mvamp83tQ+Zu3Fft8yy/Npk0eNdBqu1V5xBdKdvAABaAdwZN/tF9uBqxEP63xWAOvv3Tkxn7Wee
	IfXWujVbUFVRdUN7xTFWugo10T0fmdUsu41okBYGWyPyfDIk6TmMaOzOBUlX9HtvTTqcWlTDPxa
	89tQzl6FdeevkhxpPamlI+9U8U63zZFJP4IXFHr+2T6aYRsKY1cCKslqfcMX2ksbx4gAzeJlXS8
	6/YX6brLc5gLw8bkvYMu39Eg7oST+E0M/wPcgPbSg/A9Sw==
X-Google-Smtp-Source: AGHT+IEm1bKOCQM0tpYs4mhMv4OIhRqLjtx6rGPCZPT/jI6AVdN/7xOTd3xITbioxVcVFqr64gbv6w==
X-Received: by 2002:ad4:5d63:0:b0:6e8:f4e2:26d9 with SMTP id 6a1803df08f44-6f23f14adb0mr60576306d6.35.1744396872420;
        Fri, 11 Apr 2025 11:41:12 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:e976::5ac? ([2606:6d00:11:e976::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f0de95f862sm40376636d6.15.2025.04.11.11.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 11:41:11 -0700 (PDT)
Message-ID: <100a275a1d5a01f72372666b21b68ad7fc4d5eb9.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal	
 <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 11 Apr 2025 14:41:11 -0400
In-Reply-To: <20250410-uio-dma-v1-3-6468ace2c786@bootlin.com>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
	 <20250410-uio-dma-v1-3-6468ace2c786@bootlin.com>
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: CECBD43E96
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.53:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.219.53:from];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.219.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[2606:6d00:11:e976::5ac:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZCDVZ4WORGYRQHXPZLUUNSIZPSIFTGZU
X-Message-ID-Hash: ZCDVZ4WORGYRQHXPZLUUNSIZPSIFTGZU
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] uio: Add UIO_DMABUF_HEAP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZCDVZ4WORGYRQHXPZLUUNSIZPSIFTGZU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQmFzdGllbiwNCg0KTGUgamV1ZGkgMTAgYXZyaWwgMjAyNSDDoCAxNjo1MyArMDIwMCwgQmFz
dGllbiBDdXJ1dGNoZXQgYSDDqWNyaXTCoDoNCj4gU29tZSBVSU8gdXNlcnMgbmVlZCB0byBhY2Nl
c3MgRE1BIGFkZHJlc3NlcyBmcm9tIHVzZXJzcGFjZSB0byBiZSBhYmxlIHRvDQo+IGNvbmZpZ3Vy
ZSBETUEgZG9uZSBieSB0aGUgVUlPIGRldmljZS4gQ3VycmVudGx5IHRoZXJlIGlzIG5vIHdheSBv
ZiBkb2luZw0KPiB0aGlzLg0KPiANCj4gQWRkIGEgVUlPX0RNQUJVRl9IRUFQIEtjb25maWcgb3B0
aW9uLiBXaGVuIHNlbGVjdGVkLCBhIGRtYS1oZWFwDQo+IGFsbG9jYXRvciBpcyBjcmVhdGVkIGZv
ciBldmVyeSBuZXcgVUlPIGRldmljZS4gVGhpcyBhbGxvY2F0b3Igb25seQ0KPiBpbXBsZW1lbnRz
IDQgYmFzaWMgb3BlcmF0aW9uczogYWxsb2NhdGUsIHJlbGVhc2UsIG1tYXAgYW5kIGdldF9kbWFf
YWRkci4NCj4gVGhlIGJ1ZmZlciBhbGxvY2F0aW9uIGlzIGRvbmUgdGhyb3VnaCBkbWFfYWxsb2Nf
Y29oZXJlbnQoKS4NCg0KVGhpcyBpcyBxdWl0ZSByZWR1bmRhbnQgd2l0aCB0aGUgQ01BIGhlYXAu
IEkgYmVsaWV2ZSBhIGJldHRlciBkZXNpZ24gaXMNCnRvIG1ha2UgVUlPIGRldmljZXMgZG1hYnVm
IGltcG9ydGVycy4gVGhpcyB3aWxsIG1ha2UgeW91ciBVSU8gZG1hYnVmDQppbXBsZW1lbnRhdGlv
biBhIGxvdCBtb3JlIHVzZWZ1bC4NCg0KQXMgZm9yIHRoZSBwaHlzaWNhbCBhZGRyZXNzZXMsIGV2
ZXJ5d2hlcmUgeW91IGN1cnJlbnRseSBwYXNzIGEgcGh5c2ljYWwNCmFkZHJlc3MsIHlvdSBzaG91
bGQgYmUgYWJsZSB0byBhZGQgaW9jdGwgdG8gcGFzcyBhIERNQUJ1ZiBGRCwgb3IgYQ0KaGFuZGxl
IHRvIGFuIFVJTyBzcGVjaWZpYyBvYmplY3QgKHNpbWlsYXIgdG8gYnVmZmVyIG9iamVjdHMgaW4g
RFJNKSBhbmQNCmhpZGUgdGhlc2UuDQoNCnJlZ2FyZHMsDQpOaWNvbGFzDQoNCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEJhc3RpZW4gQ3VydXRjaGV0IDxiYXN0aWVuLmN1cnV0Y2hldEBib290bGluLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy91aW8vS2NvbmZpZ8KgwqDCoMKgwqDCoMKgIHzCoMKgIDkg
KysrKw0KPiDCoGRyaXZlcnMvdWlvL01ha2VmaWxlwqDCoMKgwqDCoMKgIHzCoMKgIDEgKw0KPiDC
oGRyaXZlcnMvdWlvL3Vpby5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDQgKysNCj4gwqBkcml2
ZXJzL3Vpby91aW9faGVhcC5jwqDCoMKgwqAgfCAxMjAgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrDQo+IMKgaW5jbHVkZS9saW51eC91aW9fZHJpdmVyLmggfMKg
wqAgMiArDQo+IMKgNSBmaWxlcyBjaGFuZ2VkLCAxMzYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdWlvL0tjb25maWcgYi9kcml2ZXJzL3Vpby9LY29uZmlnDQo+IGlu
ZGV4IGIwNjBkY2Q3YzYzNTAxOTE3MjZjMDgzMGExYWU3YjlhMzg4Y2E0YmIuLjJmM2IxZTU3ZmNl
YjAxMzU0YjY1Y2M0ZDM5ZjM0MmY2NDVhMjM4ZGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvdWlv
L0tjb25maWcNCj4gKysrIGIvZHJpdmVycy91aW8vS2NvbmZpZw0KPiBAQCAtMTY0LDQgKzE2NCwx
MyBAQCBjb25maWcgVUlPX0RGTA0KPiDCoAnCoMKgwqAgb3BhZS1zZGsvdG9vbHMvbGlib3BhZXVp
by8NCj4gwqANCj4gwqAJwqAgSWYgeW91IGNvbXBpbGUgdGhpcyBhcyBhIG1vZHVsZSwgaXQgd2ls
bCBiZSBjYWxsZWQgdWlvX2RmbC4NCj4gKw0KPiArY29uZmlnIFVJT19ETUFCVUZfSEVBUA0KPiAr
CWJvb2wgIkRNQS1CVUYgVUlPIEhlYXAiDQo+ICsJc2VsZWN0IERNQUJVRl9IRUFQUw0KPiArCWhl
bHANCj4gKwnCoCBDaG9vc2UgdGhpcyBvcHRpb24gdG8gZW5hYmxlIERNQS1CVUYgVUlPIGhlYXAu
IEl0IHdpbGwgY3JlYXRlIGEgbmV3DQo+ICsJwqAgaGVhcCBhbGxvY2F0b3IgdW5kZXIgL2Rldi9k
bWFfaGVhcC8gZm9yIGV2ZXJ5IFVJTyBkZXZpY2UuIFRoaXMNCj4gKwnCoCBhbGxvY2F0b3IgYWxs
b3dzIHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMgdG8gYWxsb2NhdGUgRE1BIGJ1ZmZlcnMgYW5kDQo+
ICsJwqAgYWNjZXNzIHRoZWlyIERNQSBhZGRyZXNzZXMgdGhhbmtzIHRvIHRoZSBETUFfQlVGX0lP
Q1RMX0dFVF9ETUFfSEFORExFDQo+IMKgZW5kaWYNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWlv
L01ha2VmaWxlIGIvZHJpdmVycy91aW8vTWFrZWZpbGUNCj4gaW5kZXggMWM1ZjNiNWE5NWNmNWI2
ODFhODQzYjc0NWEwNDZkN2NlMTIzMjU1ZC4uZjY2OTZkYWEzNjU2N2E0ZTVkMThiMWI4OWJhNjg4
MDU3ZTc1ODQwMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy91aW8vTWFrZWZpbGUNCj4gKysrIGIv
ZHJpdmVycy91aW8vTWFrZWZpbGUNCj4gQEAgLTExLDMgKzExLDQgQEAgb2JqLSQoQ09ORklHX1VJ
T19NRjYyNCnCoMKgwqDCoMKgwqDCoMKgICs9IHVpb19tZjYyNC5vDQo+IMKgb2JqLSQoQ09ORklH
X1VJT19GU0xfRUxCQ19HUENNKQkrPSB1aW9fZnNsX2VsYmNfZ3BjbS5vDQo+IMKgb2JqLSQoQ09O
RklHX1VJT19IVl9HRU5FUklDKQkrPSB1aW9faHZfZ2VuZXJpYy5vDQo+IMKgb2JqLSQoQ09ORklH
X1VJT19ERkwpCSs9IHVpb19kZmwubw0KPiArb2JqLSQoQ09ORklHX1VJT19ETUFCVUZfSEVBUCkg
Kz0gdWlvX2hlYXAubw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91aW8vdWlvLmMgYi9kcml2ZXJz
L3Vpby91aW8uYw0KPiBpbmRleCBkOTNlZDRlODZhMTc0YjViYWQxOTNhNjFhYTUyMmNkODMzZmU3
YmI1Li5mMzE5MzZhODk3ODA1YTI4NDE2NWNjY2ZlZTNkNjZlOTZhY2Q0YjM5IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL3Vpby91aW8uYw0KPiArKysgYi9kcml2ZXJzL3Vpby91aW8uYw0KPiBAQCAt
MTA0Niw3ICsxMDQ2LDExIEBAIGludCBfX3Vpb19yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IG1vZHVs
ZSAqb3duZXIsDQo+IMKgCQl9DQo+IMKgCX0NCj4gwqANCj4gKyNpZiBkZWZpbmVkKENPTkZJR19V
SU9fRE1BQlVGX0hFQVApDQo+ICsJcmV0dXJuIGFkZF91aW9faGVhcChpZGV2KTsNCj4gKyNlbHNl
DQo+IMKgCXJldHVybiAwOw0KPiArI2VuZGlmDQo+IMKgDQo+IMKgZXJyX3JlcXVlc3RfaXJxOg0K
PiDCoAl1aW9fZGV2X2RlbF9hdHRyaWJ1dGVzKGlkZXYpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy91aW8vdWlvX2hlYXAuYyBiL2RyaXZlcnMvdWlvL3Vpb19oZWFwLmMNCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MC4uMmU4MzZiNTAzNDU4ZTI4MGJhYmJhMGUwYWRjNGY2ZDgzNDRlZmM4Mg0KPiAtLS0gL2Rldi9u
dWxsDQo+ICsrKyBiL2RyaXZlcnMvdWlvL3Vpb19oZWFwLmMNCj4gQEAgLTAsMCArMSwxMjAgQEAN
Cj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ICsjaW5jbHVkZSA8bGlu
dXgvZG1hLWJ1Zi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1oZWFwLmg+DQo+ICsjaW5jbHVk
ZSA8bGludXgvdWlvX2RyaXZlci5oPg0KPiArDQo+ICtzdHJ1Y3QgdWlvX2hlYXAgew0KPiArCXN0
cnVjdCBkbWFfaGVhcCAqaGVhcDsNCj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXY7DQo+ICt9Ow0KPiAr
DQo+ICtzdHJ1Y3QgdWlvX2hlYXBfYnVmZmVyIHsNCj4gKwlzdHJ1Y3QgdWlvX2hlYXAgKmhlYXA7
DQo+ICsJZG1hX2FkZHJfdCBkbWFfYWRkcjsNCj4gKwl1bnNpZ25lZCBsb25nIGxlbjsNCj4gKwl2
b2lkICp2YWRkcjsNCj4gK307DQo+ICsNCj4gK3N0YXRpYyBpbnQgdWlvX2hlYXBfbW1hcChzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4gK3sNCj4g
KwlzdHJ1Y3QgdWlvX2hlYXBfYnVmZmVyICpidWZmZXIgPSBkbWFidWYtPnByaXY7DQo+ICsNCj4g
KwlyZXR1cm4gZG1hX21tYXBfY29oZXJlbnQoYnVmZmVyLT5oZWFwLT5kZXYsIHZtYSwgYnVmZmVy
LT52YWRkciwNCj4gKwkJCQkgYnVmZmVyLT5kbWFfYWRkciwgYnVmZmVyLT5sZW4pOw0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgdm9pZCB1aW9faGVhcF9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZikNCj4gK3sNCj4gKwlzdHJ1Y3QgdWlvX2hlYXBfYnVmZmVyICpidWZmZXIgPSBk
bWFidWYtPnByaXY7DQo+ICsNCj4gKwlkbWFfZnJlZV9jb2hlcmVudChidWZmZXItPmhlYXAtPmRl
diwgYnVmZmVyLT5sZW4sIGJ1ZmZlci0+dmFkZHIsDQo+ICsJCQnCoCBidWZmZXItPmRtYV9hZGRy
KTsNCj4gKwlrZnJlZShidWZmZXIpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IHVpb19oZWFw
X2dldF9kbWFfYWRkcihzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCB1NjQgKmFkZHIpDQo+ICt7DQo+
ICsJc3RydWN0IHVpb19oZWFwX2J1ZmZlciAqYnVmZmVyID0gZG1hYnVmLT5wcml2Ow0KPiArDQo+
ICsJKmFkZHIgPSBidWZmZXItPmRtYV9hZGRyOw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIHVpb19oZWFwX2J1Zl9vcHMgPSB7DQo+
ICsJLm1tYXAgPSB1aW9faGVhcF9tbWFwLA0KPiArCS5yZWxlYXNlID0gdWlvX2hlYXBfZG1hX2J1
Zl9yZWxlYXNlLA0KPiArCS5nZXRfZG1hX2FkZHIgPSB1aW9faGVhcF9nZXRfZG1hX2FkZHIsDQo+
ICt9Ow0KPiArDQo+ICtzdGF0aWMgc3RydWN0IGRtYV9idWYgKnVpb19oZWFwX2FsbG9jYXRlKHN0
cnVjdCBkbWFfaGVhcCAqaGVhcCwNCj4gKwkJCQkJIHVuc2lnbmVkIGxvbmcgbGVuLA0KPiArCQkJ
CQkgdTMyIGZkX2ZsYWdzLA0KPiArCQkJCQkgdTY0IGhlYXBfZmxhZ3MpDQo+ICt7DQo+ICsJc3Ry
dWN0IHVpb19oZWFwICp1aW9faGVhcCA9IGRtYV9oZWFwX2dldF9kcnZkYXRhKGhlYXApOw0KPiAr
CURFRklORV9ETUFfQlVGX0VYUE9SVF9JTkZPKGV4cF9pbmZvKTsNCj4gKwlzdHJ1Y3QgdWlvX2hl
YXBfYnVmZmVyICpidWZmZXI7DQo+ICsJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gKw0KPiAr
CWJ1ZmZlciA9IGt6YWxsb2Moc2l6ZW9mKCpidWZmZXIpLCBHRlBfS0VSTkVMKTsNCj4gKwlpZiAo
IWJ1ZmZlcikNCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+ICsNCj4gKwlkbWFfc2V0
X2NvaGVyZW50X21hc2sodWlvX2hlYXAtPmRldiwgRE1BX0JJVF9NQVNLKDMyKSk7DQo+ICsNCj4g
KwlidWZmZXItPmhlYXAgPSB1aW9faGVhcDsNCj4gKwlidWZmZXItPmxlbiA9IGxlbjsNCj4gKwli
dWZmZXItPnZhZGRyID0gZG1hX2FsbG9jX2NvaGVyZW50KHVpb19oZWFwLT5kZXYsIGJ1ZmZlci0+
bGVuLA0KPiArCQkJCQnCoMKgICZidWZmZXItPmRtYV9hZGRyLCBHRlBfS0VSTkVMKTsNCj4gKwlp
ZiAoSVNfRVJSKGJ1ZmZlci0+dmFkZHIpKQ0KPiArCQlnb3RvIGZyZWVfYnVmOw0KPiArDQo+ICsJ
ZXhwX2luZm8uZXhwX25hbWUgPSBkbWFfaGVhcF9nZXRfbmFtZShoZWFwKTsNCj4gKwlleHBfaW5m
by5vcHMgPSAmdWlvX2hlYXBfYnVmX29wczsNCj4gKwlleHBfaW5mby5zaXplID0gYnVmZmVyLT5s
ZW47DQo+ICsJZXhwX2luZm8uZmxhZ3MgPSBmZF9mbGFnczsNCj4gKwlleHBfaW5mby5wcml2ID0g
YnVmZmVyOw0KPiArCWRtYWJ1ZiA9IGRtYV9idWZfZXhwb3J0KCZleHBfaW5mbyk7DQo+ICsJaWYg
KElTX0VSUihkbWFidWYpKQ0KPiArCQlnb3RvIGZyZWVfZG1hOw0KPiArDQo+ICsJcmV0dXJuIGRt
YWJ1ZjsNCj4gKw0KPiArZnJlZV9kbWE6DQo+ICsJZG1hX2ZyZWVfY29oZXJlbnQodWlvX2hlYXAt
PmRldiwgYnVmZmVyLT5sZW4sIGJ1ZmZlci0+dmFkZHIsIGJ1ZmZlci0+ZG1hX2FkZHIpOw0KPiAr
ZnJlZV9idWY6DQo+ICsJa2ZyZWUoYnVmZmVyKTsNCj4gKw0KPiArCXJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9oZWFwX29wcyB1
aW9faGVhcF9vcHMgPSB7DQo+ICsJLmFsbG9jYXRlID0gdWlvX2hlYXBfYWxsb2NhdGUsDQo+ICt9
Ow0KPiArDQo+ICtpbnQgYWRkX3Vpb19oZWFwKHN0cnVjdCB1aW9fZGV2aWNlICp1aW8pDQo+ICt7
DQo+ICsJc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvIGV4cF9pbmZvOw0KPiArCXN0cnVjdCB1
aW9faGVhcCAqdWlvX2hlYXA7DQo+ICsNCj4gKwl1aW9faGVhcCA9IGt6YWxsb2Moc2l6ZW9mKCp1
aW9faGVhcCksIEdGUF9LRVJORUwpOw0KPiArCWlmICghdWlvX2hlYXApDQo+ICsJCXJldHVybiAt
RU5PTUVNOw0KPiArDQo+ICsJdWlvX2hlYXAtPmRldiA9ICZ1aW8tPmRldjsNCj4gKw0KPiArCS8q
IFVzZSBkZXZpY2UgbmFtZSBhcyBoZWFwIG5hbWUgKi8NCj4gKwlleHBfaW5mby5uYW1lID0gdWlv
X2hlYXAtPmRldi0+a29iai5uYW1lOw0KPiArCWV4cF9pbmZvLm9wcyA9ICZ1aW9faGVhcF9vcHM7
DQo+ICsJZXhwX2luZm8ucHJpdiA9IHVpb19oZWFwOw0KPiArDQo+ICsJdWlvX2hlYXAtPmhlYXAg
PSBkbWFfaGVhcF9hZGQoJmV4cF9pbmZvKTsNCj4gKwlpZiAoSVNfRVJSKHVpb19oZWFwLT5oZWFw
KSkgew0KPiArCQlpbnQgcmV0ID0gUFRSX0VSUih1aW9faGVhcC0+aGVhcCk7DQo+ICsNCj4gKwkJ
a2ZyZWUodWlvX2hlYXApOw0KPiArCQlyZXR1cm4gcmV0Ow0KPiArCX0NCj4gKw0KPiArCXJldHVy
biAwOw0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC91aW9fZHJpdmVyLmggYi9p
bmNsdWRlL2xpbnV4L3Vpb19kcml2ZXIuaA0KPiBpbmRleCAxODIzOGRjOGJmZDM1NmEyMDk5NmJh
NmNkODRmMWZmNTA4YmJiODFjLi5mOGI3NzRkMmZhMWM3ZGU0YjZhZjg4MWYxZTUzZGZhOWYyNWIz
ZGJmIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3Vpb19kcml2ZXIuaA0KPiArKysgYi9p
bmNsdWRlL2xpbnV4L3Vpb19kcml2ZXIuaA0KPiBAQCAtMTQzLDYgKzE0Myw4IEBAIGV4dGVybiBp
bnQgX19tdXN0X2NoZWNrDQo+IMKgCQkJCcKgwqAgc3RydWN0IGRldmljZSAqcGFyZW50LA0KPiDC
oAkJCQnCoMKgIHN0cnVjdCB1aW9faW5mbyAqaW5mbyk7DQo+IMKgDQo+ICtleHRlcm4gaW50IGFk
ZF91aW9faGVhcChzdHJ1Y3QgdWlvX2RldmljZSAqdWlvKTsNCj4gKw0KPiDCoC8qIHVzZSBhIGRl
ZmluZSB0byBhdm9pZCBpbmNsdWRlIGNoYWluaW5nIHRvIGdldCBUSElTX01PRFVMRSAqLw0KPiDC
oA0KPiDCoC8qKg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
