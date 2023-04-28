Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE766F5606
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:24:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 580113F95B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:24:24 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 64DF03EC67
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Apr 2023 00:45:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=RJAufDGR;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-506c04dd879so15960205a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 17:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682642749; x=1685234749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kl96LCCkpjgD23grkbS1yyST45SlEkE3SGRzL04YVVA=;
        b=RJAufDGR1WE8/kTpjEXn/SvE1akzytsLkLMSFAJuQmkq+aQ8VH3RyUdR1ZfgYEC01H
         dmeIFGhI24rxqIiby9nWCw+j8K0i3X9sQbFmN75plsAoXnd9Zj8Q6o2R6qjte3BuY417
         hUaAJ6cnQ30c2uNMkqx3cFnGaRy1ap/Rj1eGCPQ/w/mi24OP2rRGsSjBcondz35Q+U8g
         nqYb0c1YNnlph2ix5Sq0pZm4FK1G8TCXFubpXMmi0pHzzxZPy5Xf4JLqT1mavNSfSUoh
         l3q1uIo1B1tNbnDB1xi7cAl8jrXPKyYBmAKg76zKhV4tinMQXyTUkdWTeHBOHS0KjO7j
         KWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682642749; x=1685234749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kl96LCCkpjgD23grkbS1yyST45SlEkE3SGRzL04YVVA=;
        b=XT9cU9zBbC2cOu6yueFPyn2esnr2/kCQLCDd/Y1unNBC/w9/gO5g3g0S5OhaKyg8wY
         EiYcZY26bVKDkQta+TdY8vSMThnucBqnYZoLqvFzhRbPaPnnW/PvhNlTBOyur7sWA6Sv
         8b+fIyWhleJoZxdNSKFKAxn+cWdOekYft0yM2alxuyWXhCtZHGpjv2CPZyfbz9t0g9ir
         gECmSSOIC+NEwUPXl8cwbGtB5z7Fl67XqEq++7rJOOixmGWFns7Ew1UEW2npOgoRGEAA
         597jlXHiNbd5i9jdb84RXj/kwUbjLYUYdQzj6rUBbYbk7WavDWDts7UvziBBNr0LXDvW
         opUA==
X-Gm-Message-State: AC+VfDwopLoBqbV9/1+GeOL79pt5rfD0Y5eOTjilxbCMi4JdWc9D6mMY
	HIYMViUg79qoAZpFQ9kzxvKoRV2dY3v976wh2PM=
X-Google-Smtp-Source: ACHHUZ7B0b4msmyMH8xuBKiO++UE2DzmKb86fdqinlxALx425ntv5PITQowYd8G9Wnbi1TbWybLGz4JLLXngOlOJbf8=
X-Received: by 2002:a17:906:dc93:b0:94e:5708:1564 with SMTP id
 cs19-20020a170906dc9300b0094e57081564mr4377799ejc.22.1682642749260; Thu, 27
 Apr 2023 17:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230419122233.3440-1-hackyzh002@gmail.com> <CAF6NKda1Jy_wfxaVqWt-o75f1BO-o4JXHY9HS9_JtJ2FHztMmQ@mail.gmail.com>
 <CADnq5_MfynMAPU8c-Lq1X_dcDOdRpjW6i=m-Qo8zsZZ=dO-62w@mail.gmail.com>
In-Reply-To: <CADnq5_MfynMAPU8c-Lq1X_dcDOdRpjW6i=m-Qo8zsZZ=dO-62w@mail.gmail.com>
From: whitehat002 whitehat002 <hackyzh002@gmail.com>
Date: Fri, 28 Apr 2023 08:45:36 +0800
Message-ID: <CAF6NKdaxK_ZRkKRyWtm9Cj-8fNE9RptW3FjW-V39rmaHaCGHTw@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
X-Spamd-Result: default: False [-9.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.208.45:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[patchwork.freedesktop.org:url,mail-ed1-f45.google.com:rdns,mail-ed1-f45.google.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 64DF03EC67
X-Spamd-Bar: ---------
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DVLNIYH6WACKS5FKCGPRBMEJKRDC33FH
X-Message-ID-Hash: DVLNIYH6WACKS5FKCGPRBMEJKRDC33FH
X-Mailman-Approved-At: Wed, 03 May 2023 10:17:47 +0000
CC: alexander.deucher@amd.com, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, daniel@ffwll.ch, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DVLNIYH6WACKS5FKCGPRBMEJKRDC33FH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxleCxJIGhhdmUgYSBxdWVzdGlvbiwgd2h5IEkgZG9uJ3Qgc2VlIGl0IG9uIHRoZQ0KaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnLw0KDQpBbGV4IERldWNoZXIgPGFsZXhkZXVjaGVy
QGdtYWlsLmNvbT4g5LqOMjAyM+W5tDTmnIgyN+aXpeWRqOWbmyAyMDo0MOWGmemBk++8mg0KPg0K
PiBBcyBwZXIgbXkgcHJpb3IgcmVwbHksIGl0IGhhcyBiZWVuIGFwcGxpZWQuDQo+DQo+IFRoYW5r
cywNCj4NCj4gQWxleA0KPg0KPiBPbiBUaHUsIEFwciAyNywgMjAyMyBhdCA4OjM54oCvQU0gd2hp
dGVoYXQwMDIgd2hpdGVoYXQwMDINCj4gPGhhY2t5emgwMDJAZ21haWwuY29tPiB3cm90ZToNCj4g
Pg0KPiA+IGhlbGxvDQo+ID4gV2hhdCBpcyB0aGUgY3VycmVudCBzdGF0dXMgb2YgdGhpcyBwYXRj
aCwgaGFzIGl0IGJlZW4gYXBwbGllZD8NCj4gPg0KPiA+DQo+ID4gaGFja3l6aDAwMiA8aGFja3l6
aDAwMkBnbWFpbC5jb20+IOS6jjIwMjPlubQ05pyIMTnml6XlkajkuIkgMjA6MjPlhpnpgZPvvJoN
Cj4gPiA+DQo+ID4gPiBUaGUgdHlwZSBvZiBzaXplIGlzIHVuc2lnbmVkIGludCwgaWYgc2l6ZSBp
cyAweDQwMDAwMDAwLCB0aGVyZSB3aWxsDQo+ID4gPiBiZSBhbiBpbnRlZ2VyIG92ZXJmbG93LCBz
aXplIHdpbGwgYmUgemVybyBhZnRlciBzaXplICo9IHNpemVvZih1aW50MzJfdCksDQo+ID4gPiB3
aWxsIGNhdXNlIHVuaW5pdGlhbGl6ZWQgbWVtb3J5IHRvIGJlIHJlZmVyZW5jZWQgbGF0ZXIuDQo+
ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogaGFja3l6aDAwMiA8aGFja3l6aDAwMkBnbWFpbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
Y3MuYyB8IDIgKy0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3Mu
Yw0KPiA+ID4gaW5kZXggMDhlY2VkMDk3Li44OWJjYWNjNjUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYw0KPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMNCj4gPiA+IEBAIC0xOTIsNyArMTkyLDcg
QEAgc3RhdGljIGludCBhbWRncHVfY3NfcGFzczEoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAs
DQo+ID4gPiAgICAgICAgIHVpbnQ2NF90ICpjaHVua19hcnJheV91c2VyOw0KPiA+ID4gICAgICAg
ICB1aW50NjRfdCAqY2h1bmtfYXJyYXk7DQo+ID4gPiAgICAgICAgIHVpbnQzMl90IHVmX29mZnNl
dCA9IDA7DQo+ID4gPiAtICAgICAgIHVuc2lnbmVkIGludCBzaXplOw0KPiA+ID4gKyAgICAgICBz
aXplX3Qgc2l6ZTsNCj4gPiA+ICAgICAgICAgaW50IHJldDsNCj4gPiA+ICAgICAgICAgaW50IGk7
DQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IDIuMzQuMQ0KPiA+ID4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
