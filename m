Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4F8735F4D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jun 2023 23:39:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEAE43EF82
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jun 2023 21:39:17 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id 8186F3EF82
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jun 2023 21:39:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=RPfDbbXu;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.178 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2b474dac685so25726151fa.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jun 2023 14:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687210739; x=1689802739;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NJqgFyZORxKSRICxsmBFhPlaldFyLWkexWK7bDGxjGc=;
        b=RPfDbbXupqzacz7KmZUEQIISSc1lhv+2xRsN7vCGYpBl6AXY9CbUmlVWhZ98RO3D42
         nVQ8K02IklHfRbbOREnhR5b8ttJtfv5xqS3zYzOKuo76kZCzNQQqoqeAO4AUV2DFuUzG
         DniqlfoxeWNQlHekVLs0UT9jbTxhIjD2aUk0Esm/2CsTRRKhZ0pD10m8d1ZG6AyGuYws
         YwK9aOTmhf+qQCZ6mDc8Dxyb5p3EEvQ6npsQ7e/ZtvUyZU2WEN8z+0PBX6gwIWBQi0qW
         fSyQdThWVI6RDHslTDs5eRZQoUcmG9jTevSVKtBGTZHvByvIDf6E+fV2/YAWve5/wkkh
         KfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687210739; x=1689802739;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NJqgFyZORxKSRICxsmBFhPlaldFyLWkexWK7bDGxjGc=;
        b=PJKIZeDzullI8dMPNhkPGb3f0+y2W8iAPeFywQXZMAC2uwYhxHjQNL4oRUtVMypOm2
         S9thJWD9s21fOeDnb+PglsbHVSAbCYq/35D1IczeLWlIJi3/T3WbnRUc41uX0Lb/yc1R
         kT6m84oF0D9WpRiy4Gbv8MDLCtqQC8bteiC80ZqIyewRcc3u4bA8KvgsCzLrQEfM6TV4
         eNUNEd+FT57tjIhpgzb1c0O+yY+PRXwUj3lI4GHZ1b5VfJlfR24ZyDWhsukQmXd0bSNA
         7UueGgs5yZ+WAth83qVhVsA2GF7XKwPjFQcTOHw2ga6AY/HhN/HzwnMfR2Swgl7jzCO6
         luOw==
X-Gm-Message-State: AC+VfDzsQTF2E8S4CQIi5dLrRzYhkwEi20FcijusifNilB605bybs7/o
	QThM8caHw02c/kuAJPF3QF1DTIxt
X-Google-Smtp-Source: ACHHUZ7mho7mHSB6JCzN3pI1HKBCa5gj+wq/4VTVHdrMTAaqPwUmQrdQYLCZ6sPJApcpZkejhtLHCA==
X-Received: by 2002:a2e:9189:0:b0:2b4:75b7:edda with SMTP id f9-20020a2e9189000000b002b475b7eddamr2530334ljg.24.1687210739281;
        Mon, 19 Jun 2023 14:38:59 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id e22-20020a2e8ed6000000b002adc2fe3fc8sm66717ljl.4.2023.06.19.14.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 14:38:58 -0700 (PDT)
Message-ID: <c25ba108-1363-9c6f-3d02-2524ede7484e@linaro.org>
Date: Tue, 20 Jun 2023 00:38:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-GB
To: zhumao001@208suo.com, robdclark@gmail.com, quic_abhinavk@quicinc.com,
 airlied@gmail.com, daniel@ffwll.ch, sumit.semwal@linaro.org,
 christian.koenig@amd.com, sean@poorly.run
References: <20230618143813.15142-1-dengshaomin@cdjrlc.com>
 <20230618143813.15142-4-dengshaomin@cdjrlc.com>
 <610b47a2989976b9dae162ecc55ddc85@208suo.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <610b47a2989976b9dae162ecc55ddc85@208suo.com>
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.208.178:from,2001:14ba:a0db:1f00::8a5:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.178:from];
	BLOCKLISTDE_FAIL(0.00)[2001:14ba:a0db:1f00::8a5:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[208suo.com,gmail.com,quicinc.com,ffwll.ch,linaro.org,amd.com,poorly.run];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_NONE(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8186F3EF82
X-Spamd-Bar: ----------
Message-ID-Hash: ENPN7KDBUEQUNF7JVSZTCWLGBETR6N3L
X-Message-ID-Hash: ENPN7KDBUEQUNF7JVSZTCWLGBETR6N3L
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/msm: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENPN7KDBUEQUNF7JVSZTCWLGBETR6N3L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDYvMjAyMyAxNzo1NCwgemh1bWFvMDAxQDIwOHN1by5jb20gd3JvdGU6DQo+IEZpeCB0
eXBvIGluIGNvbW1lbnQgb2YgbXNtX2dlbS5jLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogWmh1IE1h
byA8emh1bWFvMDAxQDIwOHN1by5jb20+DQo+IC0tLQ0KPiAgwqBkcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9nZW0uYyB8IDQgKystLQ0KPiAgwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KDQpUaGlzIHBhdGNoIGRvZXNuJ3QgYXBwbHkuIFBsZWFzZSB1c2Ug
Z2l0IHNlbmQtZW1haWwgdG8gc2VuZCBwYXRjaGVzLg0KDQotLSANCldpdGggYmVzdCB3aXNoZXMN
CkRtaXRyeQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
