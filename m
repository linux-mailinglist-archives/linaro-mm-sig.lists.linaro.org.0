Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1333A6E7B3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Apr 2023 15:49:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0BEF3F5B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Apr 2023 13:49:25 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	by lists.linaro.org (Postfix) with ESMTPS id A53E73E96E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 13:49:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=g6DUqsbu;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.160.43 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-187f5b6a7e3so688191fac.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 06:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681912160; x=1684504160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ym31HW14DbhCOWHrnpXKAPN5kGz7nsQnyeLEhvgz9o8=;
        b=g6DUqsbuqHCbSnGehf924bmMmY5pk8Jf320EWXg+W/jXCTmRx9mO2tW0hXviPMnP/v
         n0jaFKOt1zAjyYScjefGItuXl3SpqypDwKjPys8cAemLMLZpQwWKuV5awwimcpx4xAtT
         xl83lQBtTvOAwJiZkIFzI8KCJ003nRW1JHU316/6AFEGSwbuaibWiB4gh6b9d+7F1u3V
         GCGN2MuPwgpU2ywXp0cqvC2bBdq7j+8yuPbgHQhudUfSJg4FPAwZwFCzOL6XiR0snabn
         gAgK5coRUH2r7NecaHDAXzGS5sOcIoOl25ti9vny7GH/T5ocwf6oXtq1CtTQz9TYsfHC
         vx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681912160; x=1684504160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ym31HW14DbhCOWHrnpXKAPN5kGz7nsQnyeLEhvgz9o8=;
        b=IIUiC2TwXMKb4vdxu5SPpH677ZcQiIb/qTbyhdDUHYya/pyJGPZ5Ezbc2Fh3ylqP/X
         fwcq98/wGCNbP/X1jRF25G+j85AIZ+CG9yPaJHbjUarxylDke8EtBmvVzL9Mp3/n7uoG
         utTgoLoRTPBBAtzIoTkXxHlioOUwSwguG0VtJfpHIRj4FXpQqoEeRTU5eu/o7F68QyGv
         b2QtySo0Nz4gFE5HBHpAAHpFYGRxTUqxkgHi8It7c+DsM8g1oRrrbFaKrZDIEB7UNruH
         Xtl1PpgJDMR7HymPEdFnpuYjFh1nSO8XA8p5atn5cwKavXFZUigJoZ7oEWLLWJ1C75BM
         iyWA==
X-Gm-Message-State: AAQBX9fSl7pzrdyN3FKkrR+b+3rrS4gKA1zqftCns0Nnhl/6Ns51ojdj
	AV01+xEjtq6D97P80Ni4EBXMVDc/j1riJVMBbzg=
X-Google-Smtp-Source: AKy350b110hiRRnRO2oyRNWOm123YhKy0RQQnjnzlfFFQSuvDWkapRzEnWNE+yypdLSgtPsQ+wPMtI+zb8uc8w41WC4=
X-Received: by 2002:a05:6870:c229:b0:187:e563:77b9 with SMTP id
 z41-20020a056870c22900b00187e56377b9mr3674088oae.45.1681912159993; Wed, 19
 Apr 2023 06:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230419122058.3420-1-hackyzh002@gmail.com> <62ae58cb-9fec-37ca-fd40-12bf0c1c5ba3@amd.com>
In-Reply-To: <62ae58cb-9fec-37ca-fd40-12bf0c1c5ba3@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 19 Apr 2023 09:49:08 -0400
Message-ID: <CADnq5_MTgMtHM87YQJcZLcENevcHOuQihoTz-xRetypJ6BQSXQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Result: default: False [-9.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.160.43:from];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.43:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A53E73E96E
X-Spamd-Bar: ---------
Message-ID-Hash: 5X5YGXFHR6UNOWHPKZ7OJGU6YDJRSIJH
X-Message-ID-Hash: 5X5YGXFHR6UNOWHPKZ7OJGU6YDJRSIJH
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: hackyzh002 <hackyzh002@gmail.com>, alexander.deucher@amd.com, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3 1/2] drm/radeon: Fix integer overflow in radeon_cs_parser_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5X5YGXFHR6UNOWHPKZ7OJGU6YDJRSIJH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KQWxleA0KDQpPbiBXZWQsIEFwciAxOSwgMjAyMyBhdCA4OjI0
4oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6
DQo+DQo+IEFtIDE5LjA0LjIzIHVtIDE0OjIwIHNjaHJpZWIgaGFja3l6aDAwMjoNCj4gPiBUaGUg
dHlwZSBvZiBzaXplIGlzIHVuc2lnbmVkLCBpZiBzaXplIGlzIDB4NDAwMDAwMDAsIHRoZXJlIHdp
bGwgYmUgYW4NCj4gPiBpbnRlZ2VyIG92ZXJmbG93LCBzaXplIHdpbGwgYmUgemVybyBhZnRlciBz
aXplICo9IHNpemVvZih1aW50MzJfdCksDQo+ID4gd2lsbCBjYXVzZSB1bmluaXRpYWxpemVkIG1l
bW9yeSB0byBiZSByZWZlcmVuY2VkIGxhdGVyDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBoYWNr
eXpoMDAyIDxoYWNreXpoMDAyQGdtYWlsLmNvbT4NCj4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gZm9yIHRoZSBzZXJpZXMuDQo+DQo+
ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jIHwgMyArKy0N
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYw0KPiA+IGluZGV4IDQ2YTI3ZWJmNC4u
YTY3MDBkNzI3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X2NzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jDQo+ID4g
QEAgLTI3MCw3ICsyNzAsOCBAQCBpbnQgcmFkZW9uX2NzX3BhcnNlcl9pbml0KHN0cnVjdCByYWRl
b25fY3NfcGFyc2VyICpwLCB2b2lkICpkYXRhKQ0KPiA+ICAgew0KPiA+ICAgICAgIHN0cnVjdCBk
cm1fcmFkZW9uX2NzICpjcyA9IGRhdGE7DQo+ID4gICAgICAgdWludDY0X3QgKmNodW5rX2FycmF5
X3B0cjsNCj4gPiAtICAgICB1bnNpZ25lZCBzaXplLCBpOw0KPiA+ICsgICAgIHU2NCBzaXplOw0K
PiA+ICsgICAgIHVuc2lnbmVkIGk7DQo+ID4gICAgICAgdTMyIHJpbmcgPSBSQURFT05fQ1NfUklO
R19HRlg7DQo+ID4gICAgICAgczMyIHByaW9yaXR5ID0gMDsNCj4gPg0KPg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
