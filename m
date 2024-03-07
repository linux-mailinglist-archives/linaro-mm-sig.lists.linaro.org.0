Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6643D8748D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Mar 2024 08:37:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D54F3F38C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Mar 2024 07:37:35 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id ED6513F2EC
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Mar 2024 07:37:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=iqHBG5eo;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.43 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-564fc495d83so556582a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Mar 2024 23:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709797047; x=1710401847; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kw0N/eOAnZk7gfPXfHIs1qJP19DGGStl8rmjj+wRpo=;
        b=iqHBG5eoSh60h1+uOLqun3qTBGXun+T74SbRPB2G9Us/ROrXi11Xs+Tf9EkbVNYmOg
         xDAiGe01CzTahOYSCPna2srp7EuAmdAgaCkuPrpysQBysRK64ARn8vNr3cMkDOG2o+YA
         mGw5gLq2p8BrzPo9GdhEnOBJBh6guQF/7uTB31vP3VmYDLvfxUtCLpqxgd7lRxKJW6c1
         EQKXR9+2VOAWnavHq/1Fzh8n309My9RgZl5w1+lNg16BBKTjHrjuSRlYGt/ss7hIkuVU
         Ur71BMAJENKB6pXi0mWa2lSME7m3fcZZoQnhPO5WTswrrKukWYPMG/cP5QyPzaFBa068
         a+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709797047; x=1710401847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1kw0N/eOAnZk7gfPXfHIs1qJP19DGGStl8rmjj+wRpo=;
        b=ba0NDAI/aeBFqAr8mDE7poHN6bUzp0USp+opFFo+U33CLTRBzFmo2lOt3vSbDK8dVP
         8V1aijydNac+t5zCZXybgeCb+7rmBcr2vWcm/adzCmEQHHPuWv64ECFknRAiIM4kcqG/
         QnmkXDvdqFAlueP/jlPa+nXCU6m4AsepIjJAWS3hZnNskWUsxINohik50RkIackfnDOj
         U1DdsdLM1wmYmnv7bSjZODnJK6DZZHVkv34XSUOr4B9zvs3MddywjhL36+NXi9K3SKtL
         8EwW6l4pllYJ0O+GeMzDQj0Hp05np0VJN5pyKEImMR1Orlzou124oVivwRR5Lb7nPxJL
         yaRg==
X-Forwarded-Encrypted: i=1; AJvYcCXf6mbhsrZcoMKzVggeAi26ZD8XAY03ymFqo9LkQllOxF9MFWFBMZUatvcmmvSgq9oZ4MKLfzc+7KBGcIBt4kkM5rEwd7uUH9DiLk8umNk=
X-Gm-Message-State: AOJu0YwRs1REkL7InZiU1WyPT1gsE1TQztFlStMnA8UP3G1kYUil1led
	uPhv9dJ/LEdZpePUpRvje8hpFL4X/+L04iiSzcONxB43x/wGDk7eLU5I8kl6AvckoSgw+iqaijv
	rfb+V/gsH3cyzWSD7vEMf/JE2ChWaNENQEUlqrk9m
X-Google-Smtp-Source: AGHT+IEanJhlxrJ0m3zCL0/FeuJM7oxCf5rvMMCu8nSAcar4vS1rMrFlRHpWwKJ8Ocvgn+dG5rIRCHc9Y5rV3Z2n5EY=
X-Received: by 2002:a05:6402:1ec9:b0:568:316:2616 with SMTP id
 g9-20020a0564021ec900b0056803162616mr1744389edg.15.1709797046953; Wed, 06 Mar
 2024 23:37:26 -0800 (PST)
MIME-Version: 1.0
References: <20240305-class_cleanup-drm-v1-0-94f82740525a@marliere.net>
 <20240305-class_cleanup-drm-v1-4-94f82740525a@marliere.net> <CABdmKX0VGyBdTo8gzEocyz2HFcqEtu_31PYVjWzioBdCbnXW6w@mail.gmail.com>
In-Reply-To: <CABdmKX0VGyBdTo8gzEocyz2HFcqEtu_31PYVjWzioBdCbnXW6w@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 7 Mar 2024 13:07:15 +0530
Message-ID: <CAO_48GH_RyeTkUsZ9Ad=o2D+Poh3DVQnXiOmyApuWy2Ycn5P5w@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ED6513F2EC
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[marliere.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,redhat.com,gmx.de,collabora.com,arm.com,google.com,amd.com,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: IBDJPQFXHUZRYMAJ2UQHHTKWFKG5AP4K
X-Message-ID-Hash: IBDJPQFXHUZRYMAJ2UQHHTKWFKG5AP4K
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Ricardo B. Marliere" <ricardo@marliere.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Hans de Goede <hdegoede@redhat.com>, Helge Deller <deller@gmx.de>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND drm-misc 4/4] dma-buf: heaps: make dma_heap_class constant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBDJPQFXHUZRYMAJ2UQHHTKWFKG5AP4K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUmljYXJkbywNCg0KT24gVHVlLCA1IE1hciAyMDI0IGF0IDIyOjM3LCBULkouIE1lcmNp
ZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXIgNSwgMjAy
NCBhdCAzOjM04oCvQU0gUmljYXJkbyBCLiBNYXJsaWVyZSA8cmljYXJkb0BtYXJsaWVyZS5uZXQ+
IHdyb3RlOg0KPiA+DQo+ID4gU2luY2UgY29tbWl0IDQzYTcyMDZiMDk2MyAoImRyaXZlciBjb3Jl
OiBjbGFzczogbWFrZSBjbGFzc19yZWdpc3RlcigpIHRha2UNCj4gPiBhIGNvbnN0ICoiKSwgdGhl
IGRyaXZlciBjb3JlIGFsbG93cyBmb3Igc3RydWN0IGNsYXNzIHRvIGJlIGluIHJlYWQtb25seQ0K
PiA+IG1lbW9yeSwgc28gbW92ZSB0aGUgZG1hX2hlYXBfY2xhc3Mgc3RydWN0dXJlIHRvIGJlIGRl
Y2xhcmVkIGF0IGJ1aWxkIHRpbWUNCj4gPiBwbGFjaW5nIGl0IGludG8gcmVhZC1vbmx5IG1lbW9y
eSwgaW5zdGVhZCBvZiBoYXZpbmcgdG8gYmUgZHluYW1pY2FsbHkNCj4gPiBhbGxvY2F0ZWQgYXQg
Ym9vdCB0aW1lLg0KPiA+DQo+ID4gQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4
Zm91bmRhdGlvbi5vcmc+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gQi4g
TWFybGllcmUgPHJpY2FyZG9AbWFybGllcmUubmV0Pg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2Rt
YS1idWYvZG1hLWhlYXAuYyB8IDI2ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtaGVhcC5jDQo+ID4gaW5kZXggODRhZTcwOGZhZmU3Li5iY2NhNmEyYmJjZTggMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPiArKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+IEBAIC00MywxMCArNDMsMTggQEAgc3RydWN0IGRtYV9o
ZWFwIHsNCj4gPiAgICAgICAgIHN0cnVjdCBjZGV2IGhlYXBfY2RldjsNCj4gPiAgfTsNCj4gPg0K
PiA+ICtzdGF0aWMgY2hhciAqZG1hX2hlYXBfZGV2bm9kZShjb25zdCBzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHVtb2RlX3QgKm1vZGUpDQo+ID4gK3sNCj4gPiArICAgICAgIHJldHVybiBrYXNwcmludGYo
R0ZQX0tFUk5FTCwgImRtYV9oZWFwLyVzIiwgZGV2X25hbWUoZGV2KSk7DQo+ID4gK30NCj4gPiAr
DQo+ID4gIHN0YXRpYyBMSVNUX0hFQUQoaGVhcF9saXN0KTsNCj4gPiAgc3RhdGljIERFRklORV9N
VVRFWChoZWFwX2xpc3RfbG9jayk7DQo+ID4gIHN0YXRpYyBkZXZfdCBkbWFfaGVhcF9kZXZ0Ow0K
PiA+IC1zdGF0aWMgc3RydWN0IGNsYXNzICpkbWFfaGVhcF9jbGFzczsNCj4gPiArc3RhdGljIHN0
cnVjdCBjbGFzcyBkbWFfaGVhcF9jbGFzcyA9IHsNCj4gPiArICAgICAgIC5uYW1lID0gREVWTkFN
RSwNCj4gPiArICAgICAgIC5kZXZub2RlID0gZG1hX2hlYXBfZGV2bm9kZSwNCj4gPiArfTsNCj4g
PiAgc3RhdGljIERFRklORV9YQVJSQVlfQUxMT0MoZG1hX2hlYXBfbWlub3JzKTsNCj4gPg0KPiA+
ICBzdGF0aWMgaW50IGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAs
IHNpemVfdCBsZW4sDQo+ID4gQEAgLTI2MSw3ICsyNjksNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRt
YV9oZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0K
PiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycjE7DQo+ID4gICAgICAgICB9DQo+ID4NCj4gPiAt
ICAgICAgIGRldl9yZXQgPSBkZXZpY2VfY3JlYXRlKGRtYV9oZWFwX2NsYXNzLA0KPiA+ICsgICAg
ICAgZGV2X3JldCA9IGRldmljZV9jcmVhdGUoJmRtYV9oZWFwX2NsYXNzLA0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGhlYXAtPmhlYXBfZGV2dCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIE5VTEwsDQo+ID4gQEAgLTI5MSw3ICsyOTksNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRt
YV9oZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0K
PiA+ICAgICAgICAgcmV0dXJuIGhlYXA7DQo+ID4NCj4gPiAgZXJyMzoNCj4gPiAtICAgICAgIGRl
dmljZV9kZXN0cm95KGRtYV9oZWFwX2NsYXNzLCBoZWFwLT5oZWFwX2RldnQpOw0KPiA+ICsgICAg
ICAgZGV2aWNlX2Rlc3Ryb3koJmRtYV9oZWFwX2NsYXNzLCBoZWFwLT5oZWFwX2RldnQpOw0KPiA+
ICBlcnIyOg0KPiA+ICAgICAgICAgY2Rldl9kZWwoJmhlYXAtPmhlYXBfY2Rldik7DQo+ID4gIGVy
cjE6DQo+ID4gQEAgLTMwMSwxMSArMzA5LDYgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9h
ZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gPiAgICAg
ICAgIHJldHVybiBlcnJfcmV0Ow0KPiA+ICB9DQo+ID4NCj4gPiAtc3RhdGljIGNoYXIgKmRtYV9o
ZWFwX2Rldm5vZGUoY29uc3Qgc3RydWN0IGRldmljZSAqZGV2LCB1bW9kZV90ICptb2RlKQ0KPiA+
IC17DQo+ID4gLSAgICAgICByZXR1cm4ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJkbWFfaGVhcC8l
cyIsIGRldl9uYW1lKGRldikpOw0KPiA+IC19DQo+ID4gLQ0KPiA+ICBzdGF0aWMgaW50IGRtYV9o
ZWFwX2luaXQodm9pZCkNCj4gPiAgew0KPiA+ICAgICAgICAgaW50IHJldDsNCj4gPiBAQCAtMzE0
LDEyICszMTcsMTEgQEAgc3RhdGljIGludCBkbWFfaGVhcF9pbml0KHZvaWQpDQo+ID4gICAgICAg
ICBpZiAocmV0KQ0KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+DQo+ID4gLSAg
ICAgICBkbWFfaGVhcF9jbGFzcyA9IGNsYXNzX2NyZWF0ZShERVZOQU1FKTsNCj4gPiAtICAgICAg
IGlmIChJU19FUlIoZG1hX2hlYXBfY2xhc3MpKSB7DQo+ID4gKyAgICAgICByZXQgPSBjbGFzc19y
ZWdpc3RlcigmZG1hX2hlYXBfY2xhc3MpOw0KPiA+ICsgICAgICAgaWYgKHJldCkgew0KPiA+ICAg
ICAgICAgICAgICAgICB1bnJlZ2lzdGVyX2NocmRldl9yZWdpb24oZG1hX2hlYXBfZGV2dCwgTlVN
X0hFQVBfTUlOT1JTKTsNCj4gPiAtICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZG1hX2hl
YXBfY2xhc3MpOw0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICAgICAgICAg
fQ0KPiA+IC0gICAgICAgZG1hX2hlYXBfY2xhc3MtPmRldm5vZGUgPSBkbWFfaGVhcF9kZXZub2Rl
Ow0KPiA+DQo+ID4gICAgICAgICByZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gLS0NCj4gPiAy
LjQzLjANCj4NCj4gUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5j
b20+DQoNCg0KRldJVywgcGxlYXNlIGZyZWUgdG8gYWRkIG15DQpBY2tlZC1ieTogU3VtaXQgU2Vt
d2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCg0KPg0KPg0KPiBJcyB0aGlzIHJlYWxseSBh
IHJlc2VuZD8gSSBkb24ndCBzZWUgYW55dGhpbmcgb24gbG9yZSBhbmQgSSBjYW4ndA0KPiByZWNh
bGwgc2VlaW5nIHRoaXMgcGF0Y2ggaW4gbXkgaW5ib3ggYmVmb3JlLg0KDQoNCkJlc3QsDQpTdW1p
dC4NCg0KLS0gDQpUaGFua3MgYW5kIHJlZ2FyZHMsDQoNClN1bWl0IFNlbXdhbCAoaGUgLyBoaW0p
DQpUZWNoIExlYWQgLSBMQ0csIFZlcnRpY2FsIFRlY2hub2xvZ2llcw0KTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
