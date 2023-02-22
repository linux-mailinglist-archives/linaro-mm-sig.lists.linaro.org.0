Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B7C69F865
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 16:55:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23D6E3EBF1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 15:55:39 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by lists.linaro.org (Postfix) with ESMTPS id C21903EBC1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 15:55:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=CmKTWrxI;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.222.179 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id d75so1363692qkg.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 07:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=saj3BiOUv8TiUw3L7YFkO0PUJ/tXd3q9uJ49ovUM8sE=;
        b=CmKTWrxIKlz7AVFTXvHeSdE538LnVJ9hef0GchgKdtiu3KSU5PthdxEke4Yza0DhE6
         LCBRXHANN/uH3a9sa84d8Hj+Xk889MqBHP8ndvBbpdcB7thMY3GlA/lZqBWBWzaPmJo0
         Fjqk/rLzUY6L0Gbpy7U23GyqH93ATd4ZU0h3YBmZWObkCvdslWOFysVsCff7lnpsHdAx
         2WoOdn9Ejdl9VtyN0vLkuswbYdc8A4LlgL3dew+fnwt+ulzkzVYP6FDAPOqs21buZT7J
         PC+UPBwXTzRtfw9ZmtdSaAYqGUK6Yv6f82h26Ir76Juc1Pcs5jdTYdMwiA9isr9nHmIi
         0fGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=saj3BiOUv8TiUw3L7YFkO0PUJ/tXd3q9uJ49ovUM8sE=;
        b=IXCVXyHkF7Capmrr/6a5suarwdwb66So06YJt3paQgoCF7DP2q6vYHYDAB5Fv+fmcM
         FngQN5JIZEawuIA0ErLF4wU84BQjrI+NGGKoSfkT1W7xPNktanQgaa899YM8Sk1Q+2xK
         0hk9dlTCXHdrujzrlfBAfX27QKnV5/8jABJu3GXcT0VB2W/S82k+Ar8cT6Zyk21qprDH
         RBaGYlHTdAiDBpM7kzbyRnwya5F7ufzcfje3M2yqdOTU+tYOKQGrXl3sASHdFgdCIGCK
         cBBXWFR5S2agC6uMx9YCgLl8BcJLH30eh9Vq3GjNQvIgbMWnA125NI7oyINHpT9alMpa
         D9sw==
X-Gm-Message-State: AO0yUKXMGagCqy6CgzJuIsvGVZ1osMhc/1Yli3wEDJGJ7qp4KbZIX7e8
	vyNa1QlHQmKAbLC9l9KK2H+HLqoVFBRXDR4cVOQ=
X-Google-Smtp-Source: AK7set8bf6lP1s6ypm6jnpmXdn70rTkn5YmDMmCpMTW3NxWzHOTkop5Jow8BwPhs9IsE+pN9We1E32jaWMhSMe6NUHQ=
X-Received: by 2002:a05:620a:831a:b0:742:3e52:f855 with SMTP id
 pa26-20020a05620a831a00b007423e52f855mr53039qkn.2.1677081320370; Wed, 22 Feb
 2023 07:55:20 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-4-robdclark@gmail.com>
 <b056a87c-b6b2-25e0-25c7-f7d422793a3e@linux.intel.com>
In-Reply-To: <b056a87c-b6b2-25e0-25c7-f7d422793a3e@linux.intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 22 Feb 2023 07:55:08 -0800
Message-ID: <CAF6AEGv6vaoV_Rro8zSkwtBVTkeQXLdEOnCNBp_8xbkaxa_nOg@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C21903EBC1
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.179:from];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,padovan.org,intel.com,gmail.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: F3RXNPNJ3Y67M5MCPG7233NJ4SDRETKQ
X-Message-ID-Hash: F3RXNPNJ3Y67M5MCPG7233NJ4SDRETKQ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 03/14] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F3RXNPNJ3Y67M5MCPG7233NJ4SDRETKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBGZWIgMjIsIDIwMjMgYXQgMjoyNyBBTSBUdnJ0a28gVXJzdWxpbg0KPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+DQo+DQo+IE9uIDE4LzAyLzIwMjMgMjE6
MTUsIFJvYiBDbGFyayB3cm90ZToNCj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJv
bWl1bS5vcmc+DQo+ID4NCj4gPiBQcm9wYWdhdGUgdGhlIGRlYWRsaW5lIHRvIGFsbCB0aGUgZmVu
Y2VzIGluIHRoZSBjaGFpbi4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiBmb3IgdGhpcyBvbmUuDQo+ID4gLS0tDQo+ID4gICBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgfCAxMyArKysrKysrKysrKysrDQo+ID4g
ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UtY2hhaW4uYw0KPiA+IGluZGV4IGEwZDkyMDU3NmJhNi4uNDY4NDg3NGFmNjEyIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPiA+IEBAIC0yMDYsNiArMjA2LDE4
IEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9jaGFpbl9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQ0KPiA+ICAgICAgIGRtYV9mZW5jZV9mcmVlKGZlbmNlKTsNCj4gPiAgIH0NCj4gPg0K
PiA+ICsNCj4gPiArc3RhdGljIHZvaWQgZG1hX2ZlbmNlX2NoYWluX3NldF9kZWFkbGluZShzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBrdGltZV90IGRlYWRsaW5lKQ0KPiA+ICt7DQo+ID4gKyAgICAgZG1hX2ZlbmNlX2No
YWluX2Zvcl9lYWNoKGZlbmNlLCBmZW5jZSkgew0KPiA+ICsgICAgICAgICAgICAgc3RydWN0IGRt
YV9mZW5jZV9jaGFpbiAqY2hhaW4gPSB0b19kbWFfZmVuY2VfY2hhaW4oZmVuY2UpOw0KPiA+ICsg
ICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZiA9IGNoYWluID8gY2hhaW4tPmZlbmNlIDog
ZmVuY2U7DQo+DQo+IExvdyBsZXZlbCBjb21tZW50IC0gYWJvdmUgdHdvIGxpbmVzIGNvdWxkIGJl
IHJlcGxhY2VkIHdpdGg6DQo+DQo+ICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZiA9IGRtYV9m
ZW5jZV9jaGFpbl9jb250YWluZWQoZmVuY2UpOw0KPg0KPiBBbHRob3VnaCB0byBiZSBmYWlyIEkg
YW0gbm90IHN1cmUgdGhhdCB3b3VsZG4ndCBiZSBtYWtpbmcgaXQgbGVzcw0KPiByZWFkYWJsZS4g
RnJvbSB0aGUgcG9pbnQgb2YgdmlldyB0aGF0IGZlbmNlIG1pZ2h0IG5vdCBiZSBhIGNoYWluLCBz
bw0KPiBkbWFfZmVuY2VfY2hhaW5fY29udGFpbmVkKCkgcmVhZHMgYSBiaXQgZG9kZ3kgYXMgYW4g
QVBJLg0KDQpJdCBkb2VzIHNlZW0gdG8gYmUgdGhlIGNhbm9uaWNhbCB3YXkgdG8gZG8gaXQgc2lu
Y2UgMThmNWZhZDI3NWVmDQooImRtYS1idWY6IGFkZCBkbWFfZmVuY2VfY2hhaW5fY29udGFpbmVk
IGhlbHBlciIpLi4gbG9va3MgbGlrZSBJDQptaXNzZWQgdGhhdCB3aGVuIEkgcmViYXNlZC4gIEkg
Z3Vlc3MgZm9yIGNvbnNpc3RlbmN5IGl0J3MgYmVzdCB0aGF0IEkNCnVzZSB0aGUgaGVscGVyLg0K
DQpCUiwNCi1SDQoNCj4gUmVnYXJkcywNCj4NCj4gVHZydGtvDQo+DQo+ID4gKw0KPiA+ICsgICAg
ICAgICAgICAgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShmLCBkZWFkbGluZSk7DQo+ID4gKyAgICAg
fQ0KPiA+ICt9DQo+ID4gKw0KPiA+ICAgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2Zl
bmNlX2NoYWluX29wcyA9IHsNCj4gPiAgICAgICAudXNlXzY0Yml0X3NlcW5vID0gdHJ1ZSwNCj4g
PiAgICAgICAuZ2V0X2RyaXZlcl9uYW1lID0gZG1hX2ZlbmNlX2NoYWluX2dldF9kcml2ZXJfbmFt
ZSwNCj4gPiBAQCAtMjEzLDYgKzIyNSw3IEBAIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRt
YV9mZW5jZV9jaGFpbl9vcHMgPSB7DQo+ID4gICAgICAgLmVuYWJsZV9zaWduYWxpbmcgPSBkbWFf
ZmVuY2VfY2hhaW5fZW5hYmxlX3NpZ25hbGluZywNCj4gPiAgICAgICAuc2lnbmFsZWQgPSBkbWFf
ZmVuY2VfY2hhaW5fc2lnbmFsZWQsDQo+ID4gICAgICAgLnJlbGVhc2UgPSBkbWFfZmVuY2VfY2hh
aW5fcmVsZWFzZSwNCj4gPiArICAgICAuc2V0X2RlYWRsaW5lID0gZG1hX2ZlbmNlX2NoYWluX3Nl
dF9kZWFkbGluZSwNCj4gPiAgIH07DQo+ID4gICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9jaGFp
bl9vcHMpOw0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
