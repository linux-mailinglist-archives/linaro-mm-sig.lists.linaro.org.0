Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6F66FB33A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 May 2023 16:49:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D9E544374
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 May 2023 14:48:59 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lists.linaro.org (Postfix) with ESMTPS id 101943EE98
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 May 2023 14:48:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=kYnsHzNb;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.160.49 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1929818d7faso31929076fac.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 May 2023 07:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683557335; x=1686149335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=04DgYL9ZmEKaOVbUM4T7mAu34s7OhOg8hMlDmx91xxc=;
        b=kYnsHzNbR1qG49sGNL1PXh2+Zlj+RgCIFyEXKDff56OhszMSee14AKlklmCWAScd9Q
         zDRxPh0O5sQhykgRgzyBKJ/34sn8gDAAZnsYK+/6q1mn4TY8bMcQlg/Lvm8LZLy3+R7r
         sMYljHaVKy3B39wEtUVFYdhIhKfhvOKXG1KpE3xqE5BN38AFGodiMZ3o74hkkv448irY
         piLnoEnf6l/zg/uEYgnZfp6bC+fF8yLbFMOBpFBzecculsyj2gEMsRanL04l/ySbLldj
         7i7atqVlypl5Pqo2sKoptt8NoeRwWUzpXdubYghD+cAWPvVeJAXrOnQ2qiIogfn8wsww
         0pVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683557335; x=1686149335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04DgYL9ZmEKaOVbUM4T7mAu34s7OhOg8hMlDmx91xxc=;
        b=M3SQ3cfjiDceIqfpfLkl1/ewxfoIJAaYj97fWnr8aeAUoQKJuzjQ5dHsjUlxUTovnh
         b+LzYDGW7Q3KQY9UIFuwfTZHFdPcYN8WBeDMIrMq0fAzSf7IV2cW7tEcMibH+vVY7wYt
         lu3SiQPLxQmlY8ri6/VA7mh08fYM+vJJXd0Txg4O7zoTXnN6PNepv5BnHTNGlf5YXkY8
         0oM+wK3x1ijLScuj64Btf1Hsew1CLchbc8wdCXZFmCxQS0qTMlGwkX3vJO/ReeNg0rus
         9aSUP+zGSrgRUM/26Z1/mwXPFbjZl8SayrzVCkVx/pBWkDmRSqcyq+gQrguHpllSZYIY
         q7fQ==
X-Gm-Message-State: AC+VfDxBU4lYAyQ0pIgsyX/RCXUnrEX0hmaN7ww+Ymp0Fdq/BOSpAWme
	/ZZzn1o/tycZxvmtm9tec6TJGVf6FmmcNS/NAwE=
X-Google-Smtp-Source: ACHHUZ5uFtaaZR1vMZ02+lkLzojO4L4M4UVAAAwwix4mKnkizhVuz2ka1KhN5RWUbkjK0YLdJfR0IvFX1S/fG8H60ys=
X-Received: by 2002:aca:df03:0:b0:38c:2c79:37e with SMTP id
 w3-20020acadf03000000b0038c2c79037emr7844626oig.20.1683557335416; Mon, 08 May
 2023 07:48:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230506081043.73456-1-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <20230506081043.73456-1-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 8 May 2023 10:48:43 -0400
Message-ID: <CADnq5_PCdwi_d_gPjH0uBngHanzzC1nk8vfTRMO=ZrP6dSVY2Q@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.49:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.889];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 101943EE98
X-Spamd-Bar: ----
Message-ID-Hash: F2OXHGWYOZOVCAHA3J47R6ZIV3AK6H6B
X-Message-ID-Hash: F2OXHGWYOZOVCAHA3J47R6ZIV3AK6H6B
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, Xinhui.Pan@amd.com, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Remove the unused variable golden_settings_gc_9_4_3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F2OXHGWYOZOVCAHA3J47R6ZIV3AK6H6B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gU2F0LCBNYXkgNiwgMjAyMyBhdCA0OjEx4oCvQU0gSmlh
cGVuZyBDaG9uZw0KPGppYXBlbmcuY2hvbmdAbGludXguYWxpYmFiYS5jb20+IHdyb3RlOg0KPg0K
PiBWYXJpYWJsZSBnb2xkZW5fc2V0dGluZ3NfZ2NfOV80XzMgaXMgbm90IGVmZmVjdGl2ZWx5IHVz
ZWQsIHNvIGRlbGV0ZSBpdC4NCj4NCj4gZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y5
XzRfMy5jOjQ4OjM4OiB3YXJuaW5nOiDigJhnb2xkZW5fc2V0dGluZ3NfZ2NfOV80XzPigJkgZGVm
aW5lZCBidXQgbm90IHVzZWQuDQo+DQo+IFJlcG9ydGVkLWJ5OiBBYmFjaSBSb2JvdCA8YWJhY2lA
bGludXguYWxpYmFiYS5jb20+DQo+IExpbms6IGh0dHBzOi8vYnVnemlsbGEub3BlbmFub2xpcy5j
bi9zaG93X2J1Zy5jZ2k/aWQ9NDg3Nw0KPiBTaWduZWQtb2ZmLWJ5OiBKaWFwZW5nIENob25nIDxq
aWFwZW5nLmNob25nQGxpbnV4LmFsaWJhYmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2dmeF92OV80XzMuYyB8IDQgLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQg
ZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9nZnhfdjlfNF8zLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfNF8zLmMN
Cj4gaW5kZXggMzEyNDkxNDU1MzgyLi43NGJlNDZkMzgyZjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV80XzMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9nZnhfdjlfNF8zLmMNCj4gQEAgLTQ1LDEwICs0NSw2IEBAIE1PRFVMRV9G
SVJNV0FSRSgiYW1kZ3B1L2djXzlfNF8zX3JsYy5iaW4iKTsNCj4gICNkZWZpbmUgR0ZYOV9NRUNf
SFBEX1NJWkUgNDA5Ng0KPiAgI2RlZmluZSBSTENHX1VDT0RFX0xPQURJTkdfU1RBUlRfQUREUkVT
UyAweDAwMDAyMDAwTA0KPg0KPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBzb2MxNV9yZWdfZ29sZGVu
IGdvbGRlbl9zZXR0aW5nc19nY185XzRfM1tdID0gew0KPiAtDQo+IC19Ow0KPiAtDQo+ICBzdGF0
aWMgdm9pZCBnZnhfdjlfNF8zX3NldF9yaW5nX2Z1bmNzKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2KTsNCj4gIHN0YXRpYyB2b2lkIGdmeF92OV80XzNfc2V0X2lycV9mdW5jcyhzdHJ1Y3QgYW1k
Z3B1X2RldmljZSAqYWRldik7DQo+ICBzdGF0aWMgdm9pZCBnZnhfdjlfNF8zX3NldF9nZHNfaW5p
dChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldik7DQo+IC0tDQo+IDIuMjAuMS43LmcxNTMxNDRj
DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
