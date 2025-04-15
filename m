Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBDAA8A8FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 22:15:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0762044539
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 20:15:02 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by lists.linaro.org (Postfix) with ESMTPS id 0799644131
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 20:14:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ji1Xf2If;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.45 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54298ec925bso5173559e87.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 13:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744748086; x=1745352886; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QrX5BfBQF2U/SMXR4SwmyIo877XUcxmuZpNerm61EBw=;
        b=ji1Xf2IfaZVR6XgwtrRNuKZIVZGSN4x1ar/g7BvI0C0/g6Za7ouTe55u5uYST+DkUb
         S00zwA0FMZiEXT8VS7/DAxuUrYI8QT3yGHDt5Ev9ESUkzRqMvdyc/WsM6bdwamRsfwIm
         CAZMl4ZMAn2xCdWhPp5sXqRcC4XPJRTyTeMDSlgzQFN/OOMnY7pgFRH75y8HVM3nHfNz
         sX+NWNaian+KpeSp6nPEv8xOqSMfvqG3j+E46rKAwiJ+BsSlqLG167hUBfYcyXDjsAbX
         1TM4YgMbkQGdGJnYFmeokTl+lupOvn8q9nm32n3rQRaWdQP7zsfovn4TMPbb0fbl8ig5
         lxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744748086; x=1745352886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QrX5BfBQF2U/SMXR4SwmyIo877XUcxmuZpNerm61EBw=;
        b=QZ98wfi0WCUrgzSOunMw1iQpij2k0ikt7E31OhWbQPK/hZKs93f1838yX3Q5I82mf9
         YM2mIB8VNDACrY+WIKTcwNdbH6Kz83trSn/njH2znIy9z/mBE0dwKG41GknC76h5KnOX
         oj5rlcRzz6rNlbjs4AghQvm92JMRk8eWSUysDNPfw1Z8aALisbDlln/fLeQ0FWBcqMa/
         mOIdhlPaxhbPqBg9XKfLF8kKsWzGZEwjiWtgv6+JzAbEM7Jvg8I4Yvw0vGN8GKiVP9fR
         mWxx/mvSx+9/hnejMv86NuDi+E3B4gWhIPpAnuwW4Xxv9c7iPJ0HHBCfByEGTrIU3Pxx
         cDBg==
X-Forwarded-Encrypted: i=1; AJvYcCUItTODGR2wmGn3lqEEaUQBvF047EsS2/MQnoKR8wcr+rPUkvNwd0zPnxf5a5xaNbAQybkLxTkXNeEi+Wju@lists.linaro.org
X-Gm-Message-State: AOJu0YzMmH95h1bzjpSG91j96VsMfUrc+T/A4JTGU4w0Av52DxKlRc+1
	lIIYhPXqe+Rc1RYoTeKActKSgiIYZ6ZXnBRxYrWbB9GklD3Iz3VqkfDPTP/30Men/hSJtkxTN+i
	jZEFn1k9qEJAdbkmdgPIbj9u2heBILRYZ2eA=
X-Gm-Gg: ASbGncskUPeAeVXcD/FFdPLX1LEnSSJWZyUYTzyOWWBt6UVaQ4bchO1j+dVexN0UwDX
	zg4+VOu8cqOFWNEwwkZjc/8cPOt2DFwS7Rk2O45apZKlIB9TotwlZTQ+LexkZMHHKqcpECylvNF
	qM/rFSjQv3KAY0GEM1/CoAtaJDuZAr42sOnwEST7G2nvsrPye9fJg=
X-Google-Smtp-Source: AGHT+IFmjn22DVWrD3J6egNzsPL6Ng3PyVECAR9T97KHvP2G77xLiJ5TWGIYssFAbUDv+TSvWv030sUAs71yMgQvDH8=
X-Received: by 2002:a05:6512:3e17:b0:549:733b:6afc with SMTP id
 2adb3069b0e04-54d604ccf4cmr100825e87.12.1744748085535; Tue, 15 Apr 2025
 13:14:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250415171954.3970818-1-jyescas@google.com>
In-Reply-To: <20250415171954.3970818-1-jyescas@google.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 15 Apr 2025 13:14:32 -0700
X-Gm-Features: ATxdqUG4dYOEgBpq3vBJFjWe22Y7nhXg-DziqAyeOFw0AhrMx6YFrW0nd6Oh9O8
Message-ID: <CANDhNCpK86yKWTUkXV5oK6n7gTmeNDn-NsDppBjObXPEMwD44g@mail.gmail.com>
To: Juan Yescas <jyescas@google.com>
X-Rspamd-Queue-Id: 0799644131
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.45:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.167.45:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 65XHS3YL3AL73KVX5RUMFZGL26ZJECTN
X-Message-ID-Hash: 65XHS3YL3AL73KVX5RUMFZGL26ZJECTN
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, baohua@kernel.org, dmitry.osipenko@collabora.com, jaewon31.kim@samsung.com, Guangming.Cao@mediatek.com, surenb@google.com, kaleshsingh@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Set allocation orders for larger page sizes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/65XHS3YL3AL73KVX5RUMFZGL26ZJECTN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMTUsIDIwMjUgYXQgMTA6MjDigK9BTSBKdWFuIFllc2NhcyA8anllc2Nhc0Bn
b29nbGUuY29tPiB3cm90ZToNCj4NCj4gVGhpcyBjaGFuZ2Ugc2V0cyB0aGUgYWxsb2NhdGlvbiBv
cmRlcnMgZm9yIHRoZSBkaWZmZXJlbnQgcGFnZSBzaXplcw0KPiAoNGssIDE2aywgNjRrKSBiYXNl
ZCBvbiBQQUdFX1NISUZULiBCZWZvcmUgdGhpcyBjaGFuZ2UsIHRoZSBvcmRlcnMNCj4gZm9yIGxh
cmdlIHBhZ2Ugc2l6ZXMgd2VyZSBjYWxjdWxhdGVkIGluY29ycmVjdGx5LCB0aGlzIGNhdXNlZCBz
eXN0ZW0NCj4gaGVhcCB0byBhbGxvY2F0ZSBmcm9tIDIlIHRvIDQlIG1vcmUgbWVtb3J5IG9uIDE2
S2lCIHBhZ2Ugc2l6ZSBrZXJuZWxzLg0KPg0KPiBUaGlzIGNoYW5nZSB3YXMgdGVzdGVkIG9uIDRr
LzE2ayBwYWdlIHNpemUga2VybmVscy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogSnVhbiBZZXNjYXMg
PGp5ZXNjYXNAZ29vZ2xlLmNvbT4NCg0KU2VlbXMgcmVhc29uYWJsZSB0byBtZS4NCkFja2VkLWJ5
OiBKb2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0KDQp0aGFua3MNCi1qb2huDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
