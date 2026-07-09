Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ka02K4avT2r9mgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 16:26:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B798732350
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 16:26:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b="xYcn/lIO";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 290CE40AE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 14:26:13 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 16962404A8
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 14:26:03 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c15ec1da77aso70982466b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2026 07:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783607162; x=1784211962; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=GUiGSyLWB9fQsFRzV21305kjOtQfbAKgpLx4+Ei2cqQ=;
        b=xYcn/lIOQ63NNamZpmJXR0mPpY/orJtB2Zu/JTwtXFDL7cjm6ZLs1QjJgpxp5tOnbh
         GUaDeIFGhU8U6Nxl526ADwLZ3cSswP0WD2Ym+PYp5gJ+68nthCGgcrxdDG20pg/nMg/g
         1nFAiOwMRs86HS/Uq3Jniqlav50CVo5Quv8f9u3DkYLmhdFwrxNqFLjUwqTQj94/d9oV
         8j5xmA0R1XDkenWJ06acDU4YTN8iuiors7xzd3WmaA8rGsyOPXErjdFcpqsEI7T+Ysax
         G6eYB8i+9pw1a2FvkdPUYbxy/VJ0eDfJSP+jC8KxJo9nGTCYrztYwk2sr+wneR6WDXMD
         atWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783607162; x=1784211962;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GUiGSyLWB9fQsFRzV21305kjOtQfbAKgpLx4+Ei2cqQ=;
        b=dqhYgAH8OPslfGoPwrs3ZhWnBbB7PZuCwrDzYne95EgLz2Xq4uqTfWhduOL3RspWzj
         mBiObaAelIHTMexVYW7npQwGUYmir1CvsG285lBSDesB4C6ReyFeP984ndrAzzvHgV7c
         eJP2r6KguEOvrnMxhKkD4WuLJDvITGxW5Ug/U6Plc9tX7EQlxVc1WnCT7kDgPTpNUVwX
         8CjklTT9r4VUh+0E2Lg7xzz39Ek0DPCJLLqQv/T9DilvQNIqBRsc28ZG4VefmKUWm4ro
         fscw99ap4MvqWjRYfRWv+/MR/0X+wDbm8e3utuh++O5XhE/qYRK2Mhr9E9V8ZJNrAgKW
         6VtA==
X-Forwarded-Encrypted: i=1; AFNElJ+roDcphLj5f8yDeNkR56Q1qrFzDJq0Atfe4OEGb5Js4u1s/YidPaZnW45dU0rLVMuvO/v28VhsMREzFqV+@lists.linaro.org
X-Gm-Message-State: AOJu0YzGy2gj9mhJVhGC941xhr4mvfTBsO7l9NF00mMKU++Y1+5KMbf/
	WR7Kxl+Ul6TBl/x3t201tlmIyLrNUg84DKQHWyHw7YdaRnknboCHhy95eOBhCw6ZG3c3CCwuVe+
	Bxxiw6Vdj4afe
X-Gm-Gg: AfdE7cn9qwCwoiDOmiLk4bi0uLjbNuYrNFhdEBSL7TNyl6xMWMe2loMcG4SmidOXGDT
	kXD6xMUbgi+NxiXsZJQMOxduX2WGc8MD4aH1lC1ZHW31W5htrY1nndQTC7i2kGxrobzkFe+tjTA
	C3xN6vxRY41t30yG2m5WI7edO1yI7d1MWucGS0DbosbTKTQNZ4kdGxfqfJoV5fhBj85kBA6/qQJ
	UhjUf/NeXzkUnk/3FLzz/GvBuK68xXq6C2ZswXei7at1rV5atKheCKb0VyYwr3WCG9K3QNX2mV7
	4ck90Y8pm1aqmURTd8oxc+/Ycj6tEJg/ldLpHrwKx61Tegcy24lKsR9Of+n5lzVxoTlpqJarIYG
	HgK1Kbi+quE/yRpq9M31Y3QQKSB87h5fMQUKt81xFJNVsrYotFUxfV6y8oZPFm4aHhEIAq2BxRJ
	7PWQCRkK7fnbpn3TVpxws7
X-Received: by 2002:a17:907:a286:b0:c12:696b:dd78 with SMTP id a640c23a62f3a-c15ce1440c4mr305311866b.39.1783607161945;
        Thu, 09 Jul 2026 07:26:01 -0700 (PDT)
Received: from [10.1.1.102] ([212.129.81.133])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ca1bd81asm303276466b.30.2026.07.09.07.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 07:26:01 -0700 (PDT)
Message-ID: <f3c84538b682d0889420fb7f11834636ede481ca.camel@linaro.org>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: phasta@kernel.org, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Tvrtko
 Ursulin <tvrtko.ursulin@igalia.com>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Danilo Krummrich <dakr@kernel.org>
Date: Thu, 09 Jul 2026 15:25:59 +0100
In-Reply-To: <899942cc84af7a82a35b4ca34b486c40327fd543.camel@linaro.org>
References: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
			 <20260708-linux-drm_crtc_fix2-v2-1-cf72be75d75a@linaro.org>
		 <1ccfc0b5d1696a8dec4756b675294e7fb41ab5ff.camel@mailbox.org>
	 <899942cc84af7a82a35b4ca34b486c40327fd543.camel@linaro.org>
User-Agent: Evolution 3.56.2-8+build1 
MIME-Version: 1.0
X-Spamd-Bar: -
Message-ID-Hash: 7RFBC2R3TKCXC45O5V2ZRREK4J6SHTRU
X-Message-ID-Hash: 7RFBC2R3TKCXC45O5V2ZRREK4J6SHTRU
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] drm/drm_crtc: ensure dma_fence_ops remain valid during device unbind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7RFBC2R3TKCXC45O5V2ZRREK4J6SHTRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:from_mime,linaro.org:email,linaro.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B798732350

T24gVGh1LCAyMDI2LTA3LTA5IGF0IDE1OjE5ICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToN
Cj4gDQo+IFVuZm9ydHVuYXRlbHksIHRoaXMgc3RpbGwgbG9va3MgbGlrZSBhbiBpbmNvbXBsZXRl
IGZpeCAtDQo+IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxOC1saW51eC1k
cm1fY3J0Y19maXgyLXYxLTEtYzAzZTc3YjM2ZjM0QGxpbmFyby5vcmc/cGFydD0xDQoNCldyb25n
IGxpbmsgYWJvdmUsDQpodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDgtbGlu
dXgtZHJtX2NydGNfZml4Mi12Mi0wLWNmNzJiZTc1ZDc1YSU0MGxpbmFyby5vcmcNCmlzIHRoZSBj
b3JyZWN0IG9uZS4NCg0KQS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
