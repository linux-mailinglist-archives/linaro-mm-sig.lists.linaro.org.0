Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE583890886
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 19:47:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D03DD3F087
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 18:47:25 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8A1A83F087
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 18:47:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=B33c554w;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.47 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-513e14b2bd9so1462362e87.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 11:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711651642; x=1712256442; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hZcpotxQXgYZCgwQSFwHplGgALMDuSMOW4BVWfQ6+9A=;
        b=B33c554w6kq5TRzUPsmXHZXerLQAJi/hACh1SBEsHS6sb+1Qm9k3l94Kgz5jtrKhJu
         B8VGkhJCpUB0x5HNyLU7fc/DdMD8/ybWtna1ymI1VJz1B5eu3mvIAfrQSImmpSG/JTyH
         ZEcR71TnSWniw647H9u8Lt0IfsL5/kBy1GIV8iSFn19C6t2T+wanMrTkFO+ZUr2zz9oa
         j479goSqzJA+c9/oLKLpBSvensbXHNL8ycKvhcD4N1FBdXJY59FI3gZArRn5i3dPbMvM
         ppcALtPav/xt62pG1jZ1EMsT2zEQvkcg/liysRdg8dB4AiKvPMAJ7wanX6X4oK4MjVXI
         ODaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711651642; x=1712256442;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hZcpotxQXgYZCgwQSFwHplGgALMDuSMOW4BVWfQ6+9A=;
        b=pqh5vPBfoeVMW7axtFvVDZWmL6soYFetUZr80QaKsSVbxuckFiZDpIk/1lsddMp+He
         IPqR+GGkz6JypuEE8YApOAnmXz7hiE+OiTCm3uTEkaqhvsxTfATu2vjLDv7SsOTdO0Hh
         zmpPgQrN+37OKS9EfIugTpFZnF4CONCTKug7aI/AZ6F5shylHjYilKdCslogx55h/yNc
         87lIBrJMy2AtfAtTRkcWOno1gLkW/OwbbjyO/N5kGBdtxE57FMWHZ5ayFgxefBd++yVk
         TDLGUCJpsYx6xa5QrNO92XqWLwBUP6HudqjCN+Y7bPyIDtiQ51G2anKtFhcvK/SulKCK
         63cw==
X-Forwarded-Encrypted: i=1; AJvYcCVgLhQ/YXh5EnB7XVJrubuS+4mdl3QoxETY/kwa384Yv4aAuWaENCp0Ji0cWLdlJGzJFTEcseqOaePq8P7g+iHgmg3HCUlKi3d/h4pULac=
X-Gm-Message-State: AOJu0Yz2vwDPb275LOrkqXl3PDIoMqcm1A5IE/9Ch2Lc4rppXl/wbu2C
	1ghBnx93WCqNeEurskLBwtnOOBR7hXSmu5kjpnnbeFTwa4TowHbF+vL0FoLKe2uH3EvH17v+l9n
	vzWuOQ6NHZf5eIzGvq4c+PIWI5u4=
X-Google-Smtp-Source: AGHT+IGrUuWiVBRFGJLa2HHSOZSFA2vD/h9fV90E+9dmixoq6VsYE1/GCZtKZYQGR4OnS8a+gJ8E+4yj5f4ATtiXG7k=
X-Received: by 2002:a05:6512:48d1:b0:513:eac3:9f7d with SMTP id
 er17-20020a05651248d100b00513eac39f7dmr199474lfb.65.1711651642040; Thu, 28
 Mar 2024 11:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240322214801.319975-1-robdclark@gmail.com> <1Wwj_q3RYer6np0Orz0wJd9dlF82iBSX-PIVSlhCgJbpfVBMHF_CF04gHojkvqnvz9NXH6kACZGXQG9yXwtkbjIzLmdi-GNDkO5Nz2E-J9Y=@emersion.fr>
In-Reply-To: <1Wwj_q3RYer6np0Orz0wJd9dlF82iBSX-PIVSlhCgJbpfVBMHF_CF04gHojkvqnvz9NXH6kACZGXQG9yXwtkbjIzLmdi-GNDkO5Nz2E-J9Y=@emersion.fr>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 28 Mar 2024 11:47:09 -0700
Message-ID: <CAF6AEGvUsP7fjqFH9Co1vE0ZGRmMXmFBCrNc3hCQwxky3mME3A@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
X-Rspamd-Queue-Id: 8A1A83F087
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.78 / 15.00];
	BAYES_HAM(-0.78)[84.54%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.47:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.960];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: O2MWJX2ZXYNTBGF2J57XRFB6K62UPOUR
X-Message-ID-Hash: O2MWJX2ZXYNTBGF2J57XRFB6K62UPOUR
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Dominik Behr <dbehr@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/prime: Unbreak virtgpu dma-buf export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O2MWJX2ZXYNTBGF2J57XRFB6K62UPOUR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjYsIDIwMjQgYXQgMjoxNeKAr0FNIFNpbW9uIFNlciA8Y29udGFjdEBlbWVy
c2lvbi5mcj4gd3JvdGU6DQo+DQo+IE1ha2VzIHNlbnNlIHRvIG1lIQ0KPg0KPiBSZXZpZXdlZC1i
eTogU2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPg0KDQpUaGFua3MuLiBhbnkgY2hhbmNl
IEkgY291bGQgdGFsayB5b3UgaW50byBwdXNoaW5nIHRvIGRybS1taXNjLWZpeGVzPw0KDQpCUiwN
Ci1SDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
