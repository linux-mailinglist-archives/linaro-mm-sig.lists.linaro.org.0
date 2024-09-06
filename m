Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABA896E6B2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 02:17:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A8D243CEC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 00:17:23 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 9E99F410E5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 00:17:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=QJyXG058;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a868b739cd9so195195266b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Sep 2024 17:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725581839; x=1726186639; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NG9BmRA6hMBliXpavQRbROysFPGHOwtBx2R9wnjVQuw=;
        b=QJyXG058M556gC6rSose3tFxJZ1gfMj84KNTLqJGi8nJRj2IHo5D1ue6BpoVORBW2j
         HlGSGL6QN1bOKSeivfzZtbkIlreVdMrPd9G1LLXoEgOLgpPN5R6x2NNxU5h0R/+7jea2
         f9SgUzF5aw55QC13/PRLr9qv7ucWsdn/YyoXtOk6Kgr5lv+N6F5yfCk+oCge97nd4s4t
         DfxBrX92TYlm4nAlsGP9EJtJDTpoONSPWB1WH3pZN/Or+6/CIP3ljcPljk9hcMSOs40u
         KLT+CkyPY1CASA9QrgrJpVfMptCNVqkUublfNmjdExoDe07rUR7Qp6XoaoHfIFuITRuL
         5W3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725581839; x=1726186639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NG9BmRA6hMBliXpavQRbROysFPGHOwtBx2R9wnjVQuw=;
        b=dePr2sngmqMHWr23lrz+PQYr8qOcl+H4DlO/SKJZxpyBp0Cf3wWMjOdEHqW53/XDKu
         eDVrc52J5oYThJ+YCRViLBWKcKQ00BkgMRtfk1yhAbsqIlShPiMsr/wqOctviPm4uaXD
         3D/zKIAaeXSWVWI/ZXEJCqpSX/KTXhAjvVODqPXInDLJDgZAlYPXus2y4ZlwTcuf7POX
         OmJKVASvuZr1TzmVn4HEOh4EVcnkZasyB4k7KcgkqrsoRtCT9wBOaAMCUa27jJGExCVy
         o5NWNyVQl3bqQuZGsND6weMCXTH8aI3Rsjldg8vaA3/qdixsFzJRn5CIcKl/9HhY/mA+
         jR4A==
X-Forwarded-Encrypted: i=1; AJvYcCV2Rzg54PE8HWDBbr8ZCuJm1fJ4ogU+4gtrP/p8CmipvI+UOvz2FmC4OBUpL20ChuF7SMVWZ75t00zSlx5c@lists.linaro.org
X-Gm-Message-State: AOJu0YzPi+4nc6dfgbz8UVamrJSndkVLfxTktseU822kECt06Wd2BC1a
	zwkxJpHQ4DloU8Mdr33PxDAO+/hadHlL1UQZtBbdPuN+Gg4r01nPXUBdXbYp0WJ3wgpO2m2VcLo
	Q8/af4ZeL1frqis5cz4sVpmFnhwdzaE8FSK8=
X-Google-Smtp-Source: AGHT+IH6iGOhY96esUOgnqkha3Im5NDBFCI3MQ/51ohxLt/quz+M5fUyeZSZEDsXTKSS5BJ+8U+V3xQiVG0pxHwj5yY=
X-Received: by 2002:a17:907:1c1b:b0:a8a:78bb:1e2 with SMTP id
 a640c23a62f3a-a8a78bb0272mr274642366b.6.1725581838319; Thu, 05 Sep 2024
 17:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240906000314.2368749-1-tjmercier@google.com>
In-Reply-To: <20240906000314.2368749-1-tjmercier@google.com>
From: John Stultz <jstultz@google.com>
Date: Thu, 5 Sep 2024 17:17:06 -0700
Message-ID: <CANDhNCqudbuWM-WG7jiY_KQfgOZ84nAwWUfUHNzgniBiSZzeyA@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Action: no action
X-Spamd-Bar: -------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E99F410E5
X-Spamd-Result: default: False [-7.48 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.38)[97.17%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: 4XDRTDWWY4YV2GVBZQV67BP7U4N27XVE
X-Message-ID-Hash: 4XDRTDWWY4YV2GVBZQV67BP7U4N27XVE
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Add __init to CMA and system heap module_init functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4XDRTDWWY4YV2GVBZQV67BP7U4N27XVE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBTZXAgNSwgMjAyNCBhdCA1OjAz4oCvUE0gVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJA
Z29vZ2xlLmNvbT4gd3JvdGU6DQo+DQo+IFNocmluayB0aGUga2VybmVsIC50ZXh0IGEgYml0IGFm
dGVyIHN1Y2Nlc3NmdWwgaW5pdGlhbGl6YXRpb24gb2YgdGhlDQo+IGhlYXBzLg0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KDQpBY2tlZC1i
eTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
