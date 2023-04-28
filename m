Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C4D6F198F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Apr 2023 15:31:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0118744233
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Apr 2023 13:31:48 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lists.linaro.org (Postfix) with ESMTPS id CC7E444233
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Apr 2023 13:31:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=FDeDMqBw;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.210.46 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6a5f8e1f6d1so3855011a34.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Apr 2023 06:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682688704; x=1685280704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kjkfMeDN5MElQoz8pTsP+XGTEHdi6FRFZYxvJHVi3ac=;
        b=FDeDMqBwExbEym6j6TOk37nY9oI4HncB9PyjAK3xsu85s//1YumEwNM6XHMpBiJaTl
         LIcOQoKJF3duQpQ4fi3MUuNe95JzAdbMC+jaDaenqC9vQQ1PkPeCQDxUORlr4jph7+mF
         aeh4W4qQGGJCNLbzlh8+cRDwOptfjIM4q4M1u5OCET/NL/eBuHsz2HgpROszr0KEGVox
         XSGj4sSLwyz5aSOVxxH6xSfd0oTKHk67mW+/DdbNEIUn2vRkkBoWq+38UrBLH0AHIwhl
         qxH1tfTR+iPiFkm6BnPOWuyjX76DWygTZTpasvFWXmgnhAxOU2daWz5NAHvLmcPA197T
         7mYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688704; x=1685280704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kjkfMeDN5MElQoz8pTsP+XGTEHdi6FRFZYxvJHVi3ac=;
        b=hM4jfDdiBR9UZBd7h+Kg9pbTmXhAMDjD4FezKDJ8LH3rx0EDU7Pam5cwj6UFOAn5PF
         1ZsiTnpWU9SyuO927nMQ2RLsFLV903T27grc1KkFbpjkpHaEw8MZYUGtR3Cz+U/6vo+x
         aEq/mXVmjGhFOpyvzj0cKtAf8HMjBcDSgiUD0ohMevzrE9tQSamFCatuluAmnScyA6F4
         mMvFJ3UlazoYtbzjgwK+H2DQVx0IXsqLST9zBTRJbXH/GELQ8MPd5HqBcwRkbz/b9XIh
         nWLd9Nxl1BTNjSoPjL4H4CHiqMdztoii/2vXI+A1tqiC6XYQRTSaILeJPUin0wDjetFx
         y5XA==
X-Gm-Message-State: AC+VfDzQmeMKIVxgAGg8uO4kA1O8IYDQHvbTgpc/71h7wbsrd1YTTLjZ
	uv+dz9mvuW9K/RITLsHMpUJojF1weSnTuCh3bqY=
X-Google-Smtp-Source: ACHHUZ7yvFYc1g1/6ZrWu+yC981EbH+g9hDzh8IJ1jVWuHgi19JnIS7N2v3hh/Wbl3/EX2jYloKqk69fVlW/msgtfZM=
X-Received: by 2002:a05:6870:51d5:b0:18e:ae84:7d87 with SMTP id
 b21-20020a05687051d500b0018eae847d87mr2369255oaj.53.1682688704128; Fri, 28
 Apr 2023 06:31:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230419122233.3440-1-hackyzh002@gmail.com> <CAF6NKda1Jy_wfxaVqWt-o75f1BO-o4JXHY9HS9_JtJ2FHztMmQ@mail.gmail.com>
 <CADnq5_MfynMAPU8c-Lq1X_dcDOdRpjW6i=m-Qo8zsZZ=dO-62w@mail.gmail.com> <CAF6NKdaxK_ZRkKRyWtm9Cj-8fNE9RptW3FjW-V39rmaHaCGHTw@mail.gmail.com>
In-Reply-To: <CAF6NKdaxK_ZRkKRyWtm9Cj-8fNE9RptW3FjW-V39rmaHaCGHTw@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 28 Apr 2023 09:31:33 -0400
Message-ID: <CADnq5_MrRC-htfEn3TbR7pbs4rRZJL=zW-3swuc8VZQyHW0DXw@mail.gmail.com>
To: whitehat002 whitehat002 <hackyzh002@gmail.com>
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.46:from];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-ot1-f46.google.com:rdns,mail-ot1-f46.google.com:helo,patchwork.freedesktop.org:url];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CC7E444233
X-Spamd-Bar: ----
Message-ID-Hash: 6SIMIF3PMDG7CYVC6PSDU6B4OBUZ4F67
X-Message-ID-Hash: 6SIMIF3PMDG7CYVC6PSDU6B4OBUZ4F67
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, daniel@ffwll.ch, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SIMIF3PMDG7CYVC6PSDU6B4OBUZ4F67/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

dGhlc2U/DQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzExNjY5OS8N
Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTE2Njk1Lw0KDQpPbiBU
aHUsIEFwciAyNywgMjAyMyBhdCA4OjQ14oCvUE0gd2hpdGVoYXQwMDIgd2hpdGVoYXQwMDINCjxo
YWNreXpoMDAyQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IEFsZXgsSSBoYXZlIGEgcXVlc3Rpb24s
IHdoeSBJIGRvbid0IHNlZSBpdCBvbiB0aGUNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnLw0KPg0KPiBBbGV4IERldWNoZXIgPGFsZXhkZXVjaGVyQGdtYWlsLmNvbT4g5LqOMjAy
M+W5tDTmnIgyN+aXpeWRqOWbmyAyMDo0MOWGmemBk++8mg0KPiA+DQo+ID4gQXMgcGVyIG15IHBy
aW9yIHJlcGx5LCBpdCBoYXMgYmVlbiBhcHBsaWVkLg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+DQo+
ID4gQWxleA0KPiA+DQo+ID4gT24gVGh1LCBBcHIgMjcsIDIwMjMgYXQgODozOeKAr0FNIHdoaXRl
aGF0MDAyIHdoaXRlaGF0MDAyDQo+ID4gPGhhY2t5emgwMDJAZ21haWwuY29tPiB3cm90ZToNCj4g
PiA+DQo+ID4gPiBoZWxsbw0KPiA+ID4gV2hhdCBpcyB0aGUgY3VycmVudCBzdGF0dXMgb2YgdGhp
cyBwYXRjaCwgaGFzIGl0IGJlZW4gYXBwbGllZD8NCj4gPiA+DQo+ID4gPg0KPiA+ID4gaGFja3l6
aDAwMiA8aGFja3l6aDAwMkBnbWFpbC5jb20+IOS6jjIwMjPlubQ05pyIMTnml6XlkajkuIkgMjA6
MjPlhpnpgZPvvJoNCj4gPiA+ID4NCj4gPiA+ID4gVGhlIHR5cGUgb2Ygc2l6ZSBpcyB1bnNpZ25l
ZCBpbnQsIGlmIHNpemUgaXMgMHg0MDAwMDAwMCwgdGhlcmUgd2lsbA0KPiA+ID4gPiBiZSBhbiBp
bnRlZ2VyIG92ZXJmbG93LCBzaXplIHdpbGwgYmUgemVybyBhZnRlciBzaXplICo9IHNpemVvZih1
aW50MzJfdCksDQo+ID4gPiA+IHdpbGwgY2F1c2UgdW5pbml0aWFsaXplZCBtZW1vcnkgdG8gYmUg
cmVmZXJlbmNlZCBsYXRlci4NCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogaGFja3l6
aDAwMiA8aGFja3l6aDAwMkBnbWFpbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMgfCAyICstDQo+ID4gPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4NCj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMNCj4gPiA+ID4gaW5kZXggMDhlY2Vk
MDk3Li44OWJjYWNjNjUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9jcy5jDQo+ID4gPiA+IEBAIC0xOTIsNyArMTkyLDcgQEAgc3RhdGljIGludCBh
bWRncHVfY3NfcGFzczEoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsDQo+ID4gPiA+ICAgICAg
ICAgdWludDY0X3QgKmNodW5rX2FycmF5X3VzZXI7DQo+ID4gPiA+ICAgICAgICAgdWludDY0X3Qg
KmNodW5rX2FycmF5Ow0KPiA+ID4gPiAgICAgICAgIHVpbnQzMl90IHVmX29mZnNldCA9IDA7DQo+
ID4gPiA+IC0gICAgICAgdW5zaWduZWQgaW50IHNpemU7DQo+ID4gPiA+ICsgICAgICAgc2l6ZV90
IHNpemU7DQo+ID4gPiA+ICAgICAgICAgaW50IHJldDsNCj4gPiA+ID4gICAgICAgICBpbnQgaTsN
Cj4gPiA+ID4NCj4gPiA+ID4gLS0NCj4gPiA+ID4gMi4zNC4xDQo+ID4gPiA+DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
