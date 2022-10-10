Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DF25FA3D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Oct 2022 20:56:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEC353F529
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Oct 2022 18:56:57 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id 4F5AC3ED7D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Oct 2022 18:56:39 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id a5so2177293qkl.6
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Oct 2022 11:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mfdinePb/h+FQryCI1VnJk1iVMwwW9XbS8GRZ1SXnEM=;
        b=Y1FJnNxKCCmUeBjERypSSpOT5hLZIa3B6ZfL7TmeBlDcYn7G53u+wzaqGztD4xstS6
         H56NjZrTnnAs/mwbv/53uHY1GhzxoFxOLWj+6+255TR+XIgzukZ2wrhnTPfXH4rpl0ll
         x20RYa7gkPKPOAB+2GjUbYRf86UKilK/+RP5mPzo1iTwxgbIcI/NL1hAwcQva+CI+c58
         wXQg1m452/c0qjzqE/xGhDgd9xycIGhUX5tiX7SJhqTWnYftDSAsnXqQ0qceqqSNwxFf
         a0gsQbHVGj7OQXKVN8LpCmOTHmcWT/lMPoHErC7k7GBXJjyyytJ8h/nDzI7STIfMcpme
         CGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mfdinePb/h+FQryCI1VnJk1iVMwwW9XbS8GRZ1SXnEM=;
        b=2WU3MzFMRZp1dxRLnJPsF/5wEoMke2ZKAckHbSYRdj0PugSeKSN54nwuFc5xigNN9e
         FPAi+SqOq/OK9ecskGb+2emGbsVQXjnYM6emKcWs5Nvl+YPwmRjfxDLd7FTbtxnL3IzQ
         vpWbo0f1SuZYg7PDgktYGb39xKE4iZPfZz5MJYy0AoHVTjZ+FrE93betXY1t3sJLbLkV
         50W66WVUPgCBuvmgYfRbaDqZ0/cNqgv9qFC3DK/y0jjN7ATJPLK1Sau+ivXHUbBGX5Mn
         i0swafTzCYsnDklq4ym/LbGwSNFd9/o+yPkEQtfW5x1k8AXYopULMzRwHd7cPy2aZpAd
         043w==
X-Gm-Message-State: ACrzQf0WNZv78+yjHrXLq4gJVCX3wuDiQWwkRyesY7ZKzCtNAZaJsedP
	Qc9iRhkdBD8/13lTVM0NwTUyDg==
X-Google-Smtp-Source: AMsMyM4cq1ZiSompu2ffs6ddf24dPwkk/2Lnq1GVt1O6/KQn3scUPTnTqdwZ/uWcjL7riJrPyy9iDQ==
X-Received: by 2002:a05:620a:4397:b0:6e1:345a:e080 with SMTP id a23-20020a05620a439700b006e1345ae080mr13783062qkp.677.1665428198984;
        Mon, 10 Oct 2022 11:56:38 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id j8-20020a05620a288800b006bb2cd2f6d1sm10684472qkp.127.2022.10.10.11.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 11:56:38 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1ohxx7-0012V5-CO;
	Mon, 10 Oct 2022 15:56:37 -0300
Date: Mon, 10 Oct 2022 15:56:37 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <Y0Rq5Zb9+63++2z/@ziepe.ca>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
 <20220928191600.5874-11-dmitry.osipenko@collabora.com>
 <e3ba146d-8153-add5-2cf4-02fe6519abee@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3ba146d-8153-add5-2cf4-02fe6519abee@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 4F5AC3ED7D
X-Spamd-Result: default: False [-7.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[ziepe.ca:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[47.55.122.23:received];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.169:from];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.169:from];
	RCPT_COUNT_GT_50(0.00)[51];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org,linux.ie,redhat.com,chromium.org,ffwll.ch,fooishbar.org,linux.intel.com,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Y1FJnNxK;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.169 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Message-ID-Hash: GPWELJ6PLXTOJRJL5VRXBHD3OIQGCFIZ
X-Message-ID-Hash: GPWELJ6PLXTOJRJL5VRXBHD3OIQGCFIZ
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian
 .koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq825@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Ruhl Michael J <michael.j.ruhl@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 10/21] RDMA/umem: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GPWELJ6PLXTOJRJL5VRXBHD3OIQGCFIZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBPY3QgMDksIDIwMjIgYXQgMDM6MDg6NTZBTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOg0KPiBPbiA5LzI4LzIyIDIyOjE1LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+ID4g
UHJlcGFyZSBJbmZpbmlCYW5kIGRyaXZlcnMgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYg
bG9ja2luZw0KPiA+IGNvbnZlbnRpb24gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2
ZXJzaW9ucyBvZiBkbWEtYnVmIEFQSQ0KPiA+IGZ1bmN0aW9ucy4NCj4gPiANCj4gPiBBY2tlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMgfCA3
ICsrKystLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1l
bV9kbWFidWYuYyBiL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMNCj4gPiBp
bmRleCAwNGMwNGU2ZDI0YzMuLjQzYjI2YmMxMjI4OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQo+ID4gKysrIGIvZHJpdmVycy9pbmZpbmli
YW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KPiA+IEBAIC0yNiw3ICsyNiw4IEBAIGludCBpYl91bWVt
X2RtYWJ1Zl9tYXBfcGFnZXMoc3RydWN0IGliX3VtZW1fZG1hYnVmICp1bWVtX2RtYWJ1ZikNCj4g
PiAgCWlmICh1bWVtX2RtYWJ1Zi0+c2d0KQ0KPiA+ICAJCWdvdG8gd2FpdF9mZW5jZTsNCj4gPiAg
DQo+ID4gLQlzZ3QgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50KHVtZW1fZG1hYnVmLT5hdHRhY2gs
IERNQV9CSURJUkVDVElPTkFMKTsNCj4gPiArCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnRf
dW5sb2NrZWQodW1lbV9kbWFidWYtPmF0dGFjaCwNCj4gPiArCQkJCQkgICAgICBETUFfQklESVJF
Q1RJT05BTCk7DQo+ID4gIAlpZiAoSVNfRVJSKHNndCkpDQo+ID4gIAkJcmV0dXJuIFBUUl9FUlIo
c2d0KTsNCj4gPiAgDQo+ID4gQEAgLTEwMiw4ICsxMDMsOCBAQCB2b2lkIGliX3VtZW1fZG1hYnVm
X3VubWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1lbV9kbWFidWYpDQo+ID4gIAkJ
dW1lbV9kbWFidWYtPmxhc3Rfc2dfdHJpbSA9IDA7DQo+ID4gIAl9DQo+ID4gIA0KPiA+IC0JZG1h
X2J1Zl91bm1hcF9hdHRhY2htZW50KHVtZW1fZG1hYnVmLT5hdHRhY2gsIHVtZW1fZG1hYnVmLT5z
Z3QsDQo+ID4gLQkJCQkgRE1BX0JJRElSRUNUSU9OQUwpOw0KPiA+ICsJZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50X3VubG9ja2VkKHVtZW1fZG1hYnVmLT5hdHRhY2gsIHVtZW1fZG1hYnVmLT5zZ3Qs
DQo+ID4gKwkJCQkJICBETUFfQklESVJFQ1RJT05BTCk7DQo+ID4gIA0KPiA+ICAJdW1lbV9kbWFi
dWYtPnNndCA9IE5VTEw7DQo+ID4gIH0NCj4gDQo+IEphc29uIC8gTGVvbiwNCj4gDQo+IENvdWxk
IHlvdSBwbGVhc2UgYWNrIHRoaXMgcGF0Y2g/DQoNCllvdSBwcm9iYWJseSBkb24ndCBuZWVkIGl0
LCBmb3Igc29tZXRoaW5nIHNvIHNpbXBsZSwgYnV0IHN1cmUNCg0KQWNrZWQtYnk6IEphc29uIEd1
bnRob3JwZSA8amdnQG52aWRpYS5jb20+DQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
