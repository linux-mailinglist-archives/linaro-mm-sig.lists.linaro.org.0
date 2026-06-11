Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hg3oMZyXKmqttAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 13:10:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5506712DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 13:10:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=VZsCgzCf;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6955940A39
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 11:10:19 +0000 (UTC)
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	by lists.linaro.org (Postfix) with ESMTPS id EA848404D2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 11:10:06 +0000 (UTC)
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-490b8adf8b8so70162675e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 04:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781176206; x=1781781006; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=YpGjHsDNrecPmydKZbz+npt4P/d2PQgzeW5pneBmX4A=;
        b=VZsCgzCfULdOdW5uizQVTqMiqr0X6ad5gScYZHhn0KgHpnkS/LDQejXBCo2L/44xmS
         tqrBXff0StaYIJ/UD/1xfrLmuLghjLD79hShTUl8Wkk3eCO45n4vMhmmJPyS1qXFGBvH
         WEBQrVNHE9pBlCYNsThAarZVrfUTGwHYysuUF+fw2TzYgCaJFpHJsRefcinjI7g0rXY5
         b4coiJgfRmc1h9ftQgMgKJo7f8nGwKVFHu7GRh6Kk+m9P7dhinOMg8LjQ4unvN0Rclae
         +X8iI7G2V+5bMG7xGHWkbLEk7/jDMiAYXO3iLBjnFq4uoXsCmc9KzRsCvHZIIYtck96z
         79qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781176206; x=1781781006;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YpGjHsDNrecPmydKZbz+npt4P/d2PQgzeW5pneBmX4A=;
        b=sx4gZ2TpxHNPRKyjC81AbyZNX+KbShWuvGJL7D3lKlyi/1qqdU1miBD+d+9rAgEoua
         /zGTz7Cs3JexSEbjwmFOPp13uJXq1WDfurBIFvNeqyGqjO/iMpOUD7yvv/5vm8KqucdQ
         9tVpyw/i4OB2Ncio/Pr0+QYZ35yLBdMaYKXHez8M67U4Zcg0dqP93kETzwA35a8CbCst
         tcUSiQ/skQSw2xkJh/sokILhjXa9pW1TOBUVupk2ryzFw4v/ixWNwAQt1R5OaDu3SeJM
         Y71GrvdQLTMSFbzhE+yjs6PLqChvnn6gficFpUIAlJW4khlHeUqCbeSurIrfPSQBo6B4
         3kSA==
X-Forwarded-Encrypted: i=1; AFNElJ8iDewquoOyG1kosvlD7o9TgcZ7C0RZ6ONyd0p7dtLT8bVVpfK0D82T7VJiYM7wGdIWlY56r62bBB2Q3hps@lists.linaro.org
X-Gm-Message-State: AOJu0Yy6OEmPJGm4gbcANg+meL85Z6HPd1myg1MG6xpSZPBrd/+9s6xL
	3TukjVzzwbCkn8mRX4oHlVcTTlTooaT5rnqX1W71RuKUOV+ZSrlktxeX0osamIHzeEQbzsuu5bd
	BSVHrHeZShpFTzTe6kA==
X-Received: from wmqe21.prod.google.com ([2002:a05:600c:4e55:b0:490:b058:c623])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a7b:ca59:0:b0:490:9782:3eb8 with SMTP id 5b1f17b1804b1-490e561ee97mr20621955e9.25.1781176205567;
 Thu, 11 Jun 2026 04:10:05 -0700 (PDT)
Date: Thu, 11 Jun 2026 11:10:04 +0000
In-Reply-To: <20260610162433.923550-3-lyude@redhat.com>
Mime-Version: 1.0
References: <20260610162433.923550-1-lyude@redhat.com> <20260610162433.923550-3-lyude@redhat.com>
Message-ID: <aiqXjAPQCQ7POxWS@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: ---
Message-ID-Hash: 676PVBCTOLAYPV6WZNGEWB2ATKE3F3TF
X-Message-ID-Hash: 676PVBCTOLAYPV6WZNGEWB2ATKE3F3TF
X-MailFrom: 3jZcqagkKDb4epmgiv2lpksskpi.gsqpmrevs-qq-wmkpmwxw.pmrevs.svk@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v20 2/4] rust: drm: gem: shmem: Add vmap functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/676PVBCTOLAYPV6WZNGEWB2ATKE3F3TF/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B5506712DF

On Wed, Jun 10, 2026 at 12:21:29PM -0400, Lyude Paul wrote:
> One of the more obvious use cases for gem shmem objects is the ability to
> create mappings into their contents. So, let's hook this up in our rust
> bindings.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
