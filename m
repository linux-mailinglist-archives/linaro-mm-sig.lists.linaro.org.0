Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A865278726E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 16:54:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B9FC40F31
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 14:54:19 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by lists.linaro.org (Postfix) with ESMTPS id 47EAE3F053
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 14:54:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b="r/u41aDO";
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.160.42 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-1c4cf775a14so4346967fac.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 07:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692888853; x=1693493653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uq2Rz/w+UiLDK0KSC/5EPK5xtKDfT2UzyQDOd90+rl8=;
        b=r/u41aDOlFvgovHMmxhiPpcEp8F3dJl8NxdLPxd0RxgM7IeYIS2+Y1e22SXn2H4JK9
         wAAj07E/4rQfvEHH78dkNfzgCtH8kkUhQ/+e1oEUwY9SAawpg7of/CSO1oMJJ4tBJQoN
         32yY0NGzLKwGIBxObrFeqoO6/fFyk3DmUiI6RzHZQDiYGTYIk4033+rCnWnXwzBHaPwv
         eDa2wI4zP9HwCaZrxWax2aFgAEQiwoOVvI790S2dd2iPQABKg3DvytsQ3hnfosUuLv8X
         Lot58yYxx9ceTIJw7VJqNmkroxkti/8y949toMoaUOgtm1A1DSdd4Pc+yWWedC3nAom9
         +c2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692888853; x=1693493653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uq2Rz/w+UiLDK0KSC/5EPK5xtKDfT2UzyQDOd90+rl8=;
        b=e9dX/UtnCepZDJ7zBjX4kHXu2qQxYfihZZAmdWKJ+3kLJB0bL0hY1JxpC1QxiSvCKk
         9EG+0ZpdniAuO6ZNCNQJReN+BS5EQELOFxBIw47Oh8OAcbqM3HWsPOIq1Q5Tenm2WiiO
         Mk4rR3nSwfX1s06wF2MJerGk1qUe2GACtdkYT8YeyMGKFpgSmIEO48FS8IJtmP0zU5z6
         g5cisHNQf3xZjn8Hes2hwYVzV5yFez7z9IL+JK3pD8yP70DJ+jc0eeL0R12T0iONoOZC
         D0D0P5LAm+9A9b6pgP97Djj000NWOIhMffcid8uzPnk/UNC1p8EJLcD1hGCaVF2ziVbS
         U5pw==
X-Gm-Message-State: AOJu0Yx8Ee9S4iW9Y638KYnDx2FPOfO7cccmHUd2gnpk7yblijwvynUa
	iTWScme1jO3dcaOKPXLDyFWtGAHfMZjI6kmYMio=
X-Google-Smtp-Source: AGHT+IHUyRZ/s5Z6miDsZM4/btsiHyGcD5fOaPP18HwdLud7Ptz241jKPAZW2574frmcEqtpe95tmk35JGOaA0yWEFY=
X-Received: by 2002:a05:6870:702a:b0:1b3:54b5:ac6e with SMTP id
 u42-20020a056870702a00b001b354b5ac6emr19528580oae.50.1692888853662; Thu, 24
 Aug 2023 07:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230824073710.2677348-1-lee@kernel.org> <20230824073710.2677348-13-lee@kernel.org>
In-Reply-To: <20230824073710.2677348-13-lee@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 24 Aug 2023 10:54:02 -0400
Message-ID: <CADnq5_MHVEyxf0-xnbWq7q83OPVmp-0os+Fekaa6BEpXijA_xw@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Rspamd-Queue-Id: 47EAE3F053
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.42:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	NEURAL_HAM(-0.00)[-0.953];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XYUMZ3TNQM2THL5NMPU4JTFEXXC4VUYJ
X-Message-ID-Hash: XYUMZ3TNQM2THL5NMPU4JTFEXXC4VUYJ
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/20] drm/amd/amdgpu/amdgpu_device: Provide suitable description for param 'xcc_id'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XYUMZ3TNQM2THL5NMPU4JTFEXXC4VUYJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gVGh1LCBBdWcgMjQsIDIwMjMgYXQgMzozOOKAr0FNIExl
ZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToNCj4NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9kZXZpY2UuYzo1MTY6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBv
ciBtZW1iZXIgJ3hjY19pZCcgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X21tX3dyZWdfbW1pb19y
bGMnDQo+DQo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+DQo+IC0t
LQ0KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KPiBDYzog
IkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENjOiAiUGFu
LCBYaW5odWkiIDxYaW5odWkuUGFuQGFtZC5jb20+DQo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxp
ZWRAZ21haWwuY29tPg0KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPg0KPiBD
YzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6IGFtZC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZw0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kZXZpY2UuYyB8IDEgKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
DQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2
aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMNCj4gaW5k
ZXggZTc3ZjA0OGM5OWQ4NS4uZDRmMGU0MzI3ZGQzZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYw0KPiBAQCAtNTA3LDYgKzUwNyw3IEBAIHZvaWQg
YW1kZ3B1X2RldmljZV93cmVnKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPiAgICogQGFk
ZXY6IGFtZGdwdV9kZXZpY2UgcG9pbnRlcg0KPiAgICogQHJlZzogbW1pby9ybGMgcmVnaXN0ZXIN
Cj4gICAqIEB2OiB2YWx1ZSB0byB3cml0ZQ0KPiArICogQHhjY19pZDogeGNjIGFjY2VsZXJhdGVk
IGNvbXB1dGUgY29yZSBpZA0KPiAgICoNCj4gICAqIHRoaXMgZnVuY3Rpb24gaXMgaW52b2tlZCBv
bmx5IGZvciB0aGUgZGVidWdmcyByZWdpc3RlciBhY2Nlc3MNCj4gICAqLw0KPiAtLQ0KPiAyLjQy
LjAucmMxLjIwNC5nNTUxZWIzNDYwNy1nb29nDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
