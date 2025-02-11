Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEE4A31177
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 17:32:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9879F4557E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 16:32:06 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 679CC44893
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 16:31:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="J6/Ypp55";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5de6e26d4e4so5641178a12.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 08:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739291473; x=1739896273; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cB9GGK9j287qQwW682FU+FnOXGITaIfNkLXZoLCeIRg=;
        b=J6/Ypp55Y0EkWdz5n5/hdoYPMkk236TsJgJP5QpstDyf6ZuIn+IvAHxys1XCUfXn/i
         jsxxb82Yiw65gHgVRnhnikBGhw0QJfV9KseWkw4ORYfV9Tn+xcwwZ2FtlvjsIUjNksOm
         SMBVN+MeiA4U9ZzZura66tGu2Qa/McfzeW+FHdPt2HONOGZVPboyUV046KjoAJ6tmSt/
         /hRDdcukTZJfMRqjj9Nvq3f5V9o9MALNS1zg0SI+JJCLtfZZz0zGCWQq6Skvhc7LIC73
         8C/vj9mGjAQu2d+khpqXAIEG2NjTLvWGtbe7a19etsRytaehsoT+yyudCKiketfah/3o
         unuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739291473; x=1739896273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cB9GGK9j287qQwW682FU+FnOXGITaIfNkLXZoLCeIRg=;
        b=vvNFoFgN4I686GjRL3tDgp9/5e4rznTv1NeuGIfdTImFlnTuD3+DhIsYQunvjsdZwr
         JVtRO44gh9msHcbf3I3mcq3Cka1C0+rCL/3lsEiDzChg1FNv1q264U3vcyWKCRxW21px
         5N/HfLkNqs35Fh7Od4Oxtas2EvvkTSwMq6W/MHIDSuXcmCEZS9zFEQEMCK/HoeAgG6cF
         4HCFJe4yr+cLz25u7kOb5ignb8uPNb1TUWbIqPxR4+k6jhYbFzuTqDiWedRsYuBuDCbI
         28NfbH2WJLAw+5husbhbv3zk54uGcxVzciPh/tTpanC45UgxrC8qdOnylE0j3ubCzG37
         g3Ew==
X-Forwarded-Encrypted: i=1; AJvYcCU8oqu2zT1MqTfyMBSrP/w6azpCqmeYNISqn3/BSWD4MkD0f/sHepFRzvudIDZUeOn8oNJHEOsZnEqCyOof@lists.linaro.org
X-Gm-Message-State: AOJu0YyJ0gyvP+IcPL31UF3AqKZDw5859N9IjumjOG3l52xPDn9xqZZE
	wlcSdFZBSQFFeCD0vzcEXSe8ebtotuJ6E2+gDL1mPIsTsZMSX6PZ
X-Gm-Gg: ASbGnctfgLN2/zUMvZnH9MpTv6CtYB4Q657H6c1TZuvTECxn92+Z9fF35pf2UeK+zIa
	zlcrZAkv/5szEnnySBRwFbljGH6h3fR1PU/BHCJpgh2pevjucL/UrWnjlLO5WjBxI9LbSXCM3Ue
	iHXjxQb0+XnagEfJlPw/cDaTpY8N01vhLTaFaX6Yn7maf5SUNOwwhLqMuCRquCTWXwG3FyVI/pi
	pX81fG28tm9jD1sAQ0xAx4T+nNHqiO6egj0ZESR3aDreY0LZHdcvSQ1UFWnCTJQO1SJtmuVpAm/
	Nk3DpTNSO7EQtzqMkc+kB3cZ1MLw
X-Google-Smtp-Source: AGHT+IEe/kXp42nTvgE04i7M8NJuzTiQ6kmVxfRkZm7tSxkcMoG7qhTNznS24oTUjaEHCExq/khNgg==
X-Received: by 2002:a05:6402:1ed6:b0:5de:525c:53cb with SMTP id 4fb4d7f45d1cf-5de525c544amr17964157a12.6.1739291473181;
        Tue, 11 Feb 2025 08:31:13 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154a:1300:5b91:7670:e404:c65a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7ade9sm9838748a12.25.2025.02.11.08.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 08:31:12 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	tzimmermann@suse.de,
	simona@ffwll.ch,
	dmitry.osipenko@collabora.com,
	tvrtko.ursulin@igalia.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Tue, 11 Feb 2025 17:31:06 +0100
Message-Id: <20250211163109.12200-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211163109.12200-1-christian.koenig@amd.com>
References: <20250211163109.12200-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 679CC44893
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	RCPT_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.950];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.208.46:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: HY2EUEP7UIV5MVS4VWVELWWWYEXKGRFP
X-Message-ID-Hash: HY2EUEP7UIV5MVS4VWVELWWWYEXKGRFP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf: fix incorrect dma-fence documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HY2EUEP7UIV5MVS4VWVELWWWYEXKGRFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgaXNuJ3QgbXVjaCB3b3JzZSB0aGFuIGRvY3VtZW50YXRpb24gZ2l2aW5nIGFuIGluY29y
cmVjdCBhZHZpc2UuDQpHcmFiYmluZyBhIHNwaW5sb2NrIHdoaWxlIGludGVycnVwdHMgYXJlIGRp
c2FibGVkIHVzdWFsbHkgbWVhbnMgdGhhdCB5b3UNCm11c3QgYWxzbyBkaXNhYmxlIGludGVycnVw
dHMgZm9yIGFsbCBvdGhlciB1c2VzIG9mIHRoaXMgc3BpbmxvY2suDQoNCk90aGVyd2lzZSByZWFs
bHkgaGFyZCB0byBkZWJ1ZyBpc3N1ZXMgY2FuIG9jY3VyLiBTbyBmaXggdGhhdCBpbnZhbGlkDQpk
b2N1bWVudGF0aW9uLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIHwgNCAr
Ky0tDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oDQppbmRleCBlN2FkODE5OTYyZTMuLmUyMzBhZjBkMTIzZiAxMDA2NDQNCi0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmgNCkBAIC0xNjksOCArMTY5LDggQEAgc3RydWN0IGRtYV9mZW5jZV9vcHMgew0KIAkgKiBpbXBs
ZW1lbnRhdGlvbiBrbm93IHRoYXQgdGhlcmUgaXMgYW5vdGhlciBkcml2ZXIgd2FpdGluZyBvbiB0
aGUNCiAJICogc2lnbmFsIChpZS4gaHctPnN3IGNhc2UpLg0KIAkgKg0KLQkgKiBUaGlzIGZ1bmN0
aW9uIGNhbiBiZSBjYWxsZWQgZnJvbSBhdG9taWMgY29udGV4dCwgYnV0IG5vdA0KLQkgKiBmcm9t
IGlycSBjb250ZXh0LCBzbyBub3JtYWwgc3BpbmxvY2tzIGNhbiBiZSB1c2VkLg0KKwkgKiBUaGlz
IGlzIGNhbGxlZCB3aXRoIGlycSdzIGRpc2FibGVkLCBzbyBvbmx5IHNwaW5sb2NrcyB3aGljaCBh
bHNvDQorCSAqIGRpc2FibGUgaXJxJ3MgY2FuIGJlIHVzZWQuDQogCSAqDQogCSAqIEEgcmV0dXJu
IHZhbHVlIG9mIGZhbHNlIGluZGljYXRlcyB0aGUgZmVuY2UgYWxyZWFkeSBwYXNzZWQsDQogCSAq
IG9yIHNvbWUgZmFpbHVyZSBvY2N1cnJlZCB0aGF0IG1hZGUgaXQgaW1wb3NzaWJsZSB0byBlbmFi
bGUNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
