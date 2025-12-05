Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E754DCA7AED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 05 Dec 2025 14:06:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83B283F9BE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Dec 2025 13:06:25 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id D203F3F96E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 13:06:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=neBjLTKE;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42e2e40582eso1206009f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Dec 2025 05:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764939967; x=1765544767; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFWFQJyqNEArb97bML7scQOt1LXkeAlqXlQJNt06ohg=;
        b=neBjLTKEzY4JTW7fUBNUBKoCmCfMupmZWm8RhW/ozYryingdK+rywkB3m3xsya/mAe
         /DxM4wInP0s+DyDluu4Nmc9dZ0vCWXZwaBJjGav/kSCWhYTmWCMmX7Ks1ZcQ+hYSGxMs
         EUlQbqAHMWSIUWhchtGZnyrbOff4ztX34vRzMHG26hH/5+EYX1kH+4HGJL4yqRZPUpr8
         wy6gyjSnvtUkF82kwy/RM5x8ebwJEGmsZLIrY8IGkYK6mQcK5qC0nKWSONh4J4cI7hcU
         MrxkuucwZ2H5g7X+blyHE6/0lv2YU4ejmp6aCpnD5Sk5CC52FFDnxrW4MzupHSQpQ+kI
         Lghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764939967; x=1765544767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xFWFQJyqNEArb97bML7scQOt1LXkeAlqXlQJNt06ohg=;
        b=VueBrPlfcUwAh0lEnNJKxxWaIoyNfs4PAeP6WZeLBUp9ZrQhd1aP2Vx2AHVdWxsHU9
         uINjRUx7lGINY1sxtm5yrXszFFoXd8OfHCbWhOEDknzB4pEKpGXn6RerYs0KbUvSeUjL
         Ih/gqeMq3VvKeWUZzBfE1ig+7msofz1uaYhAcfybXLQMcdVIc1Jddgbx5Y4moqJFe+vR
         J7xJhn7J/DQdl6ZdqzUi1BIL4qQrOw4p9hmHUDlq1COnM6tahxGb4hCsduf4OqQ4sEcQ
         X+0f72ZWIvXxSn3Y2MhbBF6UXqcIHRtO8WVuMtXdVOPMztBQNVu6FybS5tr9Ia3F41w7
         /Vkw==
X-Forwarded-Encrypted: i=1; AJvYcCWAJrnJkA/6Lkvje4qhvoL7nrZlN2BcVGk0qXXPlw6JTgcAIjW2VMB1DBwAwoMhhC3MFK2M2d86bdd/DGBd@lists.linaro.org
X-Gm-Message-State: AOJu0Yx+sg1HYlv3BsglBD0O98bm6KOw0dSKAHkCiAlef4ao+yWa7BL1
	69wx8U3VYQnKhidFTbmcrO0oqX6tYK/3nvxMQQsdF+5DNwPOPs8ZBP0e
X-Gm-Gg: ASbGnctEjkR8OdcbMXDUGsbtkZ7e7EHxkDY98q0YtyxjCrabar7Yy7M1/EZZFNV3ENw
	+Oo5Iw7p8GslvJF04esyjjMKBCejEu5dfxn7K1iUETP5X/2SoxnNQLIt3fvgy7o17+7bUlOVYe9
	gcyFrJz2wYYg1XBW98VcB1BcbyTCgAQoZoaXG32a6CB3mlNyRd4JBq9AnmGCt7aby4tAavK4ob3
	2V6FbRRyyaghl818mkRNuksZ/LJ+PAoRKIlYiQN+4bJxN5/WgweiHmCvbP62i5V9Jn1zrg7VCPH
	QGjDhS7NMeNmNdOZewgiyHgRMUSzHIO/UzZ5h5gsdpWkRBvPV7Kau1EnA8c5Q6xVz9JdwlWaxZk
	+c79GKTCtpdriWslS4XbhXrVnC5EzdyymFtSSm5iWp03qAfOwwGveexJ1H6rw51cpCvzELuuoWt
	heb9JQxwm5T4tRnHyjp1TQyhxStNz3u2v0nJg=
X-Google-Smtp-Source: AGHT+IGfxlBIT32x6zSESU365lwi7/s5pKbkYUArsltfwJzJNeozJNoe1Bd0XdZLIEre56SlNK+6Tw==
X-Received: by 2002:a05:6000:60f:b0:42b:38b1:e32e with SMTP id ffacd0b85a97d-42f79852017mr6685668f8f.46.1764939966620;
        Fri, 05 Dec 2025 05:06:06 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15a5:6d00:a241:8e44:3926:5306])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353f8bsm8914491f8f.43.2025.12.05.05.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 05:06:06 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: matthew.auld@intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	simona.vetter@ffwll.ch,
	michael.j.ruhl@intel.com
Date: Fri,  5 Dec 2025 14:06:04 +0100
Message-ID: <20251205130604.1582-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205130604.1582-1-christian.koenig@amd.com>
References: <20251205130604.1582-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.45:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:15a5:6d00:a241:8e44:3926:5306:server fail];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D203F3F96E
X-Spamd-Bar: ----
Message-ID-Hash: FCRMVUPTC7B7PBLD76CWWETOCKK6HCRA
X-Message-ID-Hash: FCRMVUPTC7B7PBLD76CWWETOCKK6HCRA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: enable DMABUF_DEBUG by default on DEBUG kernels
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FCRMVUPTC7B7PBLD76CWWETOCKK6HCRA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIG92ZXJoZWFkIG9mIGVuZm9yY2luZyB0aGUgRE1BLWJ1ZiBydWxlcyBmb3IgaW1wb3J0ZXJz
IGlzIG5vdyBzbyBsb3cNCnRoYXQgaXQgc2F2ZSB0byBlbmFibGUgaXQgYnkgZGVmYXVsdCBvbiBE
RUJVRyBrZXJuZWxzLg0KDQpUaGlzIHdpbGwgaG9wZWZ1bGx5IHJlc3VsdCBpbiBmaXhpbmcgbW9y
ZSBpc3N1ZXMgaW4gaW1wb3J0ZXJzLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvS2NvbmZp
ZyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVm
L0tjb25maWcNCmluZGV4IGI0NmViOGE1NTJkNy4uZmRkODIzZTQ0NmNjIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQpA
QCAtNTUsNyArNTUsNyBAQCBjb25maWcgRE1BQlVGX01PVkVfTk9USUZZDQogY29uZmlnIERNQUJV
Rl9ERUJVRw0KIAlib29sICJETUEtQlVGIGRlYnVnIGNoZWNrcyINCiAJZGVwZW5kcyBvbiBETUFf
U0hBUkVEX0JVRkZFUg0KLQlkZWZhdWx0IHkgaWYgRE1BX0FQSV9ERUJVRw0KKwlkZWZhdWx0IHkg
aWYgREVCVUcNCiAJaGVscA0KIAkgIFRoaXMgb3B0aW9uIGVuYWJsZXMgYWRkaXRpb25hbCBjaGVj
a3MgZm9yIERNQS1CVUYgaW1wb3J0ZXJzIGFuZA0KIAkgIGV4cG9ydGVycy4gU3BlY2lmaWNhbGx5
IGl0IHZhbGlkYXRlcyB0aGF0IGltcG9ydGVycyBkbyBub3QgcGVlayBhdCB0aGUNCi0tIA0KMi40
My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
