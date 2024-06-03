Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A97A8D886A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2024 20:07:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49A3240B64
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2024 18:07:18 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 4D00240B64
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jun 2024 18:07:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=O45QXW7j;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-57a1b122718so889a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jun 2024 11:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717438024; x=1718042824; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxEtH6ksqOT/HFLTQs72uRkOcc2agItJ6FV9YxsG9ic=;
        b=O45QXW7jzM7HZEXdUaNiJipN0/kkEKvtwjzKLHp3bPBT2+Q0nWHMDa32ZSJtik6NqH
         7jtjOsabadEUuaufXRAbTD6s/sSw1fylIBTYvEd5VF3LWtoY7JrmAfIgiG5t6y8+Of1M
         V+vlkNW1rXvFvgCDrdoteBR2HlH5Xbsi8YMRnndkaF8YtavV19HPzmYX9OACAoN65zzN
         50zjI7zKbZ3trfFoT47IN5Kwp5vtDJY3WSFWJngQPrvSUO0PMJb7v7xXltJfEDc5SBVC
         q/yiSpRQa4o/YRvlOeRE//H2e7mtunOrFLD5ZuBP19WuspFQu7S54+2q3fY8I5O0Qhc1
         vm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717438024; x=1718042824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxEtH6ksqOT/HFLTQs72uRkOcc2agItJ6FV9YxsG9ic=;
        b=HSODtcx18lhnQz3bJ4h0GWK4k4eo39NF797phyzW2M8pirBYhvEQGMtFsftj8/Y0+H
         +GS2hk+mnlZTLEXm6mwUjQMBGCGzxqaYkaDK2w6+TJzTdzWIXsZMXUavXmnDWVN7Zy0b
         9Xmo72K9U7Lz2SX2NSBbHmT7bbUE5CJwANlQ+Cv9KclCtBZMHp5NFX3ssC3IrhrVB0Jq
         eE1kfmo2F2OAk9bx3ULi+Vp10b6mp+PRjIPF9dl8gBZ8h2zlehPAmBHGGhO+HyxZk2kO
         PAnfVCJJQ7tVG8ibGufVr/MGk+M2KXL+pRaHXSqackLkOf0hn703Kdqh3/0eCtVzVZ/G
         zo6A==
X-Forwarded-Encrypted: i=1; AJvYcCVq1EiTx7JKmMRG8tEcgChD6jEfzHBXDfrv9/Z3KhswRuwS2YmbuHJ47t1RACJJOjmrbLX2goeqqojVAIW+HE04z8mRv/R2+GE5GDBhC/8=
X-Gm-Message-State: AOJu0YxztgL56cR7XfY1aBQ514yZxePv74IAE8ZD1iiWJHTON4N3DnKS
	HgYJ17JaG0V1+p/Ru00XwRfIS9OLgjEzb1re9AKSXIEkJ/q7A3HxzSppcQQwz/hLcDjw0wRAC/y
	h2c4+vLhS8H5f4CuJSoqJ+mW+O32R1eV2lHU=
X-Google-Smtp-Source: AGHT+IHh/FTn18V927nX7mLu4AOxZc/5TfIty1nDwy6MfFqeiSDSbjo6v1NtdviT15GPtNUFxHU2jnhiN9DQRoaPf/Q=
X-Received: by 2002:a05:6402:12ca:b0:57a:2276:2a86 with SMTP id
 4fb4d7f45d1cf-57a7dad73dbmr6429a12.4.1717438023960; Mon, 03 Jun 2024 11:07:03
 -0700 (PDT)
MIME-Version: 1.0
References: <20240603114008.16235-1-hailong.liu@oppo.com> <CANDhNCq50zPB+TS+_Oo0HY0aUuBAdik2KrC8eJRTygbis293sw@mail.gmail.com>
 <20240603172148.gb7txpg2ya43jyxn@oppo.com>
In-Reply-To: <20240603172148.gb7txpg2ya43jyxn@oppo.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 3 Jun 2024 11:06:51 -0700
Message-ID: <CANDhNCrwgce7G5_-4tNfgTHcdL12zt3JKBg=o3bHrzMmfFMctg@mail.gmail.com>
To: Hailong Liu <hailong.liu@oppo.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4D00240B64
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,amd.com,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: YOKY7KBJNRZOAZHMJZ2DRCSKR6THFXQ6
X-Message-ID-Hash: YOKY7KBJNRZOAZHMJZ2DRCSKR6THFXQ6
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 21cnbao@gmail.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v1] dma-buf: heaps: move the verification of heap_flags to the corresponding heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOKY7KBJNRZOAZHMJZ2DRCSKR6THFXQ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKdW4gMywgMjAyNCBhdCAxMDoyMeKAr0FNIEhhaWxvbmcgTGl1IDxoYWlsb25nLmxp
dUBvcHBvLmNvbT4gd3JvdGU6DQo+IE9uIE1vbiwgMDMuIEp1biAwOTowMSwgSm9obiBTdHVsdHog
d3JvdGU6DQo+ID4gT24gTW9uLCBKdW4gMywgMjAyNCBhdCA0OjQw4oCvQU0gPGhhaWxvbmcubGl1
QG9wcG8uY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBGcm9tOiAiSGFpbG9uZy5MaXUiIDxoYWls
b25nLmxpdUBvcHBvLmNvbT4NCj4gPiA+DQo+ID4gPiBUaGlzIGhlbHAgbW9kdWxlIHVzZSBoZWFw
X2ZsYWdzIHRvIGRldGVybWluZSB0aGUgdHlwZSBvZiBkbWEtYnVmLA0KPiA+ID4gc28gdGhhdCBz
b21lIG1lY2hhbmlzbXMgY2FuIGJlIHVzZWQgdG8gc3BlZWQgdXAgYWxsb2NhdGlvbiwgc3VjaCBh
cw0KPiA+ID4gbWVtb3J5X3Bvb2wsIHRvIG9wdGltaXplIHRoZSBhbGxvY2F0aW9uIHRpbWUgb2Yg
ZG1hLWJ1Zi4NCj4gPg0KPiA+IFRoaXMgZmVlbHMgbGlrZSBpdCdzIHRyeWluZyB0byBpbnRyb2R1
Y2UgaGVhcCBzcGVjaWZpYyBmbGFncywgYnV0DQo+ID4gZG9lc24ndCBpbnRyb2R1Y2UgYW55IGRl
dGFpbHMgYWJvdXQgd2hhdCB0aG9zZSBmbGFncyBtaWdodCBiZT8NCj4gPg0KPiA+IFRoaXMgc2Vl
bXMgbGlrZSBpdCB3b3VsZCByZS1hbGxvdyB0aGUgb2xkIG9wYXF1ZSB2ZW5kb3Igc3BlY2lmaWMg
aGVhcA0KPiA+IGZsYWdzIHRoYXQgd2Ugc2F3IGluIHRoZSBJT04gZGF5cywgd2hpY2ggd2FzIHBy
b2JsZW1hdGljIGFzIGRpZmZlcmVudA0KPiA+IHVzZXJzcGFjZXMgd291bGQgdXNlIHRoZSBzYW1l
IGludGVyZmFjZSB3aXRoIHBvdGVudGlhbGx5IGNvbGxpZGluZw0KPiA+IGhlYXAgZmxhZ3Mgd2l0
aCBkaWZmZXJlbnQgbWVhbmluZ3MuIFJlc3VsdGluZyBpbiBubyB3YXkgdG8gcHJvcGVybHkNCj4g
PiBtb3ZlIHRvIGFuIHVwc3RyZWFtIHNvbHV0aW9uLg0KPiA+DQo+ID4gV2l0aCB0aGUgZG1hLWhl
YXBzIGludGVyZmFjZSwgd2UncmUgdHJ5aW5nIHRvIG1ha2Ugc3VyZSBpdCBpcyB3ZWxsDQo+ID4g
ZGVmaW5lZC4gT25lIGNhbiByZWdpc3RlciBhIG51bWJlciBvZiBoZWFwcyB3aXRoIGRpZmZlcmVu
dCBiZWhhdmlvcnMsDQo+ID4gYW5kIHRoZSBoZWFwIG5hbWUgaXMgdXNlZCB0byBkaWZmZXJlbnRp
YXRlIHRoZSBiZWhhdmlvci4gQW55IGZsYWdzDQo+ID4gaW50cm9kdWNlZCB3aWxsIG5lZWQgdG8g
YmUgd2VsbCBkZWZpbmVkIGFuZCBiZWhhdmlvcmFsbHkgY29uc2lzdGVudA0KPiA+IGJldHdlZW4g
aGVhcHMuIFRoYXQgd2F5IHdoZW4gYW4gdXBzdHJlYW0gc29sdXRpb24gbGFuZHMsIGlmIG5lY2Vz
c2FyeQ0KPiA+IHdlIGNhbiBwcm92aWRlIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IHZpYSBzeW1s
aW5rcy4NCj4gPg0KPiA+IFNvIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBhIGdvb2QgZGlyZWN0aW9u
IHRvIGdvIGZvciBkbWEtaGVhcHMuDQo+ID4NCj4gPiBJdCB3b3VsZCBiZSBiZXR0ZXIgaWYgeW91
IHdlcmUgYWJsZSB0byBjbGFyaWZ5IHdoYXQgZmxhZyByZXF1aXJlbWVudHMNCj4gPiB5b3UgbmVl
ZCwgc28gd2UgY2FuIGJldHRlciB1bmRlcnN0YW5kIGhvdyB0aGV5IG1pZ2h0IGFwcGx5IHRvIG90
aGVyDQo+ID4gaGVhcHMsIGFuZCBzZWUgaWYgaXQgd2FzIHNvbWV0aGluZyB3ZSB3b3VsZCB3YW50
IHRvIGRlZmluZSBhcyBhIGZsYWcNCj4gPiAoc2VlIHRoZSBkaXNjdXNzaW9uIGhlcmUgZm9yIHNp
bWlsYXIgdGhvdWdodHM6DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQU5EaE5D
b09Ld3Rwc3RGRTJWRGNVdnpkWFVXa1otWngrZno2eHJkUFdUeWNpVlhNWFFAbWFpbC5nbWFpbC5j
b20vDQo+ID4gKQ0KPiA+DQo+ID4gQnV0IGlmIHlvdXIgdmVuZG9yIGhlYXAgcmVhbGx5IG5lZWRz
IHNvbWUgc29ydCBvZiBmbGFncyBhcmd1bWVudCB0aGF0DQo+ID4geW91IGNhbid0IGdlbmVyYWxp
emUsIHlvdSBjYW4gYWx3YXlzIGltcGxlbWVudCB5b3VyIG93biBkbWFidWYNCj4gPiBleHBvcnRl
ciBkcml2ZXIgd2l0aCB3aGF0ZXZlciBpb2N0bCBpbnRlcmZhY2UgeW91J2QgcHJlZmVyLg0KPg0K
PiBUaGFua3MgZm9yIHlvdXIgcmVwbHkuIExldOKAmXMgY29udGludWUgb3VyIGRpc2N1c3Npb24g
aGVyZSBpbnN0ZWFkDQo+IG9mIG9uIGFuZHJvaWQtcmV2aWV3LiBXZSBhaW0gdG8gZW5oYW5jZSBt
ZW1vcnkgYWxsb2NhdGlvbiBvbiBlYWNoDQo+IGFsbCBoZWFwcy4gWW91ciBwb2ludGVyIHRvd2Fy
ZHMgaGVhcF9mbGFncyB1c2VkIGluIC9kZXYvaW9uIGZvciBoZWFwDQo+IGlkZW50aWZpY2F0aW9u
IHdhcyBoZWxwZnVsLg0KPg0KPiBXZSBub3cgYWltIHRvIGltcHJvdmUgcHJpb3JpdHkgZG1hLWJ1
ZiBhbGxvY2F0aW9uLiBDb25zaWRlciBhbmRyb2lkDQo+IGFuaW1hdGlvbnMgc2NlbmU6DQo+DQo+
IHdoZW4gZGV2aWNlIGlzIGluIGxvdyBtZW1vcnksIEFsbG9jYXRpbmcgZG1hLWJ1ZiBhcyBhbmlt
YXRpb24NCj4gYnVmZmVycyBlbnRlciBkaXJlY3RfcmVjbGFpbWF0aW9uLCBsb25nZXIgYWxsb2Nh
dGlvbiB0aW1lIHJlc3VsdCBpbiBhDQo+IGxhZ2d5IFVJLiBCdXQgaWYgd2Uga25vdyB0aGUgdXNh
Z2Ugb2YgdGhlIGRtYS1idWYsIHdlIGNhbiB1c2Ugc29tZQ0KPiBtZWNoYW5pc21zIHRvIGJvb3N0
LCBlLmcuIGFuaW1hdGlvbi1tZW1vcnktcG9vbC4NCg0KQ2FuIHlvdSBnZW5lcmFsaXplIHRoaXMg
YSBiaXQgZnVydGhlcj8gV2hlbiB3b3VsZCB1c2VybGFuZCBrbm93IHRvIHVzZQ0KdGhpcyBuZXcg
ZmxhZz8NCklmIGl0IGlzIGF3YXJlLCB3b3VsZCBpdCBtYWtlIHNlbnNlIHRvIGp1c3QgdXNlIGEg
c2VwYXJhdGUgaGVhcCBuYW1lIGluc3RlYWQ/DQoNCihBbHNvOiBUaGVzZSBvdGhlciBtZWNoYW5p
c21zIHlvdSBtZW50aW9uIHNob3VsZCBwcm9iYWJseSBhbHNvIGJlDQpzdWJtaXR0ZWQgdXBzdHJl
YW0sIGhvd2V2ZXIgZm9yIHVwc3RyZWFtIHRoZXJlJ3MgYWxzbyB0aGUgcmVxdWlyZW1lbnQNCnRo
YXQgd2UgaGF2ZSBvcGVuIHVzZXJzIGFuZCBhcmUgbm90IGp1c3QgZW5hYmxpbmcgcHJvcHJpZXRh
cnkgYmxvYg0KdXNlcnNwYWNlLCB3aGljaCBtYWtlcyBhbnkgY2hhbmdlcyB0byBkbWEtYnVmIGhl
YXBzIGZvciBvdXQgb2YgdHJlZQ0KY29kZSBxdWl0ZSBkaWZmaWN1bHQpDQoNCj4gSG93ZXZlciwg
ZG1hLWJ1ZiB1c2FnZSBpZGVudGlmaWNhdGlvbiBiZWNvbWVzIGEgY2hhbGxlbmdlLiBBIHBvdGVu
dGlhbA0KPiBzb2x1dGlvbiBjb3VsZCBiZSBoZWFwX2ZsYWdzLiB0aGUgdXNlIG9mIGhlYXBfZmxh
Z3Mgc2VlbXMgdWdseSBhbmQNCj4gY29udHJhcnkgdG8gdGhlIGludGVuZGVkIGRlc2lnbiBhcyB5
b3Ugc2FpZCwgSG93IGFib3VsdCBleHRlbmRpbmcNCj4gZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRh
IGFzIGZvbGxvd3M/DQo+DQo+IHN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEgew0KPiAg
ICAgICAgIF9fdTY0IGxlbjsNCj4gICAgICAgICBfX3UzMiBmZDsNCj4gICAgICAgICBfX3UzMiBm
ZF9mbGFnczsNCj4gICAgICAgICBfX3U2NCBoZWFwX2ZsYWdzOw0KPiAgICAgICAgIF9fdTY0IGJ1
Zl9mbGFnczogLy8gYnVmIHVzYWdlDQo+IH07DQoNClRoaXMgd291bGQgYWZmZWN0IHRoZSBBQkkg
KGZvcmNpbmcgYSBuZXcgaW9jdGwgbnVtYmVyKS4gIEFuZCBpdCdzDQp1bmNsZWFyIHdoYXQgZmxh
Z3MgeW91IGVudmlzaW9uIGFzIGJ1ZmZlciBzcGVjaWZpYyAocmF0aGVyIHRoYW4gaGVhcA0Kc3Bl
Y2lmaWMgYXMgdGhpcyBwYXRjaCBzdWdnZXN0ZWQpLg0KDQpJIHRoaW5rIHdlIG5lZWQgbW9yZSBk
ZXRhaWxzIGFib3V0IHRoZSBzcGVjaWZpYyBwcm9ibGVtIHlvdSdyZSBzZWVpbmcNCmFuZCB0cnlp
bmcgdG8gcmVzb2x2ZS4NCg0KdGhhbmtzDQotam9obg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
