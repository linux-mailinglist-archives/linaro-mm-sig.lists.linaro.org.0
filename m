Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2BDA6366E
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Mar 2025 17:41:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42523449FE
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Mar 2025 16:41:33 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 54BA7447DC
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Mar 2025 16:41:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=k7ZoZZjj;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cfe808908so45615e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Mar 2025 09:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742143273; x=1742748073; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7GBF4hrYNg5S2oageJXSHFRedLtcB0fhaX79E6KBaak=;
        b=k7ZoZZjjLWBAid4zScPYqjeimXoon5VLWD+q0d/3VtYz5zqyMMX8hUBlBBuvUck4zM
         e0xmfpmbwG5p30qkYEXYZN3WfWYVbQzpri2kPDsQH3hsvkUVMW+b2WQHz8aZpzGyzVzG
         W7lS0ME7k3HMWcjI+AFSkkDLlt6k1KA7qBqM0/847C0BNGccq5EQBGGpRc86chEIDX89
         PuWBoWGw3gyY2uFj5qaSU+1UtPxRlceHmIrIEzLw7Xiey8ITqm75zGnX/fUFAcljc8kr
         dyzGduOTlGewwEidFFjB2/9R8SbVYx9P553ZIpMCamoWxTYlzOzcPH5esUQrJ4Nw6bDL
         xP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742143273; x=1742748073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7GBF4hrYNg5S2oageJXSHFRedLtcB0fhaX79E6KBaak=;
        b=woluVyZ79dST8JtfVVXzvqJynGzHWK5KoXzqVjUtL4IqEFchU1c/ASUDb3ml001wwX
         l4ugl03RfCXXoWhm72uResZPjOn9e1UKmiATx+pzYCQ7CtrIRehVV576mpGjtL3+acFX
         ml2xoUWFZUss1AFPGSUzi7SdjUwRBaF6EEJZynVa8sFQk6Upw6xX7qhvHN66GflTWi74
         ZKPGoGKKQN+FO/xwOQxR4Dv0qguyc8QexhkMZfkDPlnRrf0kbUC6UQGphYsCW3atypyo
         jp/wKSR4/LcX+JPyV6zCuc4baEaNDF6aCz3W0vBvPfXJbLow9ptMM5ZPta6f3SMNcIDG
         UBlg==
X-Forwarded-Encrypted: i=1; AJvYcCWxfYM1U7HmKOMnBZM/lQOmaPWs3JiauQn66oeWNzExgWIH/UYHg0Pyf2CgJ6vGB9v6gmkWUuM+czykb9OD@lists.linaro.org
X-Gm-Message-State: AOJu0Yzyx67M6w7xS7N7O4D1/v45JWoK9xHYwsIlNuJXPnh2PLHrZQo8
	8Efaih3+/m/uOVy4WPpLvRXrIatKnkaz6c3lRy1v1YugKNi5hM5zOb+17FsQdIGQkMBGLyHL/Ol
	LzZgr8x84+++fMj+Sg/WCWH0xtZnS7byrywJ6
X-Gm-Gg: ASbGncvQU4/bO3s+MkLOOuh+R0gs78qwHdAujgTh/Z9L1+vuA5lU+cMUtR7EHpNrsTb
	W4/ID51Xsv7u73Dgzocm7M32ml9T9yfpGYNtHg3R08vvDmkD25mrhYL688zMscydBRMgjM/GpRD
	xk1e3KjNCsMZ4jPri3Ivcq5tMP
X-Google-Smtp-Source: AGHT+IF01D4Ob7pcCq8yAjLqxY9BCY5mwz1iWe7tPkMuZuzOjPrqhF7cEGLklDlZvCaLJveOXlkJJNWEbV8nPmuKJPg=
X-Received: by 2002:a05:600d:14:b0:43b:df25:8c4 with SMTP id
 5b1f17b1804b1-43d251f360emr1754805e9.4.1742143273244; Sun, 16 Mar 2025
 09:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250315130201758KxKWj6Mb7bgN6SqVrzu94@zte.com.cn>
In-Reply-To: <20250315130201758KxKWj6Mb7bgN6SqVrzu94@zte.com.cn>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Sun, 16 Mar 2025 09:41:01 -0700
X-Gm-Features: AQ5f1JouN29fy-ISQChV-CR0419-uR30-ym4OBM0CsdHXmZK3sOodPrtzjtePzw
Message-ID: <CABdmKX02xw+bDiW9ruXO+nLtDdidQsfKOp-N7NgvACHKyYq8xw@mail.gmail.com>
To: feng.wei8@zte.com.cn
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 54BA7447DC
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.128.49:from];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: QHCX6ZXGWRT2G2SF2K2ZTGJPHGH7HIUZ
X-Message-ID-Hash: QHCX6ZXGWRT2G2SF2K2ZTGJPHGH7HIUZ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, brian.starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Replace nested max() with single max3()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QHCX6ZXGWRT2G2SF2K2ZTGJPHGH7HIUZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXIgMTQsIDIwMjUgYXQgMTA6MDLigK9QTSA8ZmVuZy53ZWk4QHp0ZS5jb20uY24+
IHdyb3RlOg0KPg0KPiBGcm9tOiBGZW5nV2VpIDxmZW5nLndlaThAenRlLmNvbS5jbj4NCj4NCj4g
VXNlIG1heDMoKSBtYWNybyBpbnN0ZWFkIG9mIG5lc3RpbmcgbWF4KCkgdG8gc2ltcGxpZnkgdGhl
IHJldHVybg0KPiBzdGF0ZW1lbnQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEZlbmdXZWkgPGZlbmcu
d2VpOEB6dGUuY29tLmNuPg0KDQpUaGUgY29tbWl0IHN1YmplY3Qgc2hvdWxkIGluY2x1ZGUgImRt
YS1idWY6IGhlYXBzOiIgYXMgYSBwcmVmaXguDQoNCldpdGggdGhhdDoNClJldmlld2VkLWJ5OiBU
LkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9k
bWEtYnVmL2RtYS1oZWFwLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
aGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gaW5kZXggM2NiZTg3ZDRhNDY0
Li45NmNiOWFiNTczMWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5j
DQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+IEBAIC0xNDcsNyArMTQ3LDcg
QEAgc3RhdGljIGxvbmcgZG1hX2hlYXBfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVk
IGludCB1Y21kLA0KPiAgICAgICAgICAgICAgICAgaW5fc2l6ZSA9IDA7DQo+ICAgICAgICAgaWYg
KCh1Y21kICYga2NtZCAmIElPQ19PVVQpID09IDApDQo+ICAgICAgICAgICAgICAgICBvdXRfc2l6
ZSA9IDA7DQo+IC0gICAgICAga3NpemUgPSBtYXgobWF4KGluX3NpemUsIG91dF9zaXplKSwgZHJ2
X3NpemUpOw0KPiArICAgICAgIGtzaXplID0gbWF4Myhpbl9zaXplLCBvdXRfc2l6ZSwgZHJ2X3Np
emUpOw0KPg0KPiAgICAgICAgIC8qIElmIG5lY2Vzc2FyeSwgYWxsb2NhdGUgYnVmZmVyIGZvciBp
b2N0bCBhcmd1bWVudCAqLw0KPiAgICAgICAgIGlmIChrc2l6ZSA+IHNpemVvZihzdGFja19rZGF0
YSkpIHsNCj4gLS0NCj4gMi4yNS4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
