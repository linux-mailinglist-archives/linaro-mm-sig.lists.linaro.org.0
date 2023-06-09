Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F03872A2CB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Jun 2023 21:06:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 068A843BD8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Jun 2023 19:06:04 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	by lists.linaro.org (Postfix) with ESMTPS id 6D5313EE0B
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Jun 2023 19:05:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=qZOElJiJ;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.161.54 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-558b6cffe03so1418032eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Jun 2023 12:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686337558; x=1688929558;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mOMvkZnPwmIO9rUDsynYpLezUNy31X65xq+c1pvLo/s=;
        b=qZOElJiJqsKIUEZ/4W0bxkDQ5IRO6XWZ6HMgsZGzbdLDwGFlP8zIRzDsmMxJtJo7Pe
         Y4UETOwCudj6NWjmm7+KDVKQfjAYazbUTknxg0t5NnA507jCMfqAN3BSzj58nh2qc5pd
         iIZh207kPMaMO3BRRGpb112M5J1ecsBzRgTER5+J5ssAK06rgNPIFwHWP4XhcLgOfhUl
         YhaciTgZAMas7YjpyOaloenbzB//wX2oLsEDsbKNcbDvULoWO9ZD0HrI1wI2fvTtAyUD
         kbUUZo/e53fFxOtLofLZ8GfIad4ItQDHVSdX/2SckLjjnRy0ePQwdB1u4XKX56trxTkt
         btOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686337558; x=1688929558;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mOMvkZnPwmIO9rUDsynYpLezUNy31X65xq+c1pvLo/s=;
        b=Hm+pYCnQNL1uVfQMMyyaHWYkVLLh6U+5OhOSKXdv+rsA84LZOPfqtx6R6hOE/hKw3Z
         UQzhAgmG/PrLln/PU7bO62qjuO3pBVreeuDMImDVN8aJmctB2MD0o0yaND+bFekQLcKr
         EbPiYF7Ept6U9QKpoxnienVLUNMPB+smHniuZy+VxhM4JqzekXrBXeQNwM8+bFCLUn7N
         upvIIk+4K4OmCJ1M/6qTUxRZvNrkRZG0wC32h/MWi3LU98xK3wUIrHkL6cLgCT9bvmUW
         BQmMtusV18GCnI+jr48gzbl6UUEtkGwekwbGnbPvJCFxGgBBCNwYZym926ltbOU9K5JU
         c8jQ==
X-Gm-Message-State: AC+VfDz2vrxApjHcgPVaj4xPWf35YEmc/Y30m3rkLWHCGLxWjij1YU1r
	zIRnRNVwK5eUqvKKNOe+PoL07jRALAMGna7Ogys=
X-Google-Smtp-Source: ACHHUZ7VVOVGPYkQhvxHXzRFN2Pvvtu5u5tXb4+ByJD8vIVQa6VfmTrN8dYJvKeI4gq0hQCaGTm4nZTtEr62J0fBLcY=
X-Received: by 2002:a4a:e708:0:b0:555:9b48:93de with SMTP id
 y8-20020a4ae708000000b005559b4893demr1382251oou.5.1686337558655; Fri, 09 Jun
 2023 12:05:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230609081732.3842341-1-lee@kernel.org> <20230609081732.3842341-16-lee@kernel.org>
In-Reply-To: <20230609081732.3842341-16-lee@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 9 Jun 2023 15:05:47 -0400
Message-ID: <CADnq5_OVMwV80XbTpdRECa54iDLK8+SGz==KWpWTJN+hs1QAkA@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Spamd-Result: default: False [-11.60 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.54:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.840];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail-oo1-f54.google.com:rdns,mail-oo1-f54.google.com:helo,ffwll.ch:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6D5313EE0B
X-Spamd-Bar: -----------
Message-ID-Hash: W36YDZC7OZMJ4CWP3LK6TBGN2JJNO2MV
X-Message-ID-Hash: W36YDZC7OZMJ4CWP3LK6TBGN2JJNO2MV
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Stanley Yang <Stanley.Yang@amd.com>, dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RESEND 15/15] drm/amd/amdgpu/sdma_v6_0: Demote a bunch of half-completed function headers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W36YDZC7OZMJ4CWP3LK6TBGN2JJNO2MV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlc2UgaGF2ZSBhbHJlYWR5IGJlZW4gZml4ZWQgdXAuDQoNClRoYW5rcyENCg0KQWxleA0KDQpP
biBGcmksIEp1biA5LCAyMDIzIGF0IDQ6MTjigK9BTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3Jn
PiB3cm90ZToNCj4NCj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5p
bmcocyk6DQo+DQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoyNDg6
IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2pvYicgbm90IGRlc2NyaWJl
ZCBpbiAnc2RtYV92Nl8wX3JpbmdfZW1pdF9pYicNCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjZfMC5jOjI0ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJl
ciAnZmxhZ3MnIG5vdCBkZXNjcmliZWQgaW4gJ3NkbWFfdjZfMF9yaW5nX2VtaXRfaWInDQo+ICBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzo5NDU6IHdhcm5pbmc6IEZ1bmN0
aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3RpbWVvdXQnIG5vdCBkZXNjcmliZWQgaW4gJ3NkbWFf
djZfMF9yaW5nX3Rlc3RfaWInDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2
XzAuYzoxMTI0OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdyaW5nJyBu
b3QgZGVzY3JpYmVkIGluICdzZG1hX3Y2XzBfcmluZ19wYWRfaWInDQo+ICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoxMTc1OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0
ZXIgb3IgbWVtYmVyICd2bWlkJyBub3QgZGVzY3JpYmVkIGluICdzZG1hX3Y2XzBfcmluZ19lbWl0
X3ZtX2ZsdXNoJw0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmM6MTE3
NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncGRfYWRkcicgbm90IGRl
c2NyaWJlZCBpbiAnc2RtYV92Nl8wX3JpbmdfZW1pdF92bV9mbHVzaCcNCj4NCj4gQ2M6IEFsZXgg
RGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2
bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogIlBhbiwgWGluaHVpIiA8WGlu
aHVpLlBhbkBhbWQuY29tPg0KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4N
Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCj4gQ2M6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+IENjOiBTdGFubGV5IFlhbmcgPFN0YW5sZXku
WWFuZ0BhbWQuY29tPg0KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIu
a2VybmVsLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IFNpZ25l
ZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmMgfCA4ICsrKystLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9zZG1hX3Y2XzAuYw0KPiBpbmRleCAzYjAzZGRhODU0ZmRjLi44Y2Q3YWJlNzRl
NmM0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYw0KPiBAQCAt
MjMzLDcgKzIzMyw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjZfMF9yaW5nX2luc2VydF9ub3Aoc3Ry
dWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1aW50MzJfdCBjb3VudCkNCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgYW1kZ3B1X3Jpbmdfd3JpdGUocmluZywgcmluZy0+ZnVuY3MtPm5vcCk7DQo+ICB9
DQo+DQo+IC0vKioNCj4gKy8qDQo+ICAgKiBzZG1hX3Y2XzBfcmluZ19lbWl0X2liIC0gU2NoZWR1
bGUgYW4gSUIgb24gdGhlIERNQSBlbmdpbmUNCj4gICAqDQo+ICAgKiBAcmluZzogYW1kZ3B1IHJp
bmcgcG9pbnRlcg0KPiBAQCAtOTM2LDcgKzkzNiw3IEBAIHN0YXRpYyBpbnQgc2RtYV92Nl8wX3Jp
bmdfdGVzdF9yaW5nKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZykNCj4gICAgICAgICByZXR1cm4g
cjsNCj4gIH0NCj4NCj4gLS8qKg0KPiArLyoNCj4gICAqIHNkbWFfdjZfMF9yaW5nX3Rlc3RfaWIg
LSB0ZXN0IGFuIElCIG9uIHRoZSBETUEgZW5naW5lDQo+ICAgKg0KPiAgICogQHJpbmc6IGFtZGdw
dV9yaW5nIHN0cnVjdHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24NCj4gQEAgLTExMTgsNyAr
MTExOCw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjZfMF92bV9zZXRfcHRlX3BkZShzdHJ1Y3QgYW1k
Z3B1X2liICppYiwNCj4gICAgICAgICBpYi0+cHRyW2liLT5sZW5ndGhfZHcrK10gPSBjb3VudCAt
IDE7IC8qIG51bWJlciBvZiBlbnRyaWVzICovDQo+ICB9DQo+DQo+IC0vKioNCj4gKy8qDQo+ICAg
KiBzZG1hX3Y2XzBfcmluZ19wYWRfaWIgLSBwYWQgdGhlIElCDQo+ICAgKiBAaWI6IGluZGlyZWN0
IGJ1ZmZlciB0byBmaWxsIHdpdGggcGFkZGluZw0KPiAgICogQHJpbmc6IGFtZGdwdSByaW5nIHBv
aW50ZXINCj4gQEAgLTExNjcsNyArMTE2Nyw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjZfMF9yaW5n
X2VtaXRfcGlwZWxpbmVfc3luYyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpDQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgU0RNQV9QS1RfUE9MTF9SRUdNRU1fRFc1X0lOVEVSVkFMKDQpKTsg
LyogcmV0cnkgY291bnQsIHBvbGwgaW50ZXJ2YWwgKi8NCj4gIH0NCj4NCj4gLS8qKg0KPiArLyoN
Cj4gICAqIHNkbWFfdjZfMF9yaW5nX2VtaXRfdm1fZmx1c2ggLSB2bSBmbHVzaCB1c2luZyBzRE1B
DQo+ICAgKg0KPiAgICogQHJpbmc6IGFtZGdwdV9yaW5nIHBvaW50ZXINCj4gLS0NCj4gMi40MS4w
LjE2Mi5nZmFmZGRiMGFmOS1nb29nDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
