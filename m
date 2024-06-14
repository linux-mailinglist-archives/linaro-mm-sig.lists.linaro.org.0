Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C02909367
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jun 2024 22:30:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C473C410D1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jun 2024 20:30:18 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by lists.linaro.org (Postfix) with ESMTPS id C8E5F410D1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jun 2024 20:30:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=L4ithf0t;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.161.53) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5b97a9a9b4bso1235010eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jun 2024 13:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718397007; x=1719001807; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xJhJt3J2nxJAuqKZHd0QwEciJsDRhZULynwju7SQhhA=;
        b=L4ithf0tuvI2BXmLm8D01qQJekEuGLauxJPLWvRk1hRToH3iI29wlzrPVWaOD8jZCo
         9NgBk1Eypq8eGAc+NBR0JxS4VdcrptJAFVm3s8LpjVtPIF7pA4FnKSWs92jt1ctnaRUb
         E+hUSh/gM8Du6YSrObxU/uuWOKBj24yobACqXoEjhmHfmneeFu4y5lUaDgFkU31zvD5Q
         bLltsa/dPRz9wlfKDm+wf/4g4vtnRG2wxXmOALo/DBf3DdRORsaFzY0OfgIvFBkl0oYc
         1KM+F7DQbudc0gr91CphcS3lFP1cfTtAy/7jj86GMA2U8lEP6OO+1SbAmhfl8NMfogWj
         XLKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718397007; x=1719001807;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJhJt3J2nxJAuqKZHd0QwEciJsDRhZULynwju7SQhhA=;
        b=EolNNBuRQlabFBsgoUkVLvCKyN8wWCdLgypW6kkSuzqDzaft/8+we34gxOMK5EsHgB
         Kzr0bBIvrBhm98RLlqjETpNGFENiFg0sNx7FPQ2hd/dGtYCntA5AKFYcC/p8S9Gwp4gS
         yAeKrWntI1L35E0/McHyocjm09PqFt2GhD75XKXdjfKgU5BynRkk9Y9faIn3PP1bJgJB
         1oVU2n7a+MfMBryhQqWar3RGkKbgkcqF8utq6QV15tokXgbLEns7/2xtsQT0R4TPzXxY
         /qjZB2I53vy7wq8bvFQ5ozQiadoDo+jneZAea3g6M2X51Gkgv40cF/Dy6X/Ux5H1J4qw
         FVqg==
X-Forwarded-Encrypted: i=1; AJvYcCXZzqsiy/v1bfu91febyDH6GSqgzcOUPzptkeI62C15Z7ixx0uGqCsmyX6VrEwCsB3M5zEUQNExRfYvRxWntEJSMofjfKGa669OyoujmVY=
X-Gm-Message-State: AOJu0YzBGIoYzBF6h1YbSMB/FgO6mYRaBQPM56oZP0czlHbk1oX66ysU
	6/8RK0EoSmmwFo7xyBRa73hCpxlC7K76IkRhmF6EEtIRbp60KOIcvUDiTYOOAB8=
X-Google-Smtp-Source: AGHT+IF4C0ydFkr3IsNAr6Blq5SSboC1En/cdpILPHYan7A2ZMTQYSAcMnFNnwq4qkuN3PHcllTO7w==
X-Received: by 2002:a05:6358:9103:b0:19f:5317:49a1 with SMTP id e5c5f4694b2df-19fb51658f7mr465229255d.28.1718397007051;
        Fri, 14 Jun 2024 13:30:07 -0700 (PDT)
Received: from nicolas-tpx395.mtl.collabora.ca (mtl.collabora.ca. [66.171.169.34])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5efc23asm22245446d6.126.2024.06.14.13.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 13:30:06 -0700 (PDT)
Message-ID: <0faecb255d7e1e67153321d9009f9fc8c0810cd7.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jeffrey Hugo <quic_jhugo@quicinc.com>, Tomeu Vizoso
 <tomeu@tomeuvizoso.net>,  Joerg Roedel <joro@8bytes.org>, Will Deacon
 <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Oded Gabbay
 <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp
 Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Fri, 14 Jun 2024 16:30:04 -0400
In-Reply-To: <8f93c724-3c86-c0f4-3a84-8a72817e684c@quicinc.com>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
	 <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
	 <8f93c724-3c86-c0f4-3a84-8a72817e684c@quicinc.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C8E5F410D1
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.53:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[quicinc.com,tomeuvizoso.net,8bytes.org,kernel.org,arm.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,pengutronix.de,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
Message-ID-Hash: R5VC52YVNZWH5NXSORYA4ULL5P6UN2FG
X-Message-ID-Hash: R5VC52YVNZWH5NXSORYA4ULL5P6UN2FG
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R5VC52YVNZWH5NXSORYA4ULL5P6UN2FG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkxlIHZlbmRyZWRpIDE0IGp1aW4gMjAyNCDDoCAxMDoxNiAtMDYwMCwgSmVmZnJleSBI
dWdvIGEgw6ljcml0wqA6DQo+ID4gKwl2ZXJzaW9uID0gcm9ja2V0X3JlYWQoY29yZSwgUkVHX1BD
X1ZFUlNJT04pICsgKHJvY2tldF9yZWFkKGNvcmUsIFJFR19QQ19WRVJTSU9OX05VTSkgJiAweGZm
ZmYpOw0KPiA+ICsJZGV2X2luZm8ocmRldi0+ZGV2LCAiUm9ja2NoaXAgTlBVIGNvcmUgJWQgdmVy
c2lvbjogJWRcbiIsIGNvcmUtPmluZGV4LCB2ZXJzaW9uKTsNCj4gDQo+IEEgcHJvcGVybHkgd29y
a2luZyBkcml2ZXIgc2hvdWxkIGJlIHNpbGVudCBieSBkZWZhdWx0Lg0KDQpUaGlzIGlzIG5vdCB1
bml2ZXJzYWxseSBhY2NlcHRlZCBzdGF0ZW1lbnQuIE1vc3QgZHJpdmVycyBkbyBoYXZlIGEgb25l
IGxpbmUNCiJwcm9iZWQvZGV0ZWN0ZWQiIGtpbmQgb2YgcmVwb3J0Lg0KDQpOaWNvbGFzDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
