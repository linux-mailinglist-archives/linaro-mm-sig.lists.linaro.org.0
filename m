Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C287B583F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 19:49:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24C31447F1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 17:49:47 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by lists.linaro.org (Postfix) with ESMTPS id CEAB94159B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Sep 2025 17:49:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=GncB2FWO;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.45 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-74526ca79beso3840473a34.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Sep 2025 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757958577; x=1758563377; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAZioqHrTQ+AevT9cWxUPizrYYw+CkCC2DIwykw40jU=;
        b=GncB2FWOmjvBTRajI4TXczoZeirJE/fRcUx06CGNmdWkMhDD11z78fvCamg1+QBHj/
         XLoBTjvtK7u3UBaMIlYGK+33sVeQPFBNs/IRxKC34mO+4jn0pkRiCBDCJjnRyOhB+VzA
         KynrC1f2WbyP3JBar2mXBTuTzIlZNSIuLD5rq9hqJkYkeyamupBTU2jTDDFaodE1eoec
         KzmOSFiI2MPA01MVozpYJ3x4lzIRlBiOMuB9RGheSo38lzNUFbZj6HgpkdtUI7eJl5l3
         m5aBk9QH1HcSgedF4j8bNYTkBNdeDtG7hxjRIKi+tdd9xMZXpU+KhsgnLZEaT4A2Ku/P
         9QRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757958577; x=1758563377;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jAZioqHrTQ+AevT9cWxUPizrYYw+CkCC2DIwykw40jU=;
        b=K53gg7hoI/Ve/LQIbXwMDFaLJlFSz0/cLkm6ddVRZXI54LiQiSXxPoTMHAqJvAsF/d
         17hwofWbOt+6jBvnoHJYtu++JIjAxu+UIZn6CStLelAdBsVgTNiIOt6Kse9ZHfIDFSKM
         kOKLUgOcLCuTzYMaFeAvBoK8dEavlT/Z4xks/OAtUaVGZniRxfU7gCqDNgSegphHIkqB
         WzOLz8XIIK+jd8Iklm3NZJ5b+JzgM+mtSqICRIBocEleaIIEVhQBDjjJ1KKxq/Pyd5mY
         2GX12PmCgBBvSW8RMfyaUVKuBqMunOUXjRUAbEbuzIpCeODD17f/1InQX/bKPxgxJ25A
         vOtw==
X-Forwarded-Encrypted: i=1; AJvYcCUPuznMzb+poIlV1ok7/Lqqo2qC0Sn6bMqnIhfaeiftw7yrPcJW13b4S6p7f0S9iJd43RW1MwnvXJs5YKR3@lists.linaro.org
X-Gm-Message-State: AOJu0Yw4AHdwi7xec1Hm0ttX2PBDse0Y3+HdX/o0X2qhvrQnhncj+GhO
	NgVmdcF5GXC3lp7LMM7KigneqNEe0RgCE3nlzoM75it5F/iLAOR8PijzivrIfNL5qypeWtoQ+ga
	7MH4ER7oxHprwRnuU+XomS0of3e+22aeDwftb9UxDoxuT
X-Gm-Gg: ASbGncsyAz+L0CUAKXNpmZLlps6Ie3jhdSubJ8wap4B0udcASMRjR1zCNxbDDbmGeGb
	BfPTMmNFz02Q9HJAHPhZZcZBHsegsE3AfaUFOuIdIYmHWPT+OnknBxW2vzCzSXo12H1cDPTEzcH
	ho9wO/H4EftUO5IDuhHX11C4qYZt4JZEYOWMgZLb/9NwQUnkXPm9X3Lm9flNNSo8ynVWdCVPOvv
	Yhhw3JQ
X-Google-Smtp-Source: AGHT+IFH2g34vEwZJetBbwvZ3SomF8yWsdtaRubWzROFmfV7fPJWquu4ln8JWGnCxhfWDa7z7TN6AkCfw2+pHb5lOKU=
X-Received: by 2002:a05:6830:6ac2:b0:745:a1d8:9deb with SMTP id
 46e09a7af769-753529994cemr6368252a34.1.1757958577063; Mon, 15 Sep 2025
 10:49:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-0-17f07a942b8d@oss.qualcomm.com>
 <CAHUa44Fow6BhkdTki=rt2psOC=dq99cRgwXsVagmQU7fttXyCw@mail.gmail.com> <mir6lhkj456ra3i6w7def4rrtzw663f66l66cz4s3gxxvueeqk@ils2hjklbp4y>
In-Reply-To: <mir6lhkj456ra3i6w7def4rrtzw663f66l66cz4s3gxxvueeqk@ils2hjklbp4y>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Mon, 15 Sep 2025 19:49:25 +0200
X-Gm-Features: AS18NWAR-VBm4g9R0EH1G3hbl6PkG8dirAOCNZkRJpCTr8DYOgGvR9V6YWQJ574
Message-ID: <CAHUa44Hb1NMCmqbquuQ=f=2kxPL5ik_2m_EiwvoRSew3niXBfg@mail.gmail.com>
To: Bjorn Andersson <andersson@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CEAB94159B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.45:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,mail.gmail.com:mid,qualcomm.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.210.45:from];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: DPWCUFBV5RZOKDWIHCAUSFAKGQPH23UK
X-Message-ID-Hash: DPWCUFBV5RZOKDWIHCAUSFAKGQPH23UK
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>, Sumit Garg <sumit.garg@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Kuldeep Singh <quic_kuldsing@quicinc.com>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 00/11] Trusted Execution Environment (TEE) driver for Qualcomm TEE (QTEE)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DPWCUFBV5RZOKDWIHCAUSFAKGQPH23UK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIE1vbiwgU2VwIDE1LCAyMDI1IGF0IDQ6MDXigK9QTSBCam9ybiBBbmRlcnNzb24g
PGFuZGVyc3NvbkBrZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gT24gRnJpLCBTZXAgMTIsIDIwMjUg
YXQgMTA6MjE6NTVBTSArMDIwMCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gSGksDQo+ID4N
Cj4gPiBPbiBGcmksIFNlcCAxMiwgMjAyNSBhdCA2OjA34oCvQU0gQW1pcnJlemEgWmFycmFiaQ0K
PiA+IDxhbWlycmV6YS56YXJyYWJpQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOg0KPiA+ID4NCj4g
PiA+IFRoaXMgcGF0Y2ggc2VyaWVzIGludHJvZHVjZXMgYSBUcnVzdGVkIEV4ZWN1dGlvbiBFbnZp
cm9ubWVudCAoVEVFKQ0KPiA+ID4gZHJpdmVyIGZvciBRdWFsY29tbSBURUUgKFFURUUpLiBRVEVF
IGVuYWJsZXMgVHJ1c3RlZCBBcHBsaWNhdGlvbnMgKFRBcykNCj4gPiA+IGFuZCBzZXJ2aWNlcyB0
byBydW4gc2VjdXJlbHkuIEl0IHVzZXMgYW4gb2JqZWN0LWJhc2VkIGludGVyZmFjZSwgd2hlcmUN
Cj4gPiA+IGVhY2ggc2VydmljZSBpcyBhbiBvYmplY3Qgd2l0aCBzZXRzIG9mIG9wZXJhdGlvbnMu
IENsaWVudHMgY2FuIGludm9rZQ0KPiA+ID4gdGhlc2Ugb3BlcmF0aW9ucyBvbiBvYmplY3RzLCB3
aGljaCBjYW4gZ2VuZXJhdGUgcmVzdWx0cywgaW5jbHVkaW5nIG90aGVyDQo+ID4gPiBvYmplY3Rz
LiBGb3IgZXhhbXBsZSwgYW4gb2JqZWN0IGNhbiBsb2FkIGEgVEEgYW5kIHJldHVybiBhbm90aGVy
IG9iamVjdA0KPiA+ID4gdGhhdCByZXByZXNlbnRzIHRoZSBsb2FkZWQgVEEsIGFsbG93aW5nIGFj
Y2VzcyB0byBpdHMgc2VydmljZXMuDQo+ID4gPg0KPiA+IFtzbmlwXQ0KPiA+DQo+ID4gSSdtIE9L
IHdpdGggdGhlIFRFRSBwYXRjaGVzLCBTdW1pdCBhbmQgSSBoYXZlIHJldmlld2VkIHRoZW0uDQo+
ID4NCj4NCj4gSGFwcHkgdG8gaGVhciB0aGF0Lg0KPg0KPiA+IFRoZXJlIHdlcmUgc29tZSBtaW5v
ciBjb25mbGljdHMgd2l0aCBvdGhlciBwYXRjaGVzIEkgaGF2ZSBpbiB0aGUgcGlwZQ0KPiA+IGZv
ciB0aGlzIG1lcmdlIHdpbmRvdywgc28gdGhpcyBwYXRjaHNldCBpcyBvbiB0b3Agb2Ygd2hhdCBJ
IGhhdmUgdG8NCj4gPiBhdm9pZCBtZXJnZSBjb25mbGljdHMuDQo+ID4NCj4gPiBIb3dldmVyLCB0
aGUgZmlybXdhcmUgcGF0Y2hlcyBhcmUgZm9yIGNvZGUgbWFpbnRhaW5lZCBieSBCasO2cm4uDQo+
ID4gQmrDtnJuLCBob3cgd291bGQgeW91IGxpa2UgdG8gZG8gdGhpcz8gQ2FuIEkgdGFrZSB0aGVt
IHZpYSBteSB0cmVlLCBvcg0KPiA+IHdoYXQgZG8geW91IHN1Z2dlc3Q/DQo+ID4NCj4NCj4gUGxl
YXNlIHB1bGw6DQo+DQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3Fjb20vbGludXguZ2l0IDIwMjUwOTExLXFjb20tdGVlLXVzaW5nLXRlZS1zcy13aXRo
b3V0LW1lbS1vYmotdjEyLTItMTdmMDdhOTQyYjhkQG9zcy5xdWFsY29tbS5jb20NCg0KSSd2ZSBw
dWxsZWQgZnJvbSB5b3UncmUgdHJlZS4gSSdtIHBpY2tpbmcgdXAgdGhlIHJlbWFpbmluZyBwYXRj
aGVzDQpmcm9tIHRoaXMgcGF0Y2ggc2V0Lg0KDQpUaGFua3MsDQpKZW5zDQoNCj4NCj4gUmVnYXJk
cywNCj4gQmpvcm4NCj4NCj4gPiBJdCdzIHVyZ2VudCB0byBnZXQgdGhpcyBwYXRjaHNldCBpbnRv
IGxpbnV4LW5leHQgaWYgaXQncyB0byBtYWtlIGl0DQo+ID4gZm9yIHRoZSBjb21pbmcgbWVyZ2Ug
d2luZG93LiBJZGVhbGx5LCBJJ2QgbGlrZSB0byBzZW5kIG15IHB1bGwgcmVxdWVzdA0KPiA+IHRv
IGFybS1zb2MgZHVyaW5nIHRoaXMgd2Vlay4NCj4gPg0KPiA+IENoZWVycywNCj4gPiBKZW5zDQo+
ID4NCj4gPiA+DQo+ID4gPiAtLS0NCj4gPiA+IEFtaXJyZXphIFphcnJhYmkgKDExKToNCj4gPiA+
ICAgICAgIGZpcm13YXJlOiBxY29tOiB0em1lbTogZXhwb3J0IHNobV9icmlkZ2UgY3JlYXRlL2Rl
bGV0ZQ0KPiA+ID4gICAgICAgZmlybXdhcmU6IHFjb206IHNjbTogYWRkIHN1cHBvcnQgZm9yIG9i
amVjdCBpbnZvY2F0aW9uDQo+ID4gPiAgICAgICB0ZWU6IGFsbG93IGEgZHJpdmVyIHRvIGFsbG9j
YXRlIGEgdGVlX2RldmljZSB3aXRob3V0IGEgcG9vbA0KPiA+ID4gICAgICAgdGVlOiBhZGQgY2xv
c2VfY29udGV4dCB0byBURUUgZHJpdmVyIG9wZXJhdGlvbg0KPiA+ID4gICAgICAgdGVlOiBhZGQg
VEVFX0lPQ1RMX1BBUkFNX0FUVFJfVFlQRV9VQlVGDQo+ID4gPiAgICAgICB0ZWU6IGFkZCBURUVf
SU9DVExfUEFSQU1fQVRUUl9UWVBFX09CSlJFRg0KPiA+ID4gICAgICAgdGVlOiBpbmNyZWFzZSBU
RUVfTUFYX0FSR19TSVpFIHRvIDQwOTYNCj4gPiA+ICAgICAgIHRlZTogYWRkIFF1YWxjb21tIFRF
RSBkcml2ZXINCj4gPiA+ICAgICAgIHRlZTogcWNvbTogYWRkIHByaW1vcmRpYWwgb2JqZWN0DQo+
ID4gPiAgICAgICB0ZWU6IHFjb206IGVuYWJsZSBURUVfSU9DX1NITV9BTExPQyBpb2N0bA0KPiA+
ID4gICAgICAgRG9jdW1lbnRhdGlvbjogdGVlOiBBZGQgUXVhbGNvbW0gVEVFIGRyaXZlcg0KPiA+
ID4NCj4gPiA+ICBEb2N1bWVudGF0aW9uL3RlZS9pbmRleC5yc3QgICAgICAgICAgICAgIHwgICAx
ICsNCj4gPiA+ICBEb2N1bWVudGF0aW9uL3RlZS9xdGVlLnJzdCAgICAgICAgICAgICAgIHwgIDk2
ICsrKysNCj4gPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICA3ICsNCj4gPiA+ICBkcml2ZXJzL2Zpcm13YXJlL3Fjb20vcWNvbV9zY20uYyAgICAgICAgIHwg
MTE5ICsrKysNCj4gPiA+ICBkcml2ZXJzL2Zpcm13YXJlL3Fjb20vcWNvbV9zY20uaCAgICAgICAg
IHwgICA3ICsNCj4gPiA+ICBkcml2ZXJzL2Zpcm13YXJlL3Fjb20vcWNvbV90em1lbS5jICAgICAg
IHwgIDYzICsrLQ0KPiA+ID4gIGRyaXZlcnMvdGVlL0tjb25maWcgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKw0KPiA+ID4gIGRyaXZlcnMvdGVlL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvS2NvbmZpZyAgICAgICAgICAg
ICAgfCAgMTIgKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvTWFrZWZpbGUgICAgICAgICAg
ICAgfCAgIDkgKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvYXN5bmMuYyAgICAgICAgICAg
ICAgfCAxODIgKysrKysrDQo+ID4gPiAgZHJpdmVycy90ZWUvcWNvbXRlZS9jYWxsLmMgICAgICAg
ICAgICAgICB8IDgyMCArKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiA+ICBkcml2ZXJz
L3RlZS9xY29tdGVlL2NvcmUuYyAgICAgICAgICAgICAgIHwgOTE1ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gPiA+ICBkcml2ZXJzL3RlZS9xY29tdGVlL21lbV9vYmouYyAgICAg
ICAgICAgIHwgMTY5ICsrKysrKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvcHJpbW9yZGlh
bF9vYmouYyAgICAgfCAxMTMgKysrKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvcWNvbXRl
ZS5oICAgICAgICAgICAgfCAxODUgKysrKysrKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3Fjb210ZWUv
cWNvbXRlZV9tc2cuaCAgICAgICAgfCAzMDQgKysrKysrKysrKw0KPiA+ID4gIGRyaXZlcnMvdGVl
L3Fjb210ZWUvcWNvbXRlZV9vYmplY3QuaCAgICAgfCAzMTYgKysrKysrKysrKysNCj4gPiA+ICBk
cml2ZXJzL3RlZS9xY29tdGVlL3NobS5jICAgICAgICAgICAgICAgIHwgMTUwICsrKysrDQo+ID4g
PiAgZHJpdmVycy90ZWUvcWNvbXRlZS91c2VyX29iai5jICAgICAgICAgICB8IDY5MiArKysrKysr
KysrKysrKysrKysrKysrKw0KPiA+ID4gIGRyaXZlcnMvdGVlL3RlZV9jb3JlLmMgICAgICAgICAg
ICAgICAgICAgfCAxMjcgKysrKy0NCj4gPiA+ICBkcml2ZXJzL3RlZS90ZWVfcHJpdmF0ZS5oICAg
ICAgICAgICAgICAgIHwgICA2IC0NCj4gPiA+ICBpbmNsdWRlL2xpbnV4L2Zpcm13YXJlL3Fjb20v
cWNvbV9zY20uaCAgIHwgICA2ICsNCj4gPiA+ICBpbmNsdWRlL2xpbnV4L2Zpcm13YXJlL3Fjb20v
cWNvbV90em1lbS5oIHwgIDE1ICsNCj4gPiA+ICBpbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmggICAg
ICAgICAgICAgICAgIHwgIDU0ICstDQo+ID4gPiAgaW5jbHVkZS9saW51eC90ZWVfZHJ2LmggICAg
ICAgICAgICAgICAgICB8ICAxMiArDQo+ID4gPiAgaW5jbHVkZS91YXBpL2xpbnV4L3RlZS5oICAg
ICAgICAgICAgICAgICB8ICA1NiArLQ0KPiA+ID4gIDI3IGZpbGVzIGNoYW5nZWQsIDQ0MTAgaW5z
ZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pDQo+ID4gPiAtLS0NCj4gPiA+IGJhc2UtY29tbWl0
OiA4YjhhZWZhNWE1YzdkNGE2NTg4M2U1NjUzY2YxMmY5NGMwYjY4ZGJmDQo+ID4gPiBjaGFuZ2Ut
aWQ6IDIwMjQxMjAyLXFjb20tdGVlLXVzaW5nLXRlZS1zcy13aXRob3V0LW1lbS1vYmotMzYyYzY2
MzQwNTI3DQo+ID4gPg0KPiA+ID4gQmVzdCByZWdhcmRzLA0KPiA+ID4gLS0NCj4gPiA+IEFtaXJy
ZXphIFphcnJhYmkgPGFtaXJyZXphLnphcnJhYmlAb3NzLnF1YWxjb21tLmNvbT4NCj4gPiA+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
