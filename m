Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A948FC7B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jun 2024 11:25:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F95040D4A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jun 2024 09:25:34 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 03260402C5
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jun 2024 09:25:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=PV4fo5AB;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.48 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a68b334eb92so178043266b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Jun 2024 02:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717579523; x=1718184323; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoJWhO/kN/nIDMel5oucInBCEkvezehjU4YBYZFp3Zg=;
        b=PV4fo5ABWCNfMRCxjQ8bYTA82kBDXnbCDdb5OdjlOWpCOdqLRX2BFLaYt5ONGalMCA
         ZwmnEy6HIgGdYqONLeVziYq1mQIF29b2RHMldYxgyApahvqXSHAlxtM8pc/eeSRi984S
         jfHGfZVfy/S6qLtomuanQJ/xfOwB5rHpi8fE6TIQ0LtU4yJ/IyCfVqehk4Qhb84VANTI
         3LsC4ZD1dqg8LCEBx48BJ44/FUBGc++Q3i/caMOyZPhzbmQIFchKnbQ1rVgy0C56KdoR
         yeYYhRv4pSH2PxQt1AMYPb8l22fOREauDMXz7eOLynqfOLQYtmcrT6oA8/ektw0+vSQU
         TJjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717579523; x=1718184323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoJWhO/kN/nIDMel5oucInBCEkvezehjU4YBYZFp3Zg=;
        b=VYb/w/2u4rQ2X+y44NRQnzy9hfahOxESbdgCdwS68GAv9l9k1ID+HUc7JFO7a3FMCd
         0GeREUWNlkGPrGONZ/55zLOSl7NPi9SzqcwKnKnJWVOgFbWgWFVlhGkTL04z34Xar4Jp
         gIjsuwzzRAxFKwwdoG5pfoCyIk8tFTqFNqc3vB8LFFlzv5SKunvBWH7mpFkUgYEznYZk
         PcDjFdtpDeiJh+TeYrMQRqsnaGErUISqpBLu/hbW0Wc5mPfAghxl4icWRPIopYTxX0hp
         /jEuoXFGfx5xIHttpZITiYkf3z5GxE1TCmDaMHBYLqpT5BXqandvaRSmJ6Te2R4i3Qla
         W85A==
X-Gm-Message-State: AOJu0Yxa7oeSXysyqHMxLI3jck1D9QZoMtEh6ywOI1b+/5u7Pwo1QjDI
	rWEYbqU26ORzi3gAvhMP3QiHLMqUuuBXE0VyyBtAqr5jriWe0BlJJMOwmlwD8h+FigeUvFdniIT
	vw2bqqS8Ypaz/qd8Ve+71SDI2K/b9sVmEvBknpNzY
X-Google-Smtp-Source: AGHT+IFiP2ByR690BX/p3xTWlgJRgSVR/t1BSJlG5eKWmT1URJ9DvEySnKdhmO6+OqTKFLDZLb8znMZmfpCG8k6SisY=
X-Received: by 2002:a50:ab56:0:b0:57a:9159:df05 with SMTP id
 4fb4d7f45d1cf-57a9159df5fmr1279266a12.36.1717579522861; Wed, 05 Jun 2024
 02:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240605012605.5341-1-21cnbao@gmail.com>
In-Reply-To: <20240605012605.5341-1-21cnbao@gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 5 Jun 2024 14:55:11 +0530
Message-ID: <CAO_48GFq0Cd6rkWidN-=irT4kW9pEOqu_YxY9vd2nRRKcEy-tw@mail.gmail.com>
To: Barry Song <21cnbao@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 03260402C5
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: HOLTOZVS2SG5CVI7DKITITAIHG37JVKX
X-Message-ID-Hash: HOLTOZVS2SG5CVI7DKITITAIHG37JVKX
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, linux-kernel@vger.kernel.org, tjmercier@google.com, v-songbaohua@oppo.com, hailong.liu@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: align fd_flags and heap_flags with dma_heap_allocation_data
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HOLTOZVS2SG5CVI7DKITITAIHG37JVKX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQmFycnksDQoNCg0KT24gV2VkLCA1IEp1biAyMDI0IGF0IDA2OjU2LCBCYXJyeSBTb25n
IDwyMWNuYmFvQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IEZyb206IEJhcnJ5IFNvbmcgPHYtc29u
Z2Jhb2h1YUBvcHBvLmNvbT4NCj4NCj4gZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhIGRlZmluZXMg
dGhlIFVBUEkgYXMgZm9sbG93czoNCj4NCj4gIHN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2Rh
dGEgew0KPiAgICAgICAgIF9fdTY0IGxlbjsNCj4gICAgICAgICBfX3UzMiBmZDsNCj4gICAgICAg
ICBfX3UzMiBmZF9mbGFnczsNCj4gICAgICAgICBfX3U2NCBoZWFwX2ZsYWdzOw0KPiAgfTsNCj4N
Cj4gSG93ZXZlciwgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKCkgY2FzdHMgYm90aCBmZF9mbGFncyBh
bmQgaGVhcF9mbGFncw0KPiBpbnRvIHVuc2lnbmVkIGludC4gV2UncmUgaW5jb25zaXN0ZW50IHdp
dGggdHlwZXMgaW4gdGhlIG5vbiBVQVBJDQo+IGFyZ3VtZW50cy4gVGhpcyBwYXRjaCBmaXhlcyBp
dC4NCg0KVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoOyBJJ3ZlIHB1c2hlZCBpdCB0byBkcm0tbWlz
Yy1uZXh0Lg0KDQpCZXN0LA0KU3VtaXQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEJhcnJ5IFNvbmcg
PHYtc29uZ2Jhb2h1YUBvcHBvLmNvbT4NCj4gQWNrZWQtYnk6IEpvaG4gU3R1bHR6IDxqc3R1bHR6
QGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgLXYyOg0KPiAgY29sbGVjdCBhY2sgb2YgSm9obiwgdGhh
bmtzIQ0KPiAgcmVmaW5lIGNvbW1pdCBtZXNzYWdlOw0KPg0KPiAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMgICAgfCA0ICsrLS0NCj4gIGluY2x1ZGUvdWFwaS9saW51eC9kbWEtaGVhcC5oIHwg
MiArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
DQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+IGluZGV4IDg0YWU3MDhmYWZlNy4uMjI5OGNhNWUxMTJlIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiArKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWhlYXAuYw0KPiBAQCAtNTAsOCArNTAsOCBAQCBzdGF0aWMgc3RydWN0IGNs
YXNzICpkbWFfaGVhcF9jbGFzczsNCj4gIHN0YXRpYyBERUZJTkVfWEFSUkFZX0FMTE9DKGRtYV9o
ZWFwX21pbm9ycyk7DQo+DQo+ICBzdGF0aWMgaW50IGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhzdHJ1
Y3QgZG1hX2hlYXAgKmhlYXAsIHNpemVfdCBsZW4sDQo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHVuc2lnbmVkIGludCBmZF9mbGFncywNCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgaW50IGhlYXBfZmxhZ3MpDQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHUzMiBmZF9mbGFncywNCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdTY0IGhlYXBfZmxhZ3MpDQo+ICB7DQo+ICAgICAgICAgc3RydWN0IGRtYV9idWYg
KmRtYWJ1ZjsNCj4gICAgICAgICBpbnQgZmQ7DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkv
bGludXgvZG1hLWhlYXAuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtaGVhcC5oDQo+IGluZGV4
IDZmODRmYTA4ZTA3NC4uYTRjZjcxNmE0OWZhIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL3VhcGkv
bGludXgvZG1hLWhlYXAuaA0KPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWhlYXAuaA0K
PiBAQCAtMTksNyArMTksNyBAQA0KPiAgI2RlZmluZSBETUFfSEVBUF9WQUxJRF9GRF9GTEFHUyAo
T19DTE9FWEVDIHwgT19BQ0NNT0RFKQ0KPg0KPiAgLyogQ3VycmVudGx5IG5vIGhlYXAgZmxhZ3Mg
Ki8NCj4gLSNkZWZpbmUgRE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUyAoMCkNCj4gKyNkZWZpbmUg
RE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUyAoMFVMTCkNCj4NCj4gIC8qKg0KPiAgICogc3RydWN0
IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSAtIG1ldGFkYXRhIHBhc3NlZCBmcm9tIHVzZXJzcGFj
ZSBmb3INCj4gLS0NCj4gMi4zNC4xDQo+DQoNCg0KLS0gDQpUaGFua3MgYW5kIHJlZ2FyZHMsDQoN
ClN1bWl0IFNlbXdhbCAoaGUgLyBoaW0pDQpUZWNoIExlYWQgLSBMQ0csIFZlcnRpY2FsIFRlY2hu
b2xvZ2llcw0KTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
