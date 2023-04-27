Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 758AA6F05F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Apr 2023 14:40:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E96E63F655
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Apr 2023 12:40:06 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by lists.linaro.org (Postfix) with ESMTPS id B71F03F655
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 12:40:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=msyOC8BB;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-38e5c33305cso5760954b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 05:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682599203; x=1685191203;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J6ET9XLS5jM/TyHq4+UE6o4i1yy/wsCl/8+/RTLOHqY=;
        b=msyOC8BBuy7I5069cJ9Fs6UeK9SnEiNiykDGApouWwIVmp6W+w4i7EI0BD6bwq45Te
         Mv8ooCvRm5eCzKziAc0k3FmoE9HbIC5yDZUY+pqJzuVCHk7IWnWr9+mXvwTTuj9l0Ncz
         CMRlMc3859WHiODGKv/+0U7vSrJpu/RWfAH+SyiwNgsOLmX1BVdKgnoAV2YMsITtsmPL
         iFdrpSLUmvyTf8WJnrfeTYpIh//v5KGODvIhdeuaNW1lM1XD3gmrZ34un2ub2iJvj1wM
         LXVyWM9yoKcEjEPrVn+zY9Fu3t3uKe4w/r4/5m/2yU76S0mRQPAZCd3XfuQMVJwWXUBL
         bGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682599203; x=1685191203;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J6ET9XLS5jM/TyHq4+UE6o4i1yy/wsCl/8+/RTLOHqY=;
        b=LBrKB6XbJLkFF5vedhbrlV/MxFqMZUENabCnOvNsvgu3zd8RXnoASlBteRAlDrAZy3
         lu1hcC4mhQpYtMEXDvM+NoTNZ5QDETtj69jYZX4pGQva9RRmWXGvkp2/AANhLvmjLnpT
         GO3uSfDPJs8dZ/VhVdbooDMVfY7Gx5k75ELtTGf8X3Lw/IJAZpwpa9ujYeayAJ9U7JZn
         Lm/lmZp0NQ14oPU1eKUDx9vy6WoDuan1YqqkiF8dKVSs37CcUBSUWwve77doCXqfJdTC
         fob+nApkeHcDfinCBnJjTwvZRhTOER/GItx9U204ekPznhVXBqtiYIC9PGoy2Etg3YZn
         L0qw==
X-Gm-Message-State: AC+VfDzUkLUCgT3YqbaHKX3JWD23QxI1yPMERxGrNiMTniNzpjaw+muM
	XJySeztM6hzM/OCZ/vc0Tm6tKMDHjgmQkbaM84I=
X-Google-Smtp-Source: ACHHUZ5+5nq8G0fdCC1+vwj+KmJkfoWFgNBUEKtOzD2dq9+mpvse2ZJ72PF955P7xK8j8473xqe+Z9K5Jz67W2iX7LQ=
X-Received: by 2002:aca:1307:0:b0:38e:2879:735b with SMTP id
 e7-20020aca1307000000b0038e2879735bmr563675oii.34.1682599203057; Thu, 27 Apr
 2023 05:40:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230419122233.3440-1-hackyzh002@gmail.com> <CAF6NKda1Jy_wfxaVqWt-o75f1BO-o4JXHY9HS9_JtJ2FHztMmQ@mail.gmail.com>
In-Reply-To: <CAF6NKda1Jy_wfxaVqWt-o75f1BO-o4JXHY9HS9_JtJ2FHztMmQ@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 27 Apr 2023 08:39:51 -0400
Message-ID: <CADnq5_MfynMAPU8c-Lq1X_dcDOdRpjW6i=m-Qo8zsZZ=dO-62w@mail.gmail.com>
To: whitehat002 whitehat002 <hackyzh002@gmail.com>
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.173:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B71F03F655
X-Spamd-Bar: ----
Message-ID-Hash: 7CFKEG3LCV7DB23QCGODAXBIOUQDQXTB
X-Message-ID-Hash: 7CFKEG3LCV7DB23QCGODAXBIOUQDQXTB
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, daniel@ffwll.ch, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7CFKEG3LCV7DB23QCGODAXBIOUQDQXTB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgcGVyIG15IHByaW9yIHJlcGx5LCBpdCBoYXMgYmVlbiBhcHBsaWVkLg0KDQpUaGFua3MsDQoN
CkFsZXgNCg0KT24gVGh1LCBBcHIgMjcsIDIwMjMgYXQgODozOeKAr0FNIHdoaXRlaGF0MDAyIHdo
aXRlaGF0MDAyDQo8aGFja3l6aDAwMkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBoZWxsbw0KPiBX
aGF0IGlzIHRoZSBjdXJyZW50IHN0YXR1cyBvZiB0aGlzIHBhdGNoLCBoYXMgaXQgYmVlbiBhcHBs
aWVkPw0KPg0KPg0KPiBoYWNreXpoMDAyIDxoYWNreXpoMDAyQGdtYWlsLmNvbT4g5LqOMjAyM+W5
tDTmnIgxOeaXpeWRqOS4iSAyMDoyM+WGmemBk++8mg0KPiA+DQo+ID4gVGhlIHR5cGUgb2Ygc2l6
ZSBpcyB1bnNpZ25lZCBpbnQsIGlmIHNpemUgaXMgMHg0MDAwMDAwMCwgdGhlcmUgd2lsbA0KPiA+
IGJlIGFuIGludGVnZXIgb3ZlcmZsb3csIHNpemUgd2lsbCBiZSB6ZXJvIGFmdGVyIHNpemUgKj0g
c2l6ZW9mKHVpbnQzMl90KSwNCj4gPiB3aWxsIGNhdXNlIHVuaW5pdGlhbGl6ZWQgbWVtb3J5IHRv
IGJlIHJlZmVyZW5jZWQgbGF0ZXIuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBoYWNreXpoMDAy
IDxoYWNreXpoMDAyQGdtYWlsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2NzLmMgfCAyICstDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2NzLmMNCj4gPiBpbmRleCAwOGVjZWQwOTcuLjg5YmNhY2M2NSAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jDQo+ID4gQEAgLTE5Miw3ICsxOTIs
NyBAQCBzdGF0aWMgaW50IGFtZGdwdV9jc19wYXNzMShzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAq
cCwNCj4gPiAgICAgICAgIHVpbnQ2NF90ICpjaHVua19hcnJheV91c2VyOw0KPiA+ICAgICAgICAg
dWludDY0X3QgKmNodW5rX2FycmF5Ow0KPiA+ICAgICAgICAgdWludDMyX3QgdWZfb2Zmc2V0ID0g
MDsNCj4gPiAtICAgICAgIHVuc2lnbmVkIGludCBzaXplOw0KPiA+ICsgICAgICAgc2l6ZV90IHNp
emU7DQo+ID4gICAgICAgICBpbnQgcmV0Ow0KPiA+ICAgICAgICAgaW50IGk7DQo+ID4NCj4gPiAt
LQ0KPiA+IDIuMzQuMQ0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
