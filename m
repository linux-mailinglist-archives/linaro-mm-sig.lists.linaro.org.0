Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPisNF/cBmphogIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 10:42:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1957E54B94E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 10:42:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C0C9401CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 08:42:05 +0000 (UTC)
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	by lists.linaro.org (Postfix) with ESMTPS id 0C6913F838
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 08:41:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=im8dwkWP;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 74.125.224.54 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-65c1ba7eeb6so10841570d50.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 01:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778834513; cv=none;
        d=google.com; s=arc-20240605;
        b=kKL4YBS+Y3wRMlLQwZb/65++X5lG4ijNXncftA1fG7m1ltOkSIyLhAh5kyz9eCbZ8K
         QopLK291KR5uZEDsbLqRueJD5YCVobqxuyWCxQnz+KGU5PfxqOEgPzbQYNRQ5EDSqLfj
         zUHv8V427pnOY7K3NMV135BZ4owGn9LsUlwIFfkC7smvzBAmVWpEg3m7001Lli088A/5
         UdtoscAz83NS9lfK8z8RDHWWhufq36w6R26JYdSEB1KCb5G8Rl9PV74i0XP8w4BvbNEQ
         v9pTPDYVL5fgoAeDR/S9wZlrEp9vlxammqC4R0kdVbUg8683+fRaCE9tLhNRqn2y8Cmy
         QNnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PBSjZR3vBTrgdu+SMltlDgYPuNOIji8ITlL8pViUrIo=;
        fh=uXh36YLHd+0SiHY9/CpLj1ofwOzSx3ujTp+1fAFrNCw=;
        b=fLT7F5iB70UIVBjQ9kLj/7e6G2eemPNvQIGI3P+/2sB6UEl7xeLNptX0uhJC5MDZV0
         P4IvfAsmb5iXuHpNaoINv6qCOrKPmh62Ea30Rhye65LwrT+wzJ1GKrNXHoGVF70uUjV8
         DKsOhxVWVu5qyNIWF3p0RMOgeRqk0n4dXYEyTJlWU4mpOgUbPxKKkaYc5Q7moQl1ZcRx
         5yypTfG5FeEv9Q25ld41d05tZGkOF9z1DeMP7M0nc9Ht7zQ8NoKR+D/ZjIe5VRozR40E
         HWvkE2APEalnpFsgnd7w5LP79kxF8IWimhdo8NlyhKi6zXS2uktsXbKuNGDDX1vSvQ8m
         FBwg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778834513; x=1779439313; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PBSjZR3vBTrgdu+SMltlDgYPuNOIji8ITlL8pViUrIo=;
        b=im8dwkWPFQ4TiiZlKytuGJ++nCMVVG1DSkOx6c/yyM2C4OVMmmJvOV387ItdqfHk/I
         ujgkdo2T47C200zXGFsa9im1L6mAUhiqrbf/Wms9razZd/tg+dX3SSAdAga7H+ziSdBH
         r5s125iuT4XtN65hOE7ErDOchpGdMOIBbe9i7wJFzI1On3toFJWWOVklHfbDoljGbJ/K
         ejIyv+prLwW/gjfYsYJcn3FFRiJx/yhNHBbuX7arxbfgivBP09yA50p0z34PNck2xMiN
         6AJEQWUivy4iv4Ao3iDLKoMUj+erDeyjw5pxcqBvVNiOzbG5KYTuQBRnt/dWRqe/wZ2l
         i0kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778834513; x=1779439313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PBSjZR3vBTrgdu+SMltlDgYPuNOIji8ITlL8pViUrIo=;
        b=s7Ej4ljghYdsUWY6+edfDy78htEUsCkcPhbaEE8+s0Qbw7CoYKxre7vA/HmZk2UuaV
         WvEm76RrI391FafwQweIUS+M4rxR36CzPcHpQ/4ZTIK1dZNYHblKkNQftg45c0p/UfER
         EanDZX3sTdXeYkFGE67F0UeWZZdtpRE580o7cS3jvBR86WJNyTepZE8nbDZEqKZ6mIkn
         9YQb9qb7NRuvZmz+KBKWBWktvjag7DQCsGMJ8rHWVHJdFR+srWqpDbZfWQ8SJO+0O1cM
         7esJXG9BBkhWvDiroLIPb8AOP8umazbkDhH/dhx89lxkiUF+KOosbt5sPy6AkEmOQIYW
         +/Eg==
X-Forwarded-Encrypted: i=1; AFNElJ/gqQPHrHAAEfVYYMNEJQP5qeqETDQYCZx5iUaUoT8sKHY1gB1RNuFXV3o2+GZjsmC992QzOslG5QzEnucB@lists.linaro.org
X-Gm-Message-State: AOJu0Yy5Zl/bXTpfDSBzITxVjLiKVfRLjZ5t2Pp7mTOFvng8BWJyMA1l
	H77tO1kx0XHT7/oX9VeUfH/sQmshXcp1rGIjO6eZ3nTl+6r2P4XoshMdRqYrh23e1PlsfplYeSR
	m2E0hN+ZXn3+vuQWXfPqHATwDsbgMGDw=
X-Gm-Gg: Acq92OFHFlI/hhCAaAgBcA/UMENRY5OHbDxAzDTz3F0/kF5V+VXt04odJC7MfdSrBPC
	jPP4J54nzYWi2nmFY1DZv7xBwiL+7399g9TwKZdycSBSwXftROresTnIUsMPVV/zQGmyIdZPqc8
	UxLC+oMN0n8PlgeqWB1wUqX30wa9OoPC/1DEv2O6KYdaBQ5dISHxZ0CncKkrV1Q3Rk8/B8zxpWX
	Vz5UPXR3DOoqgqptyqo11a15yU9gWwkzobvUf9xiEc0L+j6je+NmoeLRaRc88px17AvqdQWk+aI
	qZcKzowrgf4J1DtaMqe8N9DIMgVvDwKW/+1EP/jxAUSp58E7qGasWugRBPGTDgT0SC6zDYqw
X-Received: by 2002:a05:690c:4:b0:79f:d961:47bf with SMTP id
 00721157ae682-7c9594b0105mr32678827b3.8.1778834513472; Fri, 15 May 2026
 01:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260512020718.108044-1-kartikey406@gmail.com>
 <d1bc8d7d-3a4f-4ede-8266-81cc66bf11b5@collabora.com> <CADhLXY7N0eLpA30eV4Rb=F4vzCf9XYtDjMpxBSJtGeMWNi6Cwg@mail.gmail.com>
 <65da2ce9-a2ab-4800-a73e-1a26082d0605@collabora.com>
In-Reply-To: <65da2ce9-a2ab-4800-a73e-1a26082d0605@collabora.com>
From: Deepanshu Kartikey <kartikey406@gmail.com>
Date: Fri, 15 May 2026 14:11:42 +0530
X-Gm-Features: AVHnY4IGHTZnfpb9msWE08vJttVqhQ6G8dsaF1hRX2r-HcKGXn0VdlxicBL5ZuQ
Message-ID: <CADhLXY6L1RJvgfMGuogmw7bx5Sj-_6G2C7zR5q+xLQXu_M-Tjw@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-Spamd-Bar: ----
Message-ID-Hash: FI7AABBXKYLTVYDAS3JQQECZ4DUS5UFX
X-Message-ID-Hash: FI7AABBXKYLTVYDAS3JQQECZ4DUS5UFX
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: airlied@redhat.com, kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/virtio: move cursor resv lock acquisition to prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FI7AABBXKYLTVYDAS3JQQECZ4DUS5UFX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 1957E54B94E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,syzkaller.appspotmail.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.431];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMjo0MOKAr1BNIERtaXRyeSBPc2lwZW5rbw0KPGRtaXRy
eS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4NCj4gPiBEb2VzIHRoYXQgbWF0Y2gg
d2hhdCB5b3UgaGFkIGluIG1pbmQ/DQo+DQo+IFNvdW5kcyBnb29kLiBUaGUgdmlydGlvX2dwdV9y
ZXNvdXJjZV9mbHVzaCgpIGFsc28gc2hvdWxkIGJlIHVwZGF0ZWQgdG8NCj4gdXNlIHVuaW50ZXJy
dXB0aWJsZSgpIHZhcmlhbnQuDQo+DQo+IC0tDQo+IEJlc3QgcmVnYXJkcywNCj4gRG1pdHJ5DQoN
CkkgIGhhdmUgc2VudCBwYXRjaCB2My4NCg0KVGhhbmtzDQoNCkRlZXBhbnNodQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
