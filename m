Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A87AA92BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 14:10:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFFC44452F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 12:10:38 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lists.linaro.org (Postfix) with ESMTPS id 75764443A1
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 12:10:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Kqpwwc9D;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.46 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7311a8bb581so3418298a34.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 05:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746447024; x=1747051824; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xf1P+9z9XiJdCaUpuTBjGVfwsl02CsdlqTVjlTuR+ug=;
        b=Kqpwwc9DsDG6cW61cPiFZFXZNWR3NRkL3yV1CQIe6mdiVS4r9XXsVNdBqzdk2x3kas
         5sBgp8AMG9N3pOhUx7N84d4OY3av11mBn7Pyuz/VxhmEyJPuooEr0Q4d/2LKVXoaCr4Z
         hbwtmtdR9SCQNjY75FRtuvFCkmGnxB5JtnAlGo+l+KRia529+qLfZEbwHHnr0Qd8m+Ra
         Yz1hpsDwkKJYK+VY5FtCG2NyoFL1UAD6ShLQ3dqro+Bgr31zPRwJ2gc0Xk8OJW1fTi32
         NtyONp7a2IrYFt/PPJytWELI3jdnP+xU7aaYhCW01wWG8ZvET7BRvMG/Gz5+J0AW/AOT
         10pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746447024; x=1747051824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xf1P+9z9XiJdCaUpuTBjGVfwsl02CsdlqTVjlTuR+ug=;
        b=W0Ub/ODf5TMAfj68nkZ51suPn71djQAMtaj305N857UpfzErxYjpz3az7sESIbOH23
         PjEuTaAs8gEOAHnNV5sTUhDDmdRNo1Nu0nUiyOmdd5NZoAlIEltELh72D6pFlykB19eB
         BVBJ+5MPrP+iR4vl2zwc93ezrEQMUtb8IlUP6InMg7RCKz+MaSgTInoXH3aMDgpgk+i/
         gEPs7KpuMg/NKJjsLuZMuNUBq1mUp+PqE5hIKmel8QmcoTDJCQBwx/G54/rwYGecDMAq
         Yi2p94mC3RvZd59SqNSJAOhzRgJ8v+m9saYgnAjXGS8AeJVVm5FxebEjn10S/fYok60Q
         eYzw==
X-Forwarded-Encrypted: i=1; AJvYcCX+LEM89JdA3OKdxlFldzXOWJ91PKmALV5ZS+8OgUCBWfkMNgIVaQrctGZvnbQqafpR/zN82Pvu4C2CvpO4@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6siPcxJkwp1j+33abXaZnB0V2ct3unRSF/+Z2D1PfxFfzzr16
	Yv1ipK/1B7UrJV6RKJRakYZWpjGSyiHxCIfT0EUQ/EMOkWl3P/KvvP5mGq9MrWRTl9JugTY+tdR
	5n0+B+Qbxyt0iApzBIcxNGFeZ0EPC/ZLXWGsNAQVr
X-Gm-Gg: ASbGncubpC7IdFHNIbR41CeUkh9dk4g+fexJ0CMdc38GFls5Yk1DStnBh3axRtxlwYC
	LHyaoOGEAP8qZ/pF1l4bR9zoCajTMqE5TmbaIWqztYgO6svSoOMGySut9/dQ/3Hkx2JMUjgRf+S
	IS2Nw3U8nm4OnhEzj17PUho7s=
X-Google-Smtp-Source: AGHT+IGrfUH9MPAdQwNS2twFxhlagwaLPCfCXznz+rgBdFwPjZ3ioiuEo3A9Gk0YdclatuJ1Za+bseaIMHaboEvs7gU=
X-Received: by 2002:a05:6870:7196:b0:2d5:230f:b352 with SMTP id
 586e51a60fabf-2dae8619680mr3755206fac.27.1746447023762; Mon, 05 May 2025
 05:10:23 -0700 (PDT)
MIME-Version: 1.0
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
 <20250502100049.1746335-2-jens.wiklander@linaro.org> <6236d3cb-fbf2-4a41-a84a-276aa8079b9a@arm.com>
In-Reply-To: <6236d3cb-fbf2-4a41-a84a-276aa8079b9a@arm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Mon, 5 May 2025 14:10:11 +0200
X-Gm-Features: ATxdqUFEAD2cD1D5jQOZdhIhdxiPr-7TKi7md7xZJRysmAHd6QQOFGSu_VWfcD0
Message-ID: <CAHUa44EhdHZofZHRWQ8SJUn4OcAuMwzxxdfjhLQuXQXx4KEaUA@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 75764443A1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.46:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 53THYX6UOWJGISZPH3TWIR6T6RHDN7JS
X-Message-ID-Hash: 53THYX6UOWJGISZPH3TWIR6T6RHDN7JS
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 01/14] tee: tee_device_alloc(): copy dma_mask from parent device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/53THYX6UOWJGISZPH3TWIR6T6RHDN7JS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgMzozNuKAr1BNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOg0KPg0KPiBPbiAwMi8wNS8yMDI1IDEwOjU5IGFtLCBK
ZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBJZiBhIHBhcmVudCBkZXZpY2UgaXMgc3VwcGxpZWQg
dG8gdGVlX2RldmljZV9hbGxvYygpLCBjb3B5IHRoZSBkbWFfbWFzaw0KPiA+IGZpZWxkIGludG8g
dGhlIG5ldyBkZXZpY2UuIFRoaXMgYXZvaWRzIGZ1dHVyZSB3YXJuaW5ncyB3aGVuIG1hcHBpbmcg
YQ0KPiA+IERNQS1idWYgZm9yIHRoZSBkZXZpY2UuDQo+DQo+IFRoYXQgYWxzbyBzb3VuZHMgZG9k
Z3kuIElmIHRoZSBwYXJlbnQgZGV2aWNlIGlzIHRoZSBoYXJkd2FyZSBkZXZpY2UNCj4gcGh5c2lj
YWxseSBwZXJmb3JtaW5nIHRoZSBETUEsIHRoZW4gdGhhdCBpcyB0aGUgZGV2aWNlIHdoaWNoIHNo
b3VsZCBiZQ0KPiBwYXNzZWQgdG8gdGhlIERNQSBBUEkuIFRyeWluZyB0byBjb3B5IHJhbmRvbSBi
aXRzIG9mIG9uZSBkZXZpY2Uncw0KPiBjb25maWd1cmF0aW9uIHRvIGFub3RoZXIgZGV2aWNlIGFu
ZCBob3BpbmcgaXQgd2lsbCB3b3JrIGlzIG5vdCByb2J1c3QgLQ0KPiBub3Qgb25seSBpcyBETUEt
cmVsZXZhbnQgaW5mb3JtYXRpb24gYWxsIG92ZXIgdGhlIHBsYWNlLCBpbmNsdWRpbmcgaW4NCj4g
YXJjaGRhdGEgYW5kL29yIGJ1cy9JT01NVSBkcml2ZXItcHJpdmF0ZSBkYXRhLCBidXQgaXQgY2Fu
IGFsc28gb3BlbnMgdXANCj4gYSB3aG9sZSBjYW4gb2Ygc3VidGxlIGxpZmVjeWNsZSBpc3N1ZXMu
Li4NCg0KV2UgaGF2ZSBhIHJlZmVyZW5jZSB0byB0aGUgcGFyZW50IGRldmljZSB1bnRpbCB0aGUg
dGVlZGV2IGdvZXMgYXdheS4NClRoZSBkbWFfbWFrcyBuZWVkZWQgYnkgdGVlX3NobV9yZWdpc3Rl
cl9mZCgpIGluDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjUwNTAyMTAwMDQ5LjE3
NDYzMzUtOS1qZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnLw0KdG8gYmUgYWJsZSB0byBleHRyYWN0
IHRoZSBQQSBmcm9tIGEgRE1BLWJ1ZiBhbGxvY2F0ZWQgZnJvbSBhbm90aGVyIERNQQ0KaGVhcC4g
V2UgY2FuIGRyb3AgdGhpcyBwYXRjaCBhbmQgc3VwcG9ydCBmb3IgdW5yZWxhdGVkIERNQSBoZWFw
cyBpbg0KdGVlX3NobV9yZWdpc3Rlcl9mZCgpIHdpdGhvdXQgbG9zaW5nIGNyaXRpY2FsIGZlYXR1
cmVzIGZyb20gdGhlIHBhdGNoDQpzZXQgaWYgd2UgY2FuJ3QgaGFuZGxlIGRtYV9tYXNrIGluIHRo
aXMgd2F5Lg0KDQo+DQo+ID4gU2lnbmVkLW9mZi1ieTogSmVucyBXaWtsYW5kZXIgPGplbnMud2lr
bGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gUmV2aWV3ZWQtYnk6IFN1bWl0IEdhcmcgPHN1bWl0Lmdh
cmdAa2VybmVsLm9yZz4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvdGVlL3RlZV9jb3JlLmMgfCAy
ICsrDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy90ZWUvdGVlX2NvcmUuYyBiL2RyaXZlcnMvdGVlL3RlZV9jb3JlLmMN
Cj4gPiBpbmRleCBkMTEzNjc5YjFlMmQuLjY4NWFmY2FhM2VhMSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL3RlZS90ZWVfY29yZS5jDQo+ID4gKysrIGIvZHJpdmVycy90ZWUvdGVlX2NvcmUuYw0K
PiA+IEBAIC05MjIsNiArOTIyLDggQEAgc3RydWN0IHRlZV9kZXZpY2UgKnRlZV9kZXZpY2VfYWxs
b2MoY29uc3Qgc3RydWN0IHRlZV9kZXNjICp0ZWVkZXNjLA0KPiA+ICAgICAgIHRlZWRldi0+ZGV2
LmNsYXNzID0gJnRlZV9jbGFzczsNCj4gPiAgICAgICB0ZWVkZXYtPmRldi5yZWxlYXNlID0gdGVl
X3JlbGVhc2VfZGV2aWNlOw0KPiA+ICAgICAgIHRlZWRldi0+ZGV2LnBhcmVudCA9IGRldjsNCj4g
PiArICAgICBpZiAoZGV2KQ0KPiA+ICsgICAgICAgICAgICAgdGVlZGV2LT5kZXYuZG1hX21hc2sg
PSBkZXYtPmRtYV9tYXNrOw0KPg0KPiAuLi5mb3IgaW5zdGFuY2UsIEkgZG9uJ3Qgc2VlIGFueSBv
YnZpb3VzIGd1YXJhbnRlZSB0aGF0ICJkZXYiIGNhbid0IGdvDQo+IGF3YXkgZHVyaW5nIHRoZSBs
aWZldGltZSBvZiAidGVlZGV2IiBhbmQgbGVhdmUgdGhpcyBwb2ludGVyIGRhbmdsaW5nLg0KDQpB
IHN1Y2Nlc3NmdWwgY2FsbCB0byB0ZWVfZGV2aWNlX2FsbG9jKCkgbXVzdCBiZSBmb2xsb3dlZCBi
eSBhIGNhbGwgdG8NCnRlZV9kZXZpY2VfcmVnaXN0ZXIoKSBvciB0ZWVfZGV2aWNlX3VucmVnaXN0
ZXIoKS4gVGhlIGZvcm1lciBjYWxscw0KY2Rldl9kZXZpY2VfYWRkKCksIHdoaWNoIHJlc3VsdHMg
aW4gYSBjYWxsIHRvIGRldmljZV9hZGQoKSBhbmQgYW4NCmluY3JlYXNlZCByZWZlcmVuY2UgdG8g
dGVlZGV2LT5kZXYucGFyZW50LCAiZGV2IiBpbiBxdWVzdGlvbi4NCg0KVGhhbmtzLA0KSmVucw0K
DQo+DQo+IFRoYW5rcywNCj4gUm9iaW4uDQo+DQo+ID4NCj4gPiAgICAgICB0ZWVkZXYtPmRldi5k
ZXZ0ID0gTUtERVYoTUFKT1IodGVlX2RldnQpLCB0ZWVkZXYtPmlkKTsNCj4gPg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
