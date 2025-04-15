Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E5A89B76
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 13:08:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AA8E4599E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 11:08:24 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by lists.linaro.org (Postfix) with ESMTPS id 196E540D20
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 11:08:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=bPFbWrHi;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.160.181 as permitted sender) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-476ab588f32so74162061cf.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 04:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1744715287; x=1745320087; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAG9YdmRy2spdhrSdR+PSo3J7c8KUkAozpqOr7XPBVA=;
        b=bPFbWrHiM3zzqP4xx29yZFx5QlDWlqOvytEHXebOAfaoea65EWWBMw1lIcRRvjCZ+d
         L6KZZlfOLYD17OE46TUikb2TlKfQtflNm0rhybv3Ju8FHfL5fVOk3CpY1sR8VS3mcjil
         LfKieBfQ3QZ/MYm9j/5MyCgWUdRVpXmkoMe3/fxGIXtQOgbh2/IGXgP40WrdUxqypRsQ
         qJJ8kUyIVl0/DeXHv9NrFnE2xF3KD69Iwjz2nxD4EQHD2JohilAdqve+pS+PaaRBZTUE
         bAz/GiZJMU1CEeCTehswW+4iFNVInY8SqXpfXaxwtXsfCGsvdBwAn9d/3Edk8S9foxm1
         W2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744715287; x=1745320087;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oAG9YdmRy2spdhrSdR+PSo3J7c8KUkAozpqOr7XPBVA=;
        b=CYbgitpwK5k57D5unS6xOND1IAdU2NkRTqf1DdnTP/8KeXDSoWOwDXooJnveQzOFDW
         4HOT7NQoeJrhwtOY+uTb9U5qn2l0OIqLGPFYLe7VaYqmQeIct9SbxcxfX9PAY0mnLv62
         b3OPE/vPXUrVdjkgnulJA9EtHFpE7uW/eU+k0GWZOeNjqwtRlFmNxC2MC2moMS0KVzlL
         mHq++O+2VBJxcPMjgHDM53FbMWrzuBxP4vG0AwuBBWXQyS9b1sekaAaofHeTnFbUGHVi
         d63dCnqMAl1rmFUbFrxSfrGLM5XbMu4ORcE2VNKCloYc9nCu27jiWyOZiQBzW139vm2Z
         fh9A==
X-Forwarded-Encrypted: i=1; AJvYcCWMfdBYh6D5IgR96kvfXzxylKldElvc1TBevoTQrxTcbMq0kClVmilnHTMzd6yMp6gxBl6jp3lUubsDOXor@lists.linaro.org
X-Gm-Message-State: AOJu0YzIDajxdLA9qUskF9xKBXUYTigNG7ks4wKj4P+zCvv2HsRoMsv0
	i78i6amdNRNc3d0GXTgXL8EiUWIC7r/quhVO8AZ+WX9x/rMxbIrq3aNo1P+6fUYGoCfCYnKMWzh
	pZw1xXoHT2xQGkd81oGbQPJtNvtO26uJMe4by9g==
X-Gm-Gg: ASbGncuSiFmwXUeplCqOzEx+T0mfekhEUh2hl8u5IQJjoYiwjLEOfZfQbmVq4Ssqgv4
	EsQQGccGezD1gc239WYmUOIW1zra2uIuO5zcMO1dHYLDDKBJYBqbqEd7JgOML3m0lVi7W5kJvOj
	dZVcb2mzrQu0jVwdKGmM4=
X-Google-Smtp-Source: AGHT+IFh1vXSx5Rq5c8vZLzOiN4zABX47o5Z4Ug0aK3S4poCk694vjoyQA4QCi5vMCDm+1X/EKPDvHIQ3dGkD/YgQP0=
X-Received: by 2002:a05:622a:652:b0:476:a967:b247 with SMTP id
 d75a77b69052e-479775e95a4mr196800161cf.47.1744715287731; Tue, 15 Apr 2025
 04:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250411150357.3308921-1-adrian.larumbe@collabora.com> <20250411150357.3308921-3-adrian.larumbe@collabora.com>
In-Reply-To: <20250411150357.3308921-3-adrian.larumbe@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 15 Apr 2025 12:07:56 +0100
X-Gm-Features: ATxdqUFMfgk3LCHq6b_tQhtbniGbjNbES2JG54tU6ZFtUvvi9zS7dF0xh4LyD-U
Message-ID: <CAPj87rNiKyXTO-+2F71ZKU9rTjYfeLKvxxd2bGwZo7tZ=3tjvg@mail.gmail.com>
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>
X-Rspamd-Queue-Id: 196E540D20
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-2.80)[99.12%];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.181:from];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DWL_DNSWL_BLOCKED(0.00)[fooishbar.org:dkim];
	DMARC_NA(0.00)[fooishbar.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.160.181:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4HHNO65DG4QHMBLE7ZL52AW5YLBV45YB
X-Message-ID-Hash: 4HHNO65DG4QHMBLE7ZL52AW5YLBV45YB
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "To : Boris Brezillon" <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 2/4] drm/panthor: Add driver IOCTL for setting BO labels
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4HHNO65DG4QHMBLE7ZL52AW5YLBV45YB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgMTEgQXByIDIwMjUgYXQgMTY6MDUsIEFkcmnDoW4gTGFydW1iZQ0KPGFk
cmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPiArI2RlZmluZSBQQU5USE9SX0JP
X0xBQkVMX01BWExFTiAgICAgICAgUEFHRV9TSVpFDQoNClBBR0VfU0laRSBjYW4gY2hhbmdlIGJl
dHdlZW4ga2VybmVsIGJ1aWxkcyB3aXRoIGEgY29uZmlnIHNldHRpbmcuDQoNCklmIHRoZSB0aGlu
a2luZyBoZXJlIGlzICc0S2lCIGlzIGJpZyBlbm91Z2gnICh3aGljaCBJIGFncmVlIHdpdGgpLA0K
dGhlbiBqdXN0IGRlZmluZSBpdCB0byA0MDk2Lg0KDQpDaGVlcnMsDQpEYW5pZWwNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
