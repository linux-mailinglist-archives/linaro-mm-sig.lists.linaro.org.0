Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1wG4NlhmIWozFwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 13:49:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C1263F91C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 13:49:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=ee6gZJDG;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9170C40992
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 11:49:43 +0000 (UTC)
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com [209.85.221.73])
	by lists.linaro.org (Postfix) with ESMTPS id 41008409C1
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 11:49:31 +0000 (UTC)
Received: by mail-wr1-f73.google.com with SMTP id ffacd0b85a97d-45ef6417092so519210f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2026 04:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780573770; x=1781178570; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=IDsisrKoiSBYw8b45wvLvNabX1p1YR55LCjFQrLjodw=;
        b=ee6gZJDGZ/20C/bmem6G7YgDF+Car+C5uzN/oMex23x26TADvgJBQ/e0IVYYBzPgoC
         On00ITu39B8zhL27sd1GRxYqSLWyw/nyerHbFE2NjbKyZSsaaeGjqds0+JQbYDIYOhMy
         +5rU629wRcTf8kZv+xp6eWCV1RUUBy9ev4/1P3hDtJQm4xKhJgaAr5zjE2wLSsp7VQTc
         gxTmiFBNiBmBgD4RAOfU9cvLaD7hB0ExdYtgSB33UrYQJF3ipY4JjQelFvW3lJqc9MKX
         An362aD3JoRc7+bb96GiWJB1MQTiWYXkiVqdHoD69/l3XL7y+1jjMJlBbej/TCu1MTjz
         xgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780573770; x=1781178570;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IDsisrKoiSBYw8b45wvLvNabX1p1YR55LCjFQrLjodw=;
        b=rELmt7aaUNIjIT9BYbkyktJaQ8Qh/jb8UMjCRBXLCpoj2p3QGbpOdHNoOHmxOB4zuf
         VpJHnsTbzs11Ch5ZL6el5pvbFvzjr8S+5wzIjrm9c8tCCQw1AGV57q8BWRxXsoUZTPJ3
         3XiSqKz8uscu28omPC662/Had8YtCU4koE16jHuYDWtmbd3WXS4qYENkw3uf0WHHAhd8
         4KBTsEx5UzXtIbMkBmF6vFjCcAe8bgsh7Q7rELl9w07M/gfbaG0WtzQe16lpsRjhTqpS
         OJ+Y8uV+SchrtTWCf6YS7qea+CXac4VxR/hFPNUkv+iU9FeTI0id6qY55+mAsLBKVgbj
         3/Ng==
X-Forwarded-Encrypted: i=1; AFNElJ/bFacRlPij1jUWV/gkxYp10matG11SnGSraawBHO+77LgBHcoX2igrLqVV0njGXOwzKA5X3Qr2eiiVMf3/@lists.linaro.org
X-Gm-Message-State: AOJu0YwO7nqQdIqcLxmaTiEjRgCR/FV1Oc2E6nBt95e0e9qCm8I83nlx
	4oAyxx2JZn3pystlONrSI4zwxaZy+e0xk7dF5ICjXAEEiQn89MQ/eQCPfQbiNWR3h+DosuzXgUi
	8z8uSkVS9A9H6U7AmZQ==
X-Received: from wmbc9.prod.google.com ([2002:a7b:c009:0:b0:48a:7f8c:a95a])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:1d86:b0:490:6869:46c3 with SMTP id 5b1f17b1804b1-490b5fe79f8mr132548195e9.30.1780573770264;
 Thu, 04 Jun 2026 04:49:30 -0700 (PDT)
Date: Thu, 4 Jun 2026 11:49:29 +0000
In-Reply-To: <20260603195210.693856-2-lyude@redhat.com>
Mime-Version: 1.0
References: <20260603195210.693856-1-lyude@redhat.com> <20260603195210.693856-2-lyude@redhat.com>
Message-ID: <aiFmSUi0ZHVIj5Q1@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: ---
Message-ID-Hash: ANPDP626VQOBKDAI2X7M7RZQ7MLI437N
X-Message-ID-Hash: ANPDP626VQOBKDAI2X7M7RZQ7MLI437N
X-MailFrom: 3SmYhagkKDfMVgdXZmtcgbjjbgZ.XjhgdiVmj-hh-ndbgdnon.gdiVmj.jmb@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 1/6] rust: drm: gem: shmem: Fix Default implementation for ObjectConfig
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ANPDP626VQOBKDAI2X7M7RZQ7MLI437N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75C1263F91C

On Wed, Jun 03, 2026 at 03:42:30PM -0400, Lyude Paul wrote:
> I completely forgot when coming up with this type that #[derive(Default)]
> only works if all generics mentioned in the type implement Default (and T
> usually doesn't). This being said: We don't use `T` for anything besides
> using it for a reference type, so whether or not it implements `Default`
> shouldn't actually need to matter.
> 
> So, fix this by just manually implementing Default instead of deriving it.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>

This one is so simple I went ahead and applied it to drm-rust-next right
away.

Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
