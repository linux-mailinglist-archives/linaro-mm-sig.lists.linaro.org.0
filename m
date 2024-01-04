Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB75482496A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jan 2024 21:08:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9996540F25
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jan 2024 20:08:07 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lists.linaro.org (Postfix) with ESMTPS id CDE6C40D53
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jan 2024 20:07:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=lsDziCy2;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.181 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d3ea8d0f9dso30585ad.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jan 2024 12:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1704398865; x=1705003665; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f5ZXdX4bS3ERPeQksYREtFg6egDHCXXKYTYbIsKvCx8=;
        b=lsDziCy2ArH6q6FaxjndLk9DAv8XLDvzoNEbuRyNy9qHznHXhMoNXeBPYuKDMw0hiI
         Mq+ng/qCYrSdBcuYS9oFGNtx4EX+hNnJmpH+LjqXql0iJ0ETKua6x/OTAvdHd7i2o4SW
         Fxy4SVWYK5S4TELHI1+sQ84w9Z9Z6PC437iSXYAlUT1c7ZXPeWbDO4vQ29kiHquGqwnN
         dx5aJOgihCcVJqzjjxbvHz/Sudfhtvp6IydmAuZcz9F8tCUhVaDETdftjYeH+DARhLiy
         WhklnAl9oyxC67XFPvHoDt4Phmlh3TzaxppN5GZ12XCTsyWSXLuv4Y/qLdRSPPVJlKqp
         FLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704398865; x=1705003665;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f5ZXdX4bS3ERPeQksYREtFg6egDHCXXKYTYbIsKvCx8=;
        b=WghQscPAHM8XSb0UUd089K4n+02Qovx2KdWKfXPsA7aPB7mPoLT3SX/ljqxUiwBW/J
         xr5+O5JM7ozjZby5lV7HQj25d2htn1P9H6DDp85NnOR6Fm1vmZooQKkg3hJKF6yXAzqS
         eio12XMXOd396JaiJOX4KYCG3wyK0ZppRMjNjd8hPMKY0mct27zCvQvx8Fynv1wo4CgE
         kLcaqALGmPfwC80lv8sgFinoIPzPH5Od6MiclJTRm58WzaKFinNYUOr/qGPvVgwzwxqF
         eZT09QEdqpM6nFm6ZdV6W688a1HTpkGBlzsYFIavu3IFBrt4cd0hDQ2b/o+teVKjgI9j
         VxSw==
X-Gm-Message-State: AOJu0YzPW8hM38ObM3yjWWojlMs7P0iLyiz3TRtajjYNxkfDCs/OlRon
	GlPaoK+tvjNjKt+z+o9I6nnPZ8+2xExoYl5DxDByWSLWDN4=
X-Google-Smtp-Source: AGHT+IE1vkesK4ZOVeDXSnQesWkwfg2DZNXrNfara5a0m92sCbqwWjRcDNy568hvPKmtKyTR34K9s+lngyphSHVzEeE=
X-Received: by 2002:a17:902:e884:b0:1d4:d462:f5a9 with SMTP id
 w4-20020a170902e88400b001d4d462f5a9mr38645plg.20.1704398864639; Thu, 04 Jan
 2024 12:07:44 -0800 (PST)
MIME-Version: 1.0
References: <20231206081538.17056-1-yunfei.dong@mediatek.com>
 <20231206081538.17056-4-yunfei.dong@mediatek.com> <705ce6b0-e945-404c-8014-38881a01fbca@xs4all.nl>
In-Reply-To: <705ce6b0-e945-404c-8014-38881a01fbca@xs4all.nl>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Thu, 4 Jan 2024 12:07:32 -0800
Message-ID: <CA+ddPcPH+M=rnAzyPgq7rMUV2sAdCJ5xdEAncPUyTfspxswzjQ@mail.gmail.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.181:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,collabora.com,chromium.org,ffwll.ch,linaro.org,arm.com,google.com,amd.com,gmail.com,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,lists.infradead.org];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_TO(0.00)[xs4all.nl];
	URIBL_BLOCKED(0.00)[mediatek.com:email,xs4all.nl:email];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CDE6C40D53
X-Spamd-Bar: --
Message-ID-Hash: BGSR6T2753YRWC5AGCQ6BDKFIOORPBZO
X-Message-ID-Hash: BGSR6T2753YRWC5AGCQ6BDKFIOORPBZO
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yunfei Dong <yunfei.dong@mediatek.com>, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>, Yong Wu <yong.wu@mediatek.com>, Hsin-Yi Wang <hsinyi@chromium.org>, Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Steve Cho <stevecho@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, P
 roject_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3,03/21] v4l2: verify secure dmabufs are used in secure queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BGSR6T2753YRWC5AGCQ6BDKFIOORPBZO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgMTEsIDIwMjMgYXQgMjo1OOKAr0FNIEhhbnMgVmVya3VpbCA8aHZlcmt1aWwt
Y2lzY29AeHM0YWxsLm5sPiB3cm90ZToNCj4NCj4gT24gMDYvMTIvMjAyMyAwOToxNSwgWXVuZmVp
IERvbmcgd3JvdGU6DQo+ID4gRnJvbTogSmVmZnJleSBLYXJkYXR6a2UgPGprYXJkYXR6a2VAZ29v
Z2xlLmNvbT4NCj4gPg0KPiA+IFZlcmZpZXMgaW4gdGhlIGRtYWJ1ZiBpbXBsZW1lbnRhdGlvbnMg
dGhhdCBpZiB0aGUgc2VjdXJlIG1lbW9yeSBmbGFnIGlzDQo+DQo+IFZlcmZpZXMgLT4gVmVyaWZp
ZXMNCg0KVGhhbmtzLiBZdW5mZWksIGNoYW5nZSB0aGF0IHBsZWFzZS4NCj4NCj4gPiBzZXQgZm9y
IGEgcXVldWUgdGhhdCB0aGUgZG1hYnVmIHN1Ym1pdHRlZCB0byB0aGUgcXVldWUgaXMgdW5tYXBw
YWJsZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEplZmZyZXkgS2FyZGF0emtlIDxqa2FyZGF0
emtlQGdvb2dsZS5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogWXVuZmVpIERvbmcgPHl1bmZlaS5k
b25nQG1lZGlhdGVrLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMgfCA2ICsrKysrKw0KPiA+ICBkcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jICAgICB8IDYgKysrKysrDQo+
ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5j
IGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMN
Cj4gPiBpbmRleCAzZDRmZDRlZjUzMTAuLmFkNThlZjhkYzIzMSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRp
Zy5jDQo+ID4gQEAgLTcxMCw2ICs3MTAsMTIgQEAgc3RhdGljIGludCB2YjJfZGNfbWFwX2RtYWJ1
Zih2b2lkICptZW1fcHJpdikNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+
ICAgICAgIH0NCj4gPg0KPiA+ICsgICAgIC8qIHZlcmlmeSB0aGUgZG1hYnVmIGlzIHNlY3VyZSBp
ZiB3ZSBhcmUgaW4gc2VjdXJlIG1vZGUgKi8NCj4gPiArICAgICBpZiAoYnVmLT52Yi0+dmIyX3F1
ZXVlLT5zZWN1cmVfbWVtICYmIHNnX3BhZ2Uoc2d0LT5zZ2wpKSB7DQo+DQo+IFRoaXMgbmVlZHMg
YSBiaXQgbW9yZSBleHBsYW5hdGlvbi4gSSBndWVzcyB0aGF0IGZvciBzZWN1cmUgbWVtb3J5DQo+
IHNnX3BhZ2UgcmV0dXJucyBOVUxMPw0KDQpIb3cgYWJvdXQgaWYgd2UgY2hhbmdlIGl0IHRvOg0K
DQovKiB2ZXJpZnkgdGhlIGRtYWJ1ZiBpcyBzZWN1cmUgaWYgd2UgYXJlIGluIHNlY3VyZSBtb2Rl
LCB0aGlzIGlzIGRvbmUNCmJ5IHZhbGlkYXRpbmcgdGhlcmUgaXMgbm8gcGFnZSBlbnRyeSBmb3Ig
dGhlIGRtYWJ1ZiAqLw0KDQo+DQo+ID4gKyAgICAgICAgICAgICBwcl9lcnIoInNlY3VyZSBxdWV1
ZSByZXF1aXJlcyBzZWN1cmUgZG1hX2J1ZiIpOw0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1F
SU5WQUw7DQo+ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiAgICAgICAvKiBjaGVja2luZyBpZiBkbWFi
dWYgaXMgYmlnIGVub3VnaCB0byBzdG9yZSBjb250aWd1b3VzIGNodW5rICovDQo+ID4gICAgICAg
Y29udGlnX3NpemUgPSB2YjJfZGNfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZ3QpOw0KPiA+ICAgICAg
IGlmIChjb250aWdfc2l6ZSA8IGJ1Zi0+c2l6ZSkgew0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jIGIvZHJpdmVycy9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYw0KPiA+IGluZGV4IDI4ZjNmZGZl
MjNhMi4uNTU0MjhjNzNjMzgwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCj4gPiArKysgYi9kcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jDQo+ID4gQEAgLTU2NCw2ICs1NjQsMTIg
QEAgc3RhdGljIGludCB2YjJfZG1hX3NnX21hcF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQo+ID4g
ICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiAgICAgICB9DQo+ID4NCj4gPiArICAg
ICAvKiB2ZXJpZnkgdGhlIGRtYWJ1ZiBpcyBzZWN1cmUgaWYgd2UgYXJlIGluIHNlY3VyZSBtb2Rl
ICovDQo+ID4gKyAgICAgaWYgKGJ1Zi0+dmItPnZiMl9xdWV1ZS0+c2VjdXJlX21lbSAmJiAhc2df
ZG1hX3NlY3VyZShzZ3QtPnNnbCkpIHsNCj4NCj4gSSBjYW4ndCBmaW5kIHRoZSBzZ19kbWFfc2Vj
dXJlIGZ1bmN0aW9uLiBJIHN1c3BlY3QgdGhpcyBwYXRjaCBzZXJpZXMNCj4gZGVwZW5kcyBvbiBh
bm90aGVyIHNlcmllcz8NCg0KVGhhdCB3YXMgYW4gb3ZlcnNpZ2h0LCBpdCBzaG91bGQgYmUgdGhl
IHNhbWUgYXMgaW4NCnZpZGVvYnVmMi1kbWEtY29udGlnLmMuIFl1bmZlaSwgY2FuIHlvdSBjaGFu
Z2UgdGhpcyB0byBtYXRjaCB3aGF0J3MgaW4NCnZpZGVvYnVmMi1kbWEtY29udGlnLmMgYWZ0ZXIg
dGhlIGNvbW1lbnQgaXMgcmV3b3JkZWQ/DQo+DQo+ID4gKyAgICAgICAgICAgICBwcl9lcnIoInNl
Y3VyZSBxdWV1ZSByZXF1aXJlcyBzZWN1cmUgZG1hX2J1ZiIpOw0KPiA+ICsgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7DQo+ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiAgICAgICBidWYtPmRtYV9z
Z3QgPSBzZ3Q7DQo+ID4gICAgICAgYnVmLT52YWRkciA9IE5VTEw7DQo+ID4NCj4NCj4gUmVnYXJk
cywNCj4NCj4gICAgICAgICBIYW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
