Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B18526F5605
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:24:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD39B3F95B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:24:04 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id D167F3EE2C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 07:44:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b="Z/MeeZiH";
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.208.50 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5083bd8e226so12497822a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 00:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682581491; x=1685173491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yN4Wi6us9tqsW8wES8TfgapwiSQM5W3hLxG1tm9HFuk=;
        b=Z/MeeZiHBqR8BxiSLLgHCC/EH/QJKBpmBB+s+TiEbkHjNHGfQk8bgl3fEdk6cTAb8s
         i5Rgr7ATOP4iz9wyQn6Aecx1h53Y7H/iWCEF3Xs1jE6x40FOT7R87qeSkCvdCDsnX3oM
         o7J6sMW/R47q/Q95xro8n92wplp3kDXiWD2xJr75vZTJrwQUwzjwYHPZkolBOMlHwZC6
         LeTwzxCIf4xH76inLIaInXPJhcTfXWNcXkwUyGxuN7+aEVNRnjZhgEnXr73M0Vyo7AoP
         XYXo7mO5TFHAHW606Dt5BMF5OXx3j7KHPy0Q5SU2Njjve624+FyCJcm5dvnNRJ2HorOy
         4yNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682581491; x=1685173491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yN4Wi6us9tqsW8wES8TfgapwiSQM5W3hLxG1tm9HFuk=;
        b=aTjcXnbCtJUVIkEAySkjXDXVrzfLFNs8Nv+IBgqD3cgf1zTzQ9FJmwa62Qgprj/1lN
         Q73RcHKeee6Tx4gkRSBh/aHxB5Aosrr2VDeJT50iFSrPBiR6ksQLOr+j6sFN33/R6+yR
         0q5LvquE+c3dH9d3UTMfP/fgN3KRZ10A8mttkMCHJhvMAPLG4Je4xEzOMvFNR47jMrL/
         p6PklI+l1t4NqgwjkO4yt2+BzLjgCUTWJFMyXl9ZYIH1I+oeXGN0IT3D9XM+hg9iBUsM
         8gKei27L+UxcCj9rHAne//V5l+qhBTy9pQpzUxtpm62wgoBo/RoiWHZI51yzgGPycK9Z
         uzYQ==
X-Gm-Message-State: AC+VfDysGKJMxDXy0nsf8STIYU38RQDQZ00mVr7hHQfPUVT46Rp5gvLv
	TmdrlEuijOkoEjquiTG5EQ28rtuF6kqt6Tf+TU0=
X-Google-Smtp-Source: ACHHUZ7Ivm3w6KJmjlpirXR7ZF+N4Jh+ldZEPc5yzcTHChvJ2LMc/imtrzBOL4rDvKcbf9E6AyOGILa+jzdbdHALb4Q=
X-Received: by 2002:a17:907:961b:b0:94e:6a24:9463 with SMTP id
 gb27-20020a170907961b00b0094e6a249463mr909190ejc.28.1682581491617; Thu, 27
 Apr 2023 00:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230419122233.3440-1-hackyzh002@gmail.com>
In-Reply-To: <20230419122233.3440-1-hackyzh002@gmail.com>
From: whitehat002 whitehat002 <hackyzh002@gmail.com>
Date: Thu, 27 Apr 2023 15:44:39 +0800
Message-ID: <CAF6NKda1Jy_wfxaVqWt-o75f1BO-o4JXHY9HS9_JtJ2FHztMmQ@mail.gmail.com>
To: alexander.deucher@amd.com
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D167F3EE2C
X-Spamd-Bar: ----
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7TRLFUPGTQWTCOVLBCBC7V2EAI76TY3O
X-Message-ID-Hash: 7TRLFUPGTQWTCOVLBCBC7V2EAI76TY3O
X-Mailman-Approved-At: Wed, 03 May 2023 10:17:47 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7TRLFUPGTQWTCOVLBCBC7V2EAI76TY3O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aGVsbG8NCldoYXQgaXMgdGhlIGN1cnJlbnQgc3RhdHVzIG9mIHRoaXMgcGF0Y2gsIGhhcyBpdCBi
ZWVuIGFwcGxpZWQ/DQoNCg0KaGFja3l6aDAwMiA8aGFja3l6aDAwMkBnbWFpbC5jb20+IOS6jjIw
MjPlubQ05pyIMTnml6XlkajkuIkgMjA6MjPlhpnpgZPvvJoNCj4NCj4gVGhlIHR5cGUgb2Ygc2l6
ZSBpcyB1bnNpZ25lZCBpbnQsIGlmIHNpemUgaXMgMHg0MDAwMDAwMCwgdGhlcmUgd2lsbA0KPiBi
ZSBhbiBpbnRlZ2VyIG92ZXJmbG93LCBzaXplIHdpbGwgYmUgemVybyBhZnRlciBzaXplICo9IHNp
emVvZih1aW50MzJfdCksDQo+IHdpbGwgY2F1c2UgdW5pbml0aWFsaXplZCBtZW1vcnkgdG8gYmUg
cmVmZXJlbmNlZCBsYXRlci4NCj4NCj4gU2lnbmVkLW9mZi1ieTogaGFja3l6aDAwMiA8aGFja3l6
aDAwMkBnbWFpbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2NzLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMNCj4gaW5k
ZXggMDhlY2VkMDk3Li44OWJjYWNjNjUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9jcy5jDQo+IEBAIC0xOTIsNyArMTkyLDcgQEAgc3RhdGljIGludCBhbWRncHVfY3Nf
cGFzczEoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsDQo+ICAgICAgICAgdWludDY0X3QgKmNo
dW5rX2FycmF5X3VzZXI7DQo+ICAgICAgICAgdWludDY0X3QgKmNodW5rX2FycmF5Ow0KPiAgICAg
ICAgIHVpbnQzMl90IHVmX29mZnNldCA9IDA7DQo+IC0gICAgICAgdW5zaWduZWQgaW50IHNpemU7
DQo+ICsgICAgICAgc2l6ZV90IHNpemU7DQo+ICAgICAgICAgaW50IHJldDsNCj4gICAgICAgICBp
bnQgaTsNCj4NCj4gLS0NCj4gMi4zNC4xDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
