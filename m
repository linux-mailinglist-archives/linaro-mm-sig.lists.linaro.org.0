Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E8B69D11D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 17:09:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25F973F46F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 16:09:36 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id 06E633EBC1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 16:09:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=mcwIt39U;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id t22so1660272oiw.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qKwgEmFMvHxp8bhwKryOQIDMT3gDmSzeZYz7HFGi0A=;
        b=mcwIt39UTsOH/VD2CWB0f3XpfojSkJOsoHINEprOWCQfhExKIq9ldl6m1/7kJxUMJE
         g2ReIRbkPxlH8TDlSVNoy2zlDUBCWenL+AQSSKunKqtko03Q8eruiXp1s2mNTNfxxjAP
         5p1Qh6HvyEvUDwdiURvsx+ioU1hJKOg4Q8C+NQFppWyjKXeiL4RqqGHdwJFuwTmzKsp4
         OTVREXLeRILTF/F1FE9MTvoo4Vx2Zz5iU2OP+DwxW7sl6Y1JuWFjuLElVqkdLhCjrEFJ
         +WvBKHUtxeIuBOp/j/kuq4B2yS35No16DshXpt/B8oBI+93LUFEkYrYRD4R0U/fe1KsZ
         647A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5qKwgEmFMvHxp8bhwKryOQIDMT3gDmSzeZYz7HFGi0A=;
        b=kTrLMqaNsWNSvUC7cXp4ddTARYy22wPeueNGHt4CC3TgSsCpI6p7so0+npxetkLQJU
         4NdJdw2/VWYfF+7wAuRhhN6lqAWHGJ8Tv2mA8t6LzLPd0M/OD/4/mNkJYK8dPMyOVOdT
         IkpkmdlCUlWquWt66nBs7p/uL2xi2p7zA4tXctMCKMp1qd2TrCOUIyt9oPMEY1M6kKeC
         rl0FaaTfnWNV3G7fEyabTaokCA/gRgHGN4iGO3pGm1yCjh4kOF5EdqAiyxD0rGYIcFK8
         Knoh9YkmvEgrXvXHZHjKN1pJDcaYsYva85JBCE3f6JldHHazTXeFL0+pXxLfHFZo0DGM
         fRaw==
X-Gm-Message-State: AO0yUKXYBb9/BzYhxqmLvgZk9CvqvNv39I2UVST4ee8zlGv0yFDTz1oo
	POIcevXvZIEDQIZNniCPUHCrkSjWvSmhNEnN1cA=
X-Google-Smtp-Source: AK7set+aFRYNQDGiaDd/8xtOQGQcGZhiqPbhDzJH2jTmHgUMuPs3oBV9oiMJLS3mZRVOrAjR6iKZ0/p6GM5gSm52s04=
X-Received: by 2002:a05:6808:ec7:b0:364:c0a5:1fcf with SMTP id
 q7-20020a0568080ec700b00364c0a51fcfmr1103306oiv.58.1676909355341; Mon, 20 Feb
 2023 08:09:15 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-6-robdclark@gmail.com>
 <37ec0125-8d0b-7d87-321d-ed4c7c7b32a7@amd.com>
In-Reply-To: <37ec0125-8d0b-7d87-321d-ed4c7c7b32a7@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 20 Feb 2023 08:09:04 -0800
Message-ID: <CAF6AEGtAHXQ05tWoXdbx3_TK+11+XN6J9wuXssSh3PswUhvwgg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 06E633EBC1
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.175:from];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.939];
	RCPT_COUNT_TWELVE(0.00)[17];
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
Message-ID-Hash: GGNAQVKVOOXWVEHE4RX3IGSCMPHXMECL
X-Message-ID-Hash: GGNAQVKVOOXWVEHE4RX3IGSCMPHXMECL
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 05/14] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GGNAQVKVOOXWVEHE4RX3IGSCMPHXMECL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBGZWIgMjAsIDIwMjMgYXQgMTI6MjcgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IEFtIDE4LjAyLjIzIHVtIDIyOjE1IHNj
aHJpZWIgUm9iIENsYXJrOg0KPiA+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVt
Lm9yZz4NCj4gPg0KPiA+IFRoZSBpbml0aWFsIHB1cnBvc2UgaXMgZm9yIGlndCB0ZXN0cywgYnV0
IHRoaXMgd291bGQgYWxzbyBiZSB1c2VmdWwgZm9yDQo+ID4gY29tcG9zaXRvcnMgdGhhdCB3YWl0
IHVudGlsIGNsb3NlIHRvIHZibGFuayBkZWFkbGluZSB0byBtYWtlIGRlY2lzaW9ucw0KPiA+IGFi
b3V0IHdoaWNoIGZyYW1lIHRvIHNob3cuDQo+ID4NCj4gPiBUaGUgaWd0IHRlc3RzIGNhbiBiZSBm
b3VuZCBhdDoNCj4gPg0KPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9yb2JjbGFy
ay9pZ3QtZ3B1LXRvb2xzLy0vY29tbWl0cy9mZW5jZS1kZWFkbGluZQ0KPiA+DQo+ID4gdjI6IENs
YXJpZnkgdGhlIHRpbWViYXNlLCBhZGQgbGluayB0byBpZ3QgdGVzdHMNCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gPiAtLS0NCj4g
PiAgIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyAgICB8IDE5ICsrKysrKysrKysrKysrKysr
KysNCj4gPiAgIGluY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCB8IDIyICsrKysrKysrKysr
KysrKysrKysrKysNCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9zeW5jX2ZpbGUuYw0KPiA+IGluZGV4IGFmNTc3OTljODZjZS4uZmI2Y2ExMDMyODg1
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYw0KPiA+IEBAIC0zNTAsNiArMzUwLDIyIEBAIHN0
YXRpYyBsb25nIHN5bmNfZmlsZV9pb2N0bF9mZW5jZV9pbmZvKHN0cnVjdCBzeW5jX2ZpbGUgKnN5
bmNfZmlsZSwNCj4gPiAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gK3N0YXRp
YyBpbnQgc3luY19maWxlX2lvY3RsX3NldF9kZWFkbGluZShzdHJ1Y3Qgc3luY19maWxlICpzeW5j
X2ZpbGUsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25l
ZCBsb25nIGFyZykNCj4gPiArew0KPiA+ICsgICAgIHN0cnVjdCBzeW5jX3NldF9kZWFkbGluZSB0
czsNCj4gPiArDQo+ID4gKyAgICAgaWYgKGNvcHlfZnJvbV91c2VyKCZ0cywgKHZvaWQgX191c2Vy
ICopYXJnLCBzaXplb2YodHMpKSkNCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUZBVUxUOw0K
PiA+ICsNCj4gPiArICAgICBpZiAodHMucGFkKQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1F
SU5WQUw7DQo+ID4gKw0KPiA+ICsgICAgIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3luY19maWxl
LT5mZW5jZSwga3RpbWVfc2V0KHRzLnR2X3NlYywgdHMudHZfbnNlYykpOw0KPiA+ICsNCj4gPiAr
ICAgICByZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgIHN0YXRpYyBsb25nIHN5bmNfZmls
ZV9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNtZCwNCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgYXJnKQ0KPiA+ICAgew0KPiA+IEBAIC0z
NjIsNiArMzc4LDkgQEAgc3RhdGljIGxvbmcgc3luY19maWxlX2lvY3RsKHN0cnVjdCBmaWxlICpm
aWxlLCB1bnNpZ25lZCBpbnQgY21kLA0KPiA+ICAgICAgIGNhc2UgU1lOQ19JT0NfRklMRV9JTkZP
Og0KPiA+ICAgICAgICAgICAgICAgcmV0dXJuIHN5bmNfZmlsZV9pb2N0bF9mZW5jZV9pbmZvKHN5
bmNfZmlsZSwgYXJnKTsNCj4gPg0KPiA+ICsgICAgIGNhc2UgU1lOQ19JT0NfU0VUX0RFQURMSU5F
Og0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHN5bmNfZmlsZV9pb2N0bF9zZXRfZGVhZGxpbmUo
c3luY19maWxlLCBhcmcpOw0KPiA+ICsNCj4gPiAgICAgICBkZWZhdWx0Og0KPiA+ICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9UVFk7DQo+ID4gICAgICAgfQ0KPiA+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvbGludXgvc3luY19maWxlLmggYi9pbmNsdWRlL3VhcGkvbGludXgvc3luY19maWxl
LmgNCj4gPiBpbmRleCBlZTJkY2ZiM2Q2NjAuLmM4NjY2NTgwODE2ZiAxMDA2NDQNCj4gPiAtLS0g
YS9pbmNsdWRlL3VhcGkvbGludXgvc3luY19maWxlLmgNCj4gPiArKysgYi9pbmNsdWRlL3VhcGkv
bGludXgvc3luY19maWxlLmgNCj4gPiBAQCAtNjcsNiArNjcsMjAgQEAgc3RydWN0IHN5bmNfZmls
ZV9pbmZvIHsNCj4gPiAgICAgICBfX3U2NCAgIHN5bmNfZmVuY2VfaW5mbzsNCj4gPiAgIH07DQo+
ID4NCj4gPiArLyoqDQo+ID4gKyAqIHN0cnVjdCBzeW5jX3NldF9kZWFkbGluZSAtIHNldCBhIGRl
YWRsaW5lIG9uIGEgZmVuY2UNCj4gPiArICogQHR2X3NlYzogIHNlY29uZHMgZWxhcHNlZCBzaW5j
ZSBlcG9jaA0KPiA+ICsgKiBAdHZfbnNlYzogbmFub3NlY29uZHMgZWxhcHNlZCBzaW5jZSB0aGUg
dGltZSBnaXZlbiBieSB0aGUgdHZfc2VjDQo+ID4gKyAqIEBwYWQ6ICAgICBtdXN0IGJlIHplcm8N
Cj4gPiArICoNCj4gPiArICogVGhlIHRpbWViYXNlIGZvciB0aGUgZGVhZGxpbmUgaXMgQ0xPQ0tf
TU9OT1RPTklDIChzYW1lIGFzIHZibGFuaykNCj4gPiArICovDQo+ID4gK3N0cnVjdCBzeW5jX3Nl
dF9kZWFkbGluZSB7DQo+ID4gKyAgICAgX19zNjQgICB0dl9zZWM7DQo+ID4gKyAgICAgX19zMzIg
ICB0dl9uc2VjOw0KPiA+ICsgICAgIF9fdTMyICAgcGFkOw0KPg0KPiBJSVJDIHN0cnVjdCB0aW1l
c3BlYyBkZWZpbmVkIHRoaXMgYXMgdGltZV90L2xvbmcgKHdoaWNoIGlzIGhvcnJpYmxlIGZvcg0K
PiBhbiBVQVBJIGJlY2F1c2Ugb2YgdGhlIHNpemVvZihsb25nKSBkZXBlbmRlbmN5KSwgb25lIHBv
c3NpYmxlDQo+IGFsdGVybmF0aXZlIGlzIHRvIHVzZSA2NGJpdCBuYW5vc2Vjb25kcyBmcm9tIENM
T0NLX01PTk9UT05JQyAod2hpY2ggaXMNCj4gZXNzZW50aWFsbHkga3RpbWUpLg0KPg0KPiBOb3Qg
MTAwJSBzdXJlIGlmIHRoZXJlIGlzIGFueSBwcmVmZXJlbmNlcyBkb2N1bWVudGVkLCBidXQgSSB0
aGluayB0aGUNCj4gbGF0ZXIgbWlnaHQgYmUgYmV0dGVyLg0KDQpUaGUgb3JpZ2luYWwgdGhvdWdo
dCBpcyB0aGF0IHRoaXMgbWFwcyBkaXJlY3RseSB0byBjbG9ja19nZXR0aW1lKCkNCndpdGhvdXQg
ZXh0cmEgY29udmVyc2lvbiBuZWVkZWQsIGFuZCBpcyBzaW1pbGFyIHRvIG90aGVyIHByZS1rdGlt
ZV90DQpVQVBJLiAgQnV0IE9UT0ggaWYgdXNlcnNwYWNlIHdhbnRzIHRvIGFkZCBhbiBvZmZzZXQs
IGl0IGlzIG1heWJlDQpiZXR0ZXIgdG8gY29udmVydCBjb21wbGV0ZWx5IHRvIG5zIGluIHVzZXJz
cGFjZSBhbmQgdXNlIGEgdTY0IChhcyB0aGF0DQppcyB3aGF0IG5zX3RvX2t0aW1lKCkgdXNlcyku
LiAoYW5kIE9GQyB3aGF0ZXZlciBkZWNpc2lvbiBoZXJlIGFsc28NCmFwcGxpZXMgdG8gdGhlIHN5
bmNvYmogd2FpdCBpb2N0bHMpDQoNCkknbSBsZWFuaW5nIHRvd2FyZHMgdTY0IENMT0NLX01PTk9U
T05JQyBucyBpZiBubyBvbmUgaGFzIGEgZ29vZA0KYXJndW1lbnQgYWdhaW5zdCB0aGF0Lg0KDQpC
UiwNCi1SDQoNCj4gRWl0aGVyIHdheSB0aGUgcGF0Y2ggaXMgQWNrZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcNCj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gZm9yIHRoaXMgcGF0Y2guDQo+DQo+
IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPiArfTsNCj4gPiArDQo+ID4gICAjZGVmaW5l
IFNZTkNfSU9DX01BR0lDICAgICAgICAgICAgICAnPicNCj4gPg0KPiA+ICAgLyoqDQo+ID4gQEAg
LTk1LDQgKzEwOSwxMiBAQCBzdHJ1Y3Qgc3luY19maWxlX2luZm8gew0KPiA+ICAgICovDQo+ID4g
ICAjZGVmaW5lIFNZTkNfSU9DX0ZJTEVfSU5GTyAgX0lPV1IoU1lOQ19JT0NfTUFHSUMsIDQsIHN0
cnVjdCBzeW5jX2ZpbGVfaW5mbykNCj4gPg0KPiA+ICsNCj4gPiArLyoqDQo+ID4gKyAqIERPQzog
U1lOQ19JT0NfU0VUX0RFQURMSU5FIC0gc2V0IGEgZGVhZGxpbmUgb24gYSBmZW5jZQ0KPiA+ICsg
Kg0KPiA+ICsgKiBBbGxvd3MgdXNlcnNwYWNlIHRvIHNldCBhIGRlYWRsaW5lIG9uIGEgZmVuY2Us
IHNlZSBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKCkNCj4gPiArICovDQo+ID4gKyNkZWZpbmUgU1lO
Q19JT0NfU0VUX0RFQURMSU5FICAgICAgICBfSU9XKFNZTkNfSU9DX01BR0lDLCA1LCBzdHJ1Y3Qg
c3luY19zZXRfZGVhZGxpbmUpDQo+ID4gKw0KPiA+ICAgI2VuZGlmIC8qIF9VQVBJX0xJTlVYX1NZ
TkNfSCAqLw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
